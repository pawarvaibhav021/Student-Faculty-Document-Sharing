/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mypack;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "DownloadFiles", urlPatterns = {"/DownloadFiles"})
public class DownloadFiles extends HttpServlet {

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
        try {            
             
            
                HttpSession s=request.getSession();
                String field=(String)s.getAttribute("field");
                String fileName=request.getParameter("filename");
                String[] extension=fileName.split("\\.");
                String ext=extension[extension.length-1];
                String year=request.getParameter("year");
                String filePath = getServletContext().getRealPath("/")+year+field+ext+"\\"+fileName;
          
                FileInputStream fin = new FileInputStream(filePath);
                ServletOutputStream out = response.getOutputStream();

                response.setContentType("application/pdf");
                response.setHeader("Content-Disposition","attachment; filename="+fileName);
                response.setContentLength(fin.available());
                int c;
                while((c=fin.read())!=-1)
                {
                    out.write(c);                
                }
                out.flush();
                out.close();
                fin.close();
        }
        catch(Exception e){System.out.print("Error"+e);}
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
