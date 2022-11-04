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
@WebServlet(name = "RequestBookingServlet", urlPatterns = {"/RequestBookingServlet"})
public class RequestBookingServlet extends HttpServlet {
    
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
        con = jdbcUtility.jdbcGetConnection(); }

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
            HttpSession session = request.getSession();
            User user = (User)session.getAttribute("memberprofile");
            String courtType = request.getParameter("courtType");
            String courtName = request.getParameter("courtName");
            int courtID = Integer.parseInt(request.getParameter("courtID"));
            String username = user.getUsername();
            String sqlInsert = "INSERT INTO booking(courtName, courtType, bookingStat, courtID, username, payStatus) VALUES(?, ?, 'pending', ?, ?, 'pending')";
            
              try {
                  
            PreparedStatement preparedStatement = con.prepareStatement(sqlInsert);
            
            preparedStatement.setString(1, courtName);
            preparedStatement.setString(2, courtType);
            preparedStatement.setInt(3, courtID);
            preparedStatement.setString(4, username);
            preparedStatement.executeUpdate();
            
            //get price using courtID
            String sqlQuery = "SELECT * FROM court WHERE courtID = ?";            
            preparedStatement = con.prepareStatement(sqlQuery);
            preparedStatement.setInt(1, courtID);
            ResultSet rs = preparedStatement.executeQuery();
            
            while (rs.next()) {
                             
            }
            
            Booking br = new Booking();
            
            br.setCourtType(courtType);
            br.setBookingStat("pending");
            br.setPayStatus("pending");
            
           
            session.setAttribute("request", br);  
                      
            response.sendRedirect(request.getContextPath() + "/reqbookstatus.jsp");
        }
        catch (SQLException ex) {
            
            out.println(ex);
            ex.printStackTrace();
        } 
            
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
