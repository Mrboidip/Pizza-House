/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import model.Food;
import model.Table;

/**
 *
 * @author Nhat Anh
 */
public class TableDAO extends DBContext {

    public List<Table> getAll() {
        List<Table> list = new ArrayList<>();
        String sql = "select tableid,status from tables";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Table table = new Table();
                table.setId(rs.getInt("tableid"));
                table.setStatus(rs.getInt("status"));
                list.add(table);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Table> getAllTakeColor() {
        List<Table> list = new ArrayList<>();
        String sql = "select t.Tableid, COALESCE(o.Status, 0) AS Status,t.Status as tableStatus, t.code,t.urge\n"
                + "from Tables t left join Orders o\n"
                + "	on t.Tableid = o.TableID  and  o.OrderDate in (select MAX(o.OrderDate) from Orders o group by Tableid )";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Table table = new Table();
                table.setId(rs.getInt("tableid"));
                table.setOrderStatus(rs.getInt("status"));
                table.setStatus(rs.getInt("tableStatus"));
                table.setCode(rs.getString("code"));
                table.setUrge(rs.getInt("urge"));
                list.add(table);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public boolean changeStatus(int tableId, int status) {
        String sql = "UPDATE [dbo].[Tables]\n"
                + "   SET [Status] = ?\n"
                + " WHERE tableid = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, status);
            statement.setInt(2, tableId);
            statement.executeUpdate();
            return true;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }

    public int getStatus(int tableId) {
        String sql = "select status from tables where tableId = ?";
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

    public boolean updateCode(String code, int tableId) {
        String sql = "UPDATE [dbo].[Tables]\n"
                + "   SET [code] = ?\n"
                + " WHERE tableid = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, code);
            statement.setInt(2, tableId);
            statement.executeUpdate();
            return true;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }
    
    public boolean updateUrge(int urge, int tableId) {
        String sql = "UPDATE [dbo].[Tables]\n"
                + "   SET [urge] = ?\n"
                + " WHERE tableid = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, urge);
            statement.setInt(2, tableId);
            statement.executeUpdate();
            return true;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }
    
    public int getUrge(int urge, int tableId) {
        String sql = "select urge from tables where urge = ? and tableId = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, urge);
            statement.setInt(2, tableId);
            ResultSet rs = statement.executeQuery();
            while(rs.next()) {
                return rs.getInt("urge");
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return -1;
    }
    
    public boolean checkCode(String code, int tableId) {
        String sql = "select code from tables where code = ? and tableId = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, code);
            statement.setInt(2, tableId);
            ResultSet rs = statement.executeQuery();
            while(rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }

    public static void main(String[] args) {
//        TableDAO d = new TableDAO();
//        List<Table> list = d.getAllTakeColor();
//        System.out.println(list.get(1).getCode());
            LocalDate currentDate = LocalDate.now();
        
        int currentMonth = currentDate.getMonthValue();
        int currentYear = currentDate.getYear();
        System.out.println(currentMonth + " " + currentYear);
    }

}
