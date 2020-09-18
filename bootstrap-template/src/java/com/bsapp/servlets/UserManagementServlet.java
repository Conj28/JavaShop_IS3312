/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsapp.servlets;

import com.bsapp.dao.UserDAO;
import com.bsapp.model.User;
import com.bsapp.utils.IConstants;
import java.io.IOException;
import static java.lang.System.out;
import java.util.Vector;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author bemerson
 */
public class UserManagementServlet extends HttpServlet implements IConstants {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        if (action == null){
            
        
        }
        if (action.equals("list")) {
            doUserListing(request, response);
        }
        if (action.equals("add")) {
            addNewUser(request, response);
        }  
        
         else{
             out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SearchServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Well Shit</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    void doUserListing(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        UserDAO userDAO = new UserDAO();
        Vector<User> allUsersVect = userDAO.getAllUsers();

        request.getSession(true).setAttribute(IConstants.SESSION_KEY_ALL_USERS, allUsersVect);

        RequestDispatcher rd = request.getRequestDispatcher("/user-listing.jsp");
        rd.forward(request, response);

    }
    
        void addNewUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String fName = request.getParameter("fName");
        String lName = request.getParameter("lName");
        String userType = "hiofh";

        UserDAO userDAO = new UserDAO();
        userDAO.addUser(email, password, fName, lName, userType);
        
        
        RequestDispatcher rd = request.getRequestDispatcher("/user-listing.jsp");
        rd.forward(request, response);

    }

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
