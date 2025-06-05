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
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author vaibhav
 */
@WebServlet(name = "UploadTimetableDB", urlPatterns = {"/UploadTimetableDB"})
public class UploadTimetableDB extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String[][] arr=new String[9][7];
        String year=request.getParameter("year");
        try  {
            String data=request.getParameter("data");
            String[] dataArray=data.split(",");
             HttpSession s=request.getSession();            
            String course=(String)s.getAttribute("field");
        
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college?zeroDateTimeBehavior=convertToNull&useSSL=false", "root", "root");                             
           
        
            //out.print(data);
            int cnt=0;
            for(int i=0;i<8;i++)
            {                
                for(int j=0;j<7;j++)
                {
                    arr[i][j]=dataArray[cnt++];                     
                }
         
            }
        for(int i=0;i<9;i++)
            {
                PreparedStatement ps=con.prepareStatement("update "+year+course+"timetable set monday=?,tuesday=?,wednesday=?,thursday=?,friday=?,saturday=? where time=? ");
                
                ps.setString(1, arr[i][1]);
                ps.setString(2, arr[i][2]);
                ps.setString(3, arr[i][3]);
                ps.setString(4, arr[i][4]);
                ps.setString(5, arr[i][5]);
                ps.setString(6, arr[i][6]);
                ps.setString(7, arr[i][0]);
                ps.executeUpdate();
            }
             response.sendRedirect("ViewTimeTable.jsp?year="+year);
            
        }
        catch(Exception e){
        out.print(e.toString());
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
