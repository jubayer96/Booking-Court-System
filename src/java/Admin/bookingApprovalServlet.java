/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Admin;

import Bean.Booking;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import jdbc.JDBCUtility;

/**
 *
 * @author Lumen
 */
@WebServlet(name = "bookingApprovalServlet", urlPatterns = {"/bookingApprovalServlet"})
public class bookingApprovalServlet extends HttpServlet {
    
    
    private JDBCUtility jdbcUtility;
    private Connection con;
    
    public void init() throws ServletException
    {
        String driver = "com.mysql.jdbc.Driver";

        String dbName = "futsal";
        String url = "jdbc:mysql://localhost/" + dbName + "?";
        String userName = "root";
        String password = "";

        jdbcUtility = new JDBCUtility(driver,
                                      url,
                                      userName,
                                      password);

        jdbcUtility.jdbcConnect();
        con = jdbcUtility.jdbcGetConnection();
    }    

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
       
        //Get the session object
	HttpSession session = request.getSession();
        
        ArrayList bookList = new ArrayList();  
        
        //get form data from VIEW > V-I
        int bookingID = Integer.parseInt(request.getParameter("bookingID"));
        String bookingStat = request.getParameter("bookingStat");
        
        if (bookingStat.equals("Yes")) {    
            String sqlUpdate = "UPDATE booking SET bookingStat = 'approve' WHERE bookingID = ?";         
        
            try {
                PreparedStatement preparedStatement = con.prepareStatement(sqlUpdate);
                preparedStatement.setInt(1, bookingID);
                preparedStatement.executeUpdate();
            }
            catch (SQLException ex) {    
                PrintWriter out = response.getWriter();
                out.println(ex);              
            }
        } 
        else 
        {    
            String sqlUpdate = "UPDATE booking SET bookingStat = 'rejected' WHERE bookingID = ?";         
        
            try {
                PreparedStatement preparedStatement = con.prepareStatement(sqlUpdate);
                preparedStatement.setInt(1, bookingID);
                preparedStatement.executeUpdate();
            }
            catch (SQLException ex) {
                PrintWriter out = response.getWriter();
                out.println(ex);
            }
        }
        
        session.setAttribute("booklist", bookList);
        response.sendRedirect(request.getContextPath() + "/MainBookingServlet");
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
