/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsapp.servlets;

import com.bsapp.dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Conor
 */
public class UpdateUserServlet extends HttpServlet {

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
      
        
        String CurrentID = request.getParameter("currentID");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String fName = request.getParameter("firstName");
        String lName = request.getParameter("lastName");
         String UserType = request.getParameter("userType");
        
        String checkType = UserType.toUpperCase();
        String userType;
        //code to make sure it is user or admin.
        if(checkType.equals("ADMIN") ||checkType.equals("ADMINISTRATOR") ){
            userType = "ADMIN";
        } else if(checkType.equals("USER") ||checkType.equals("GENUSER")){
            userType = "GENUSER";
        } else{
            userType = "GENUSER";
        }
        
        
        
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet SearchServlet</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>IT is : " + CurrentID + "</h1>");
//            out.println("<h1>IT is : " + email + "</h1>");
//            out.println("<h1>IT is : " + fName + "</h1>");
//            out.println("<h1>IT is : " + lName + "</h1>");
//            out.println("<h1>IT is : " + password + "</h1>");
//           
//            out.println("</body>");
//            out.println("</html>");
    //    }
        int currentID = Integer.parseInt(CurrentID);
        
        UserDAO userDAO = new UserDAO();
        userDAO.updateUser(currentID, email, password, fName, lName, userType);
        
        RequestDispatcher rd = request.getRequestDispatcher("showUsers");
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
