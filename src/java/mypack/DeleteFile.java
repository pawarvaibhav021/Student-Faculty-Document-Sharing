package mypack;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletOutputStream;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author vaibhav
 */
@WebServlet(urlPatterns = {"/DeleteFile"})
public class DeleteFile extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       PrintWriter out= response.getWriter();
        try  {
                HttpSession s=request.getSession();
                String field=(String)s.getAttribute("field");
                String fileName=request.getParameter("filename");
                String[] extension=fileName.split("\\.");
                String ext=extension[extension.length-1];
                String year=request.getParameter("year");
                String filePath = getServletContext().getRealPath("/")+year+field+ext+"\\"+fileName;
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college?zeroDateTimeBehavior=convertToNull&useSSL=false", "root", "root");
                PreparedStatement ps1=con.prepareStatement("delete from upload"+year+field+" where fileName like '%"+fileName+"%'");
                ps1.executeUpdate();
            
              File f= new File(filePath);
              boolean b=f.delete();
              if(b)
              {
               out.print("<script>alert('File Deleted');;</script>");
               response.sendRedirect("ViewDocuments.jsp?year="+year);
              }
              else
              {
               out.print("<script>alert('File not deleted try again');location.href='ViewDocuments.jsp?year="+year+"';</script>");   
              }                      
            
        }
        catch(Exception e)
        {
            
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
