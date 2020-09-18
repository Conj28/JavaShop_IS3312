/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsapp.utils;

import java.io.File;
import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author BEmerson
 */
public class SetupDb {

    Logger logger = Logger.getLogger(DBManager.class.getName());
    
    String dirName = "G:\\My Drive\\3rd-S1\\java\\Projects\\Project6\\bootstrap-template2\\bootstrap-template\\bootstrap-template\\src\\sql";

    void createTables() {

        DBManager dmbgr = new DBManager();

        Connection con = dmbgr.getConnection();

        executeSqlScript(con, new File(dirName,"createdb.txt"));
    }

    void insertSetupData() {

        DBManager dmbgr = new DBManager();

        Connection con = dmbgr.getConnection();

        executeSqlScript(con, new File(dirName, "insertdata.txt"));
    }

    public void showData() {
        
        Statement stmt;

        DBManager dmbgr = new DBManager();

        Connection con = dmbgr.getConnection();

        try {
            stmt = con.createStatement();
            ResultSet results = stmt.executeQuery("select * from USERDATA");
            

            System.out.println("\n-------------------------------------------------");

            while (results.next()) {
                int id = results.getInt(1);
                String email = results.getString(2);
                String password = results.getString(3);
                String fName = results.getString(4);
                String lName = results.getString(5);
                String userType = results.getString(6);
                logger.info(id + "\t\t" + email + "\t\t" + password + "\t\t" + fName + "\t\t" + lName + "\t\t" + userType);
            }
            results.close();
            stmt.close();
        } catch (SQLException sqlExcept) {
            logger.log(Level.SEVERE, null,sqlExcept);
        }
        
        
        try {
            stmt = con.createStatement();
            ResultSet results = stmt.executeQuery("select * from PROD");

            System.out.println("\n-------------------------------------------------");

            while (results.next()) {
                int id = results.getInt(1);
                String name = results.getString(2);
                String img = results.getString(3);
                String price = results.getString(4);
                String description = results.getString(5);
                String dimensions = results.getString(6);
                String material = results.getString(7);
                String type = results.getString(8);
                logger.info(id + "\t\t" + name + "\t\t" + img + "\t\t" + price + "\t\t" + description + "\t\t" + dimensions +  "\t\t" + material + "\t\t" + type);
            }
            results.close();
            stmt.close();
        } catch (SQLException sqlExcept) {
            logger.log(Level.SEVERE, null,sqlExcept);
        }
        
          try {
            stmt = con.createStatement();
            ResultSet results = stmt.executeQuery("select * from CART");

            System.out.println("\n-------------------------------------------------");

            while (results.next()) {
                int id = results.getInt(1);
                int prodID = results.getInt(2);
                String name = results.getString(3);
                String img = results.getString(4);
                int price = results.getInt(5);
                int quantity = results.getInt(6);
               
                logger.info(id + "\t\t" + prodID + "\t\t" + name + "\t\t" + img + "\t\t" + price + "\t\t" + quantity);
            }
            results.close();
            stmt.close();
        } catch (SQLException sqlExcept) {
            logger.log(Level.SEVERE, null,sqlExcept);
        }

    }
    
    

    public void executeSqlScript(Connection conn, File inputFile) {

        // Delimiter
        String delimiter = ";";

        // Create scanner
        Scanner scanner;
        try {
            scanner = new Scanner(inputFile).useDelimiter(delimiter);
        } catch (FileNotFoundException e1) {
            logger.log(Level.SEVERE, null, e1);
            return;
        }

        // Loop through the SQL file statements 
        Statement currentStatement = null;
        while (scanner.hasNext()) {

            // Get statement 
            String rawStatement = scanner.next();
            try {
                // Execute statement
                currentStatement = conn.createStatement();
                currentStatement.execute(rawStatement);
            } catch (SQLException e) {
                logger.log(Level.SEVERE, null, e);
            } finally {
                // Release resources
                if (currentStatement != null) {
                    try {
                        currentStatement.close();
                    } catch (SQLException e) {
                        logger.log(Level.SEVERE, null, e);;
                    }
                }
                currentStatement = null;
            }
        }
    }

}
