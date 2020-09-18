/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsapp.dao;

import com.bsapp.model.User;
import com.bsapp.utils.DBManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

/**
 *
 * @author bemerson
 */
public class UserDAO {

    public User getUserByEmail(String email) {

        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        int userId = 0;
        String password = null;
        String fName = null;
        String lName = null;
        String userType = null;
        User tempUser = new User();

        String query = "SELECT * FROM USERDATA WHERE EMAIL=" + "'" + email + "'";
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                userId = (rs.getInt(1));
                password = (rs.getString(3));
                fName = (rs.getString(4));
                lName = (rs.getString(5));
                userType = (rs.getString(6));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        tempUser.setEmail(email);
        tempUser.setId(userId);
        tempUser.setFirstName(fName);
        tempUser.setLastName(lName);
        tempUser.setPassword(password);
        tempUser.setUserType(userType);
        return tempUser;

    }

    public Vector<User> getAllUsers() {

        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        int userId = 0;
        String password = null;
        String email = null;
        String fName = null;
        String lName = null;
        String userType = null;
        Vector<User> userData = new Vector();

        String query = "SELECT * FROM USERDATA";
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                userId = (rs.getInt(1));
                email = (rs.getString(2));
                password = (rs.getString(3));
                fName = (rs.getString(4));
                lName = (rs.getString(5));
                userType = (rs.getString(6));
                User tempUser = new User();
                tempUser.setEmail(email);
                tempUser.setId(userId);
                tempUser.setFirstName(fName);
                tempUser.setLastName(lName);
                tempUser.setPassword(password);
                tempUser.setUserType(userType);
                userData.add(tempUser);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

      
        return userData;

    }
    
    public void addUser(String email, String password, String fName, String lName, String userType){
        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        
        String query1 = "INSERT INTO USERDATA(EMAIL,PASSWORD,FNAME,LNAME,USERTYPE) VALUES('" + email + "', '" + password + "', '" + fName + "', '" + lName + "','" + userType +"')";
                
        try {
            PreparedStatement stmt = con.prepareStatement(query1);
            stmt.execute();
        }catch(SQLException e){
            System.out.println("AHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHh");
             e.printStackTrace();
        }
    }
    
    public User getCurrentUser(int id){
        
           DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        int userId = 0;
        String email = null;
        String password = null;
        String fName = null;
        String lName = null;
        String userType = null;
        User tempUser = new User();

        String query = "SELECT * FROM USERDATA WHERE USER_ID= "+ id +" ";
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                userId = (rs.getInt(1));
                email =(rs.getString(2));
                password = (rs.getString(3));
                fName = (rs.getString(4));
                lName = (rs.getString(5));
                userType = (rs.getString(6));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        tempUser.setEmail(email);
        tempUser.setId(userId);
        tempUser.setFirstName(fName);
        tempUser.setLastName(lName);
        tempUser.setPassword(password);
        tempUser.setUserType(userType);
        
        return tempUser;
        
    }
    
    public void updateUser(int currentID, String email, String password, String fName, String lName, String userType){
        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        
        String query2 = "UPDATE USERDATA"
                + " SET EMAIL='" + email +"', PASSWORD = '" + password + "', FNAME = '" + fName +"', LNAME = '" + lName + "', USERTYPE = '" + userType + "'"
                + " WHERE USER_ID = "+currentID+" ";
        
         try {
            PreparedStatement stmt = con.prepareStatement(query2);
            stmt.execute();
        }catch(SQLException e){
            System.out.println("ahhhhhhhhhhh Not Again");
             e.printStackTrace();
        }
        
    }
    
    public void deleteUser(int currentID){
             DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        
        String query3 = "DELETE FROM USERDATA WHERE USER_ID= "+ currentID +"";
        
         try {
            PreparedStatement stmt = con.prepareStatement(query3);
            stmt.execute();
        }catch(SQLException e){
            System.out.println("ahhhhhhhhhhh Not Again");
             e.printStackTrace();
        }
        
    }

}
