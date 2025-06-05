/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mypack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author vaibhav
 */
@WebServlet(name = "AddFaculty", urlPatterns = {"/AddFaculty"})
public class AddFaculty extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try  {
            String fname = request.getParameter("fname");
            String mname = request.getParameter("mname");
            String lname = request.getParameter("lname");
            String subs = request.getParameter("subs");
            String field = request.getParameter("field");
            String year = request.getParameter("year");
            String mob = request.getParameter("mob");
            String date = request.getParameter("date");
            String email = request.getParameter("email");
            
            String fullname=fname+" "+mname+" "+lname;
            String password=fname+date.substring(0,4);
          
          
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college?zeroDateTimeBehavior=convertToNull&useSSL=false", "root", "root");
            PreparedStatement ps=con.prepareStatement("insert into login(username,password,field,subs,year,mob,date,email,fullname) values(?,?,?,?,?,?,?,?,?)");
            ps.setString(1,fname);
            ps.setString(2, password);
            ps.setString(3,field);
            ps.setString(4,subs);
            ps.setString(5,year);
            ps.setString(6,mob);
            ps.setString(5,year);
            ps.setString(7, date);
            ps.setString(8,email);
            ps.setString(9, fullname);
            //out.println(ps);
            ps.executeUpdate();
            response.sendRedirect("Faculty.jsp");
        }
        catch(Exception e){
        out.println(e);
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
