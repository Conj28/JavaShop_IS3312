/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsapp.dao;

import com.bsapp.model.Cart;
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
public class CartDAO {
    
    
    public Vector<Cart> getCart() {

        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        int  cartID = 0;
        int productId = 0;
        String name = null;
        String img= null;
        int price = 0;
        int quantity = 0;
        
        Vector<Cart> cartData = new Vector();

//        String rowNum = "SELSECT COUNT(CART_ID) FROM CART";
//        
        
        String query = "SELECT * FROM CART";
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                System.out.println("it got here !!!");
                cartID = (rs.getInt(1));
                productId = (rs.getInt(2));
                name = (rs.getString(3));
                img = (rs.getString(4));
                price = (rs.getInt(5));
                quantity = (rs.getInt(6));
                
                Cart tempCart = new Cart();
                tempCart.setId(cartID);
                tempCart.setProductID(productId);
                tempCart.setName(name);
                tempCart.setImg(img);
                tempCart.setPrice(price);
                tempCart.setQuantity(quantity);
               
                cartData.add(tempCart);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("getting Cart not working :( ");
        }

      
        return cartData;

    }
    
        public void addCartItem(int productID, String name, String img,  int price, int quantity){
    
        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        
        String query1 = "INSERT INTO CART(PRODUCT_ID,NAME,IMG,PRICE,QUANTITY) VALUES(" + productID + ", '" + name + "', '" + img + "', " + price + ", " + quantity + ")";
        
        try {
            PreparedStatement stmt = con.prepareStatement(query1);
            stmt.execute();
        }catch(SQLException e){
            System.out.println("adding Cart not working :( ");
             e.printStackTrace();
        }
        
}
        public void deleteItem(int currentID){
            
             DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        
        String query1 = "DELETE FROM CART WHERE CART_ID= "+ currentID +"";
        
        try {
            PreparedStatement stmt = con.prepareStatement(query1);
            stmt.execute();
        }catch(SQLException e){
            System.out.println("adding Cart not working :( ");
             e.printStackTrace();
        }
            
            
        }
    
}
