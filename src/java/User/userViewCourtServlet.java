/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package User;

import Bean.Booking;
import Bean.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
@WebServlet(name = "userViewCourtServlet", urlPatterns = {"/userViewCourtServlet"})
public class userViewCourtServlet extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
          HttpSession session = request.getSession();
        
        User user = (User)session.getAttribute("memberprofile");
        String username = user.getUsername();
        
        ArrayList rqCourtList = new ArrayList();        
        
        String sqlQuery = "SELECT * FROM booking join court on booking.courtID = court.courtID WHERE username = ? ORDER BY bookingID ASC ";
        System.out.println(sqlQuery);
        try {
            
            
            PreparedStatement preparedStatement = con.prepareStatement(sqlQuery);
            preparedStatement.setString(1, username);
            ResultSet rs = preparedStatement.executeQuery();
            
            while (rs.next()) {
                String courtName = rs.getString("courtName");
                String courtType = rs.getString("courtType");
                String bookingStat = rs.getString("bookingStat");
                String payStatus = rs.getString("payStatus");
                double price = rs.getDouble("price");
                int bookingID = rs.getInt("bookingID");
                
                Booking bk = new Booking();
                bk.setCourtName(courtName);
                bk.setCourtType(courtType);
                bk.setBookingStat(bookingStat);
                bk.setPayStatus(payStatus);
                bk.setPrice(price);
                bk.setBookingID(bookingID);
                
                rqCourtList.add(bk);
            }
        }
        catch (SQLException ex) { 
            out.println(ex);
        }
        
        session.setAttribute("rqcourtlist", rqCourtList);
        response.sendRedirect(request.getContextPath() + "/viewcourt.jsp");        
        }
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
