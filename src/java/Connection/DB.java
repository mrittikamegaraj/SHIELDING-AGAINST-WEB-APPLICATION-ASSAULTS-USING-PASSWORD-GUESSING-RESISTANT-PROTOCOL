package Connection;

import java.sql.*;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author 
 */
public class DB {

    public Connection con;
    public Statement st;
    public ResultSet rs;
public DB() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vino","root","admin");
            System.out.println("Connected");

        } catch (Exception e) {
            System.out.println("Error Inside DataBase class :\nError in DataBaseConstructor\n" + e);
        }
    }

    public Connection DB1() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/3layer","root","admin");
            
            System.out.println("Connected");

        } catch (Exception e) {
            System.out.println("Error Inside DataBase class :\nError in DataBaseConstructor\n" + e);
        }
        return con;
    }
public ResultSet Select(String Query) {

        try {
            if (st != null && con != null) {
                st.close();
                con.close();
            }
            con = new DB().con;
            st = con.createStatement();
            rs = st.executeQuery(Query);

        } catch (Exception e) {
            e.printStackTrace();

        }
        return rs;
    }

public int Insert(String Query) {
        int i = 0;
        try {
            con = new DB().con;
            st = con.createStatement();
            i = st.executeUpdate(Query);
            st.close();
            con.close();

        } catch (Exception ex) {
            System.out.println("Error Insert DataBase class " + ex);

        }
        return i;
    }

   
}
