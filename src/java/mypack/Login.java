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
import java.sql.ResultSet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        try {
        
            //getting form input
            String F_username = request.getParameter("username");
            String F_password = request.getParameter("ps");
            String Field=request.getParameter("select");
            HttpSession s=request.getSession();
            //for coonection and geting table is rs
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college?zeroDateTimeBehavior=convertToNull&useSSL=false", "root", "root");
            System.out.println("Error");
            PreparedStatement stmt = con.prepareStatement("select * from login");
            ResultSet rs = stmt.executeQuery();
            if (request.getParameter("AF").equals("Admin"))                 // if admin is selected
            {
                if (rs.next())                                              //to get first row data of databases
                {
                    String DB_Username = rs.getString(2);
                    String DB_password = rs.getString(3);
                    if (DB_Username.equals(F_username) && DB_password.equals(F_password))
                    {
                        s.setAttribute("field",Field);    
                        out.println("<script>sessionStorage.setItem('admin',1);sessionStorage.setItem('visit',1);location.href='AdminMainPage.jsp'</script>");   //Admin password and login success
                    } 
                    else 
                    {
                        out.println("<script>alert('Wrong username or password');window.location.href='index.jsp';</script>");      //Admin password and login fails
                    }
                }
            }
            if (request.getParameter("AF").equals("Faculty"))                  // if faculty is selected
            {
                int flag=1;
                rs.next();                                                     //to skip first row which is for admin only
                while (rs.next())                                               //to get all row data of databases from second row
                {
                    String DB_Username = rs.getString("username");
                    String DB_password = rs.getString("password");
                    
                    if (DB_Username.equals(F_username) && DB_password.equals(F_password))
                    {
                        s.setAttribute("field",Field);    
                        out.println("<script>sessionStorage.setItem('visit',1);location.href='MainPage.jsp'</script>");
                                        
                        //out.println("Teachers Login successful");
                        break;
                    } 
                    else 
                    {
                        flag=0;
                    }
                }
                if(flag==0)
                {
                  out.println("<script>alert('Wrong username or password');window.location.href='index.jsp';</script>");     
                }
            }
           

        } catch (Exception e) {
            out.println(e.getMessage() + "sdfsfError");
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
