/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import model.Food;
import model.Order;
import model.OrderDetail;
import model.OrderDetailTemp;

/**
 *
 * @author Nhat Anh
 */
public class OrderDAO extends DBContext {

    public int insertOrder(Order order) {
        LocalDateTime currentDateTime = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        String formattedDateTime = currentDateTime.format(formatter);

        String sql = "INSERT INTO [dbo].[Orders]\n"
                + "           ([TableID]\n"
                + "           ,[Status]\n"
                + "           ,[OrderDate])\n"
                + "     VALUES\n"
                + "           (?,?,?)";
        String sql1 = "SELECT TOP 1 * FROM [dbo].[Orders]\n"
                + "ORDER BY ID DESC;";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, order.getTableId());
            statement.setInt(2, order.getStatus());
            statement.setString(3, formattedDateTime);
            int rowsInserted = statement.executeUpdate();

            if (rowsInserted > 0) {
                // Lấy giá trị ID tự tăng
                PreparedStatement statement1 = connection.prepareStatement(sql1);
                ResultSet generatedKeys = statement1.executeQuery();
                if (generatedKeys.next()) {
                    int generatedId = generatedKeys.getInt(1);
                    return generatedId;
                } else {
                    return 0;
                }
            }

        } catch (SQLException e) {
            System.out.println(e);
            return 0;
        }
        return 0;
    }

    public boolean insertOrderDetail(OrderDetail orderDetail) {

        String sql = "INSERT INTO [dbo].[Order Details]\n"
                + "           ([OrderID]\n"
                + "           ,[MenuID]\n"
                + "           ,[Quantity])\n"
                + "     VALUES\n"
                + "           (?,?,?)";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, orderDetail.getOrderId());
            statement.setInt(2, orderDetail.getMenuId());
            statement.setInt(3, orderDetail.getQuantity());
            statement.executeUpdate();
            return true;
        } catch (SQLException e) {
            System.out.println(e);
            return false;
        }
    }

    public int getOrderId(int tableId) {

        String sql = "select o.ID \n"
                + "from Tables t, Orders o\n"
                + "where t.Tableid = o.TableID and o.OrderDate in (select MAX(o.OrderDate) from Orders o group by Tableid ) and t.Tableid = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, tableId);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                return rs.getInt("id");
            }
        } catch (SQLException e) {
            System.out.println(e);
            return 0;
        }
        return 0;
    }

    public List<OrderDetailTemp> getOrderDetail(int tableId) {
        List<OrderDetailTemp> list = new ArrayList<>();
        String sql = "select od.MenuID, od.Quantity, m.price, m.Image, m.Name\n"
                + "from Tables t, Orders o, [Order Details] od, Menu m\n"
                + "where t.Tableid = o.TableID and o.ID = od.OrderID and m.MenuID = od.MenuID and t.Tableid = ? and o.Status != 1";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, tableId);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                OrderDetailTemp odt = new OrderDetailTemp();
                odt.setFoodId(rs.getInt("menuId"));
                odt.setPrice(rs.getFloat("price"));
                odt.setQuantity(rs.getInt("quantity"));
                odt.setFoodName(rs.getString("Name"));
                odt.setFoodImage(rs.getString("Image"));

                list.add(odt);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public int getOrderStatus(int tableId) {
        String sql = "select o.Status from Orders o where ID = (\n"
                + "select id\n"
                + "from Tables t, Orders o\n"
                + "where t.Tableid = o.TableID and t.Tableid = ? and o.Status != 1\n"
                + ")";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, tableId);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                return rs.getInt("status");
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return -1;
    }

    public float getTotalInMonth(int month, int year) {
        String sql = "select SUM(m.price) as total\n"
                + "from [Order Details] od, Orders o, Menu m\n"
                + "where od.OrderID = o.ID and m.MenuID = od.MenuID and MONTH(o.OrderDate) = ?  and YEAR(o.OrderDate) = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, month);
            statement.setInt(2, year);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                return rs.getFloat("total");
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public int getOrderInMonth(int month, int year) {
        String sql = "select COUNT(o.ID) as total\n"
                + "from  Orders o\n"
                + "where MONTH(o.OrderDate) = ? and YEAR(o.OrderDate) = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, month);
            statement.setInt(2, year);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                return rs.getInt("total");
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public List<Food> getTop4BestSeller(int month, int year) {
        List<Food> list = new ArrayList<>();
        String sql = "select m.MenuID,m.MenuID, m.name, m .price, m.Category,m.Image, SUM(od.quantity) as total\n"
                + "from Menu m left join [Order Details] od\n"
                + "	on m.MenuID = od.MenuID\n"
                + "join Orders o\n"
                + "	on o.ID = od.OrderID\n"
                + "where MONTH(o.OrderDate) = ? and YEAR(o.OrderDate) = ?\n"
                + "group by m.MenuID, m.name, m .price, m.Category,m.Image\n"
                + "having SUM(od.quantity) >= 10";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, month);
            statement.setInt(2, year);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Food food = new Food();
                food.setId(rs.getInt("menuId"));
                food.setImage(rs.getString("image"));
                food.setCategory(rs.getString("Category"));
                food.setName(rs.getString("name"));
                food.setPrice(rs.getFloat("price"));
                food.setTotal(rs.getInt("total"));
                list.add(food);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Food> getAllSlowSeller(int month, int year) {
        List<Food> list = new ArrayList<>();
        String sql = "select m.MenuID,m.MenuID, m.name, m .price, m.Category,m.Image, SUM(ISNULL(od.quantity, 0)) as total\n"
                + "from Menu m left join [Order Details] od\n"
                + "	on m.MenuID = od.MenuID\n"
                + "left join Orders o\n"
                + "	on o.ID = od.OrderID and MONTH(o.OrderDate) = ? and YEAR(o.OrderDate) = ?\n"
                + "group by m.MenuID, m.name, m .price, m.Category,m.Image\n"
                + "having SUM(ISNULL(od.quantity, 0)) <= 5;";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, month);
            statement.setInt(2, year);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Food food = new Food();
                food.setId(rs.getInt("menuId"));
                food.setImage(rs.getString("image"));
                food.setCategory(rs.getString("Category"));
                food.setName(rs.getString("name"));
                food.setPrice(rs.getFloat("price"));
                food.setTotal(rs.getInt("total"));
                list.add(food);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public boolean changeOrderStatus(int tableId, int status) {
        String sql = "UPDATE [dbo].[Orders]\n"
                + "SET [Status] = ?\n"
                + "WHERE id = (\n"
                + "    SELECT o.id\n"
                + "    FROM Tables t, Orders o\n"
                + "    WHERE t.Tableid = o.TableID AND t.Tableid = ? AND o.Status != 1\n"
                + ");";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, status);
            statement.setInt(2, tableId);
            statement.executeUpdate();
            return true;
        } catch (SQLException e) {
            System.out.println(e);
            return false;
        }
    }

    public boolean deleteOrderDetail(int tableId) {
        String sql = "DELETE FROM [dbo].[Order Details]\n"
                + "      WHERE OrderID = (\n"
                + "		select distinct o.ID \n"
                + "		from [Order Details] od, Orders o\n"
                + "		where od.OrderID = o.ID and  o.OrderDate in (select MAX(o.OrderDate) from Orders o group by Tableid ) and o.TableID = ?\n"
                + "	  )";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, tableId);
            statement.executeUpdate();
            return true;
        } catch (SQLException e) {
            System.out.println(e);
            return false;
        }
    }

    public boolean deleteOrderDetail(int tableId, int foodId) {
        String sql = "DELETE FROM [dbo].[Order Details]\n"
                + "      WHERE OrderID = (\n"
                + "		select distinct o.ID \n"
                + "		from [Order Details] od, Orders o\n"
                + "		where od.OrderID = o.ID and  o.OrderDate in (select MAX(o.OrderDate) from Orders o group by Tableid ) and o.TableID = ? \n"
                + "	  ) and MenuID = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, tableId);
            statement.setInt(2, foodId);
            statement.executeUpdate();
            return true;
        } catch (SQLException e) {
            System.out.println(e);
            return false;
        }
    }

    public static void main(String[] args) {
        LocalDateTime currentDateTime = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        String formattedDateTime = currentDateTime.format(formatter);
        OrderDAO d = new OrderDAO();

        System.out.println(d.getAllSlowSeller(11, 2023).size());

    }
}
