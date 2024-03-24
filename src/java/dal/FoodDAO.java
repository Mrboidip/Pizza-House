package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Food;

public class FoodDAO extends DBContext {

    public List<Food> getAll() {
        List<Food> list = new ArrayList<>();
        String sql = "select * from menu";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Food food = new Food();
                food.setId(rs.getInt("menuid"));
                food.setCategory(rs.getString("category"));;
                food.setName(rs.getString("name"));
                food.setPrice(rs.getFloat("price"));
                food.setImage(rs.getString("image"));
                list.add(food);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Food> searchFood(String text) {
        List<Food> list = new ArrayList<>();
        String sql = "select * from menu where name like ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, "%" + text + "%");
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Food food = new Food();
                food.setId(rs.getInt("menuid"));
                food.setCategory(rs.getString("category"));;
                food.setName(rs.getString("name"));
                food.setPrice(rs.getFloat("price"));
                food.setImage(rs.getString("image"));
                list.add(food);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Food> searchFoodByCategory(String category) {
        List<Food> list = new ArrayList<>();
        String sql = "select * from menu where category = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, category);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Food food = new Food();
                food.setId(rs.getInt("menuid"));
                food.setCategory(rs.getString("category"));;
                food.setName(rs.getString("name"));
                food.setPrice(rs.getFloat("price"));
                food.setImage(rs.getString("image"));
                list.add(food);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public boolean deleteFood(int foodId) {
        String sql = "DELETE FROM [dbo].[Menu]\n"
                + "      WHERE menuid = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, foodId);
            statement.executeUpdate();
            return true;
        } catch (SQLException e) {
            System.out.println(e);
            return false;
        }
    }

    public boolean updateFood(Food food) {
        String sql = "UPDATE [dbo].[Menu]\n"
                + "   SET [Name] = ?\n"
                + "      ,[price] = ?\n"
                + "      ,[Category] = ?\n"
                + "      ,[Image] = ?\n"
                + " WHERE menuid = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, food.getName());
            statement.setFloat(2, food.getPrice());
            statement.setString(3, food.getCategory());
            statement.setString(4, food.getImage());
            statement.setInt(5, food.getId());
            statement.executeUpdate();
            return true;
        } catch (SQLException e) {
            System.out.println(e);
            return false;
        }
    }

    public boolean insertFood(Food food) {
        String sql = "INSERT INTO [dbo].[Menu]\n"
                + "           ([Name]\n"
                + "           ,[price]\n"
                + "           ,[Category]\n"
                + "           ,[Image])\n"
                + "     VALUES\n"
                + "           (?,?,?,?)";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, food.getName());
            statement.setFloat(2, food.getPrice());
            statement.setString(3, food.getCategory());
            statement.setString(4, food.getImage());
            statement.executeUpdate();
            return true;
        } catch (SQLException e) {
            System.out.println(e);
            return false;
        }
    }

    public static void main(String[] args) {
        FoodDAO d = new FoodDAO();
        System.out.println(d.deleteFood(12));
    }
}
