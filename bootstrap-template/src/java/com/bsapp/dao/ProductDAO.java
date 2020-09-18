/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsapp.dao;

import com.bsapp.model.Product;
import com.bsapp.model.User;
import com.bsapp.utils.DBManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

/**
 *
 * @author Conor
 */
public class ProductDAO {
    
    public Vector<Product> getAllProducts() {

        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        int prodId = 0;
        String name = null;
        String img = null;
        String price = null;
        String description = null;
        String dimensions = null;
        String material = null;
        String type = null;
        Vector<Product> ProductData = new Vector();

        String query = "SELECT * FROM PROD";
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                prodId= (rs.getInt(1));
                name = (rs.getString(2));
                img = (rs.getString(3));
                price = (rs.getString(4));
                description = (rs.getString(5));
                dimensions = (rs.getString(6));
                material = (rs.getString(7));
                type = (rs.getString(8));
                
                Product tempProduct = new Product();
                tempProduct.setId(prodId);
                tempProduct.setName(name);
                tempProduct.setImg(img);
                tempProduct.setPrice(price);
                tempProduct.setDescription(description);
                tempProduct.setDimensions(dimensions);
                tempProduct.setMaterial(material);
                tempProduct.setType(type);
                
                ProductData.add(tempProduct);
           
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

      
        return ProductData;

    }
    
    public void addProduct(String name, String img, String price, String description, String dimensions, String material, String type){
    
        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        
        String query1 = "INSERT INTO PROD(NAME,IMG,PRICE,DESCRIPTION,DIMENSIONS,MATERIAL,TYPE) VALUES('" + name + "', '" + img + "', '" + price + "', '" + description + "','" + dimensions +"', '" + material +"', '" + type + "')";
        
        try {
            PreparedStatement stmt = con.prepareStatement(query1);
            stmt.execute();
        }catch(SQLException e){
            System.out.println("adding product not working :( ");
             e.printStackTrace();
        }
        
}
    
     public Product getCurrentProd(int id){
        
           DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        int prodId = 0;
        String name = null;
        String img = null;
        String price = null;
        String description = null;
        String dimensions = null;
        String material = null;
        String type = null;
        Product tempProd = new Product();

        String query = "SELECT * FROM PROD WHERE PRODUCT_ID= "+ id +" ";
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                prodId = (rs.getInt(1));
                name =(rs.getString(2));
                img = (rs.getString(3));
                price = (rs.getString(4));
                description = (rs.getString(5));
                dimensions = (rs.getString(6));
                material = (rs.getString(7));
                type = (rs.getString(8));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        tempProd.setId(prodId);
        tempProd.setName(name);
        tempProd.setImg(img);
        tempProd.setPrice(price);
        tempProd.setDescription(description);
        tempProd.setDimensions(dimensions);
        tempProd.setMaterial(material);
        tempProd.setType(type);
        
        return tempProd;
        
    }
    
     public void updateProduct(int currentID, String name, String img,String price, String description, String dimensions, String material, String type){
         
        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        
        String query2 = "UPDATE PROD SET NAME= '" + name +"', IMG = '" + img + "', PRICE = '" + price +"', DESCRIPTION = '" + description + "', DIMENSIONS = '" + dimensions + "', MATERIAL = '" + material + "', TYPE = '" + type +"'"
                + " WHERE PRODUCT_ID = "+ currentID +" ";
         
         try {
            PreparedStatement stmt = con.prepareStatement(query2);
            stmt.execute();
        }catch(SQLException e){
            System.out.println("updating product not working :( ");
             e.printStackTrace();
        }
        
     }
     
     public void deleteProduct(int currentID){
          DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        
        String query3 = "DELETE FROM PROD WHERE PRODUCT_ID= "+ currentID +"";
        
         try {
            PreparedStatement stmt = con.prepareStatement(query3);
            stmt.execute();
        }catch(SQLException e){
            System.out.println("not deleting Products !!");
             e.printStackTrace();
        }
     }
}
