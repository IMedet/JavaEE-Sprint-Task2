package db;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.ArrayList;

public class DBManager {
    private static Connection connection;

    static {
        try {
            Class.forName("org.postgresql.Driver");
            connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/sprint2","postgres","00000000");
        } catch (Exception e) {
            System.out.println("You have some error");
            e.printStackTrace();
        }
    }

    public static Item getItemById(Long id){
        Item item = new Item();
        try {
            PreparedStatement statement = connection.prepareStatement("select * from items where id = ?");
            statement.setLong(1,id);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()){
                item.setId(resultSet.getLong("id"));
                item.setName(resultSet.getString("name"));
                item.setDescription(resultSet.getString("description"));
                item.setPrice(resultSet.getDouble("price"));
            }
            statement.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return item;
    }

    public static void updateItem(Item item){
        try {
            PreparedStatement statement = connection.prepareStatement("UPDATE items SET name=? , description=? , price=? where id=? ");
            statement.setString(1,item.getName());
            statement.setString(2,item.getDescription());
            statement.setDouble(3,item.getPrice());
            statement.setLong(4,item.getId());
            statement.executeUpdate();
            statement.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static void deleteItem(Long id){
        try {
            PreparedStatement statement = connection.prepareStatement("DELETE from items WHERE id=? ");
            statement.setLong(1,id);
            statement.executeUpdate();
            statement.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    public static void addItem(Item item){
        try {
            PreparedStatement statement = connection.prepareStatement("INSERT INTO items (name, description, price) " +
                    " VALUES (?, ?, ?) ");
            statement.setString(1,item.getName());
            statement.setString(2,item.getDescription());
            statement.setDouble(3,item.getPrice());

            int rows = statement.executeUpdate();
            statement.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static ArrayList<Item> getAllItems(){
        ArrayList<Item> items = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement("SELECT * from items;");
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()){
                Item item = new Item();
                item.setId(resultSet.getLong("id"));
                item.setName(resultSet.getString("name"));
                item.setDescription(resultSet.getString("description"));
                item.setPrice(resultSet.getDouble("price"));

                items.add(item);
            }
            statement.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return items;
    }
}
