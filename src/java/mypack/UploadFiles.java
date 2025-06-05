/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mypack;

import com.oreilly.servlet.MultipartRequest;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Iterator;

import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FileExistsException;

/**
 *
 * @author vaibhav
 */
@WebServlet(name = "UploadFiles", urlPatterns = {"/UploadFiles"})
public class UploadFiles extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {            
            HttpSession s=request.getSession();
            String field=(String)s.getAttribute("field");
            String year="",fileName="",fileExtension="";
            ServletFileUpload sf = new ServletFileUpload(new DiskFileItemFactory());
            List<FileItem> items=sf.parseRequest(request);
            Iterator<FileItem> iter = items.iterator();
            while (iter.hasNext()) {
               FileItem item = iter.next();
               if (item.isFormField()) {
                   year=item.getString();
               }
               if(!item.isFormField())
               {
                   fileName=item.getName();              
                   String[] fileExtArray=fileName.split("\\.");
                   fileExtension=fileExtArray[fileExtArray.length-1];
                   
                   File fi= new File(getServletContext().getRealPath("/")+year+field+fileExtension);
                   if(!fi.exists())
                    {
                        fi.mkdir();         
                    }
                   item.write(new File(getServletContext().getRealPath("/")+year+field+fileExtension+"\\"+fileName));                
               }                    
           }
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college?zeroDateTimeBehavior=convertToNull&useSSL=false", "root", "root");
            PreparedStatement ps1=con.prepareStatement("insert into upload"+year+field+"(filename,fileExtension) values(?,?);");
            
            ps1.setString(1,fileName);
            ps1.setString(2,fileExtension);          
            ps1.executeUpdate();          
            out.print("<script>alert('File uploaded');location.href='ViewDocuments.jsp?year="+year+"';</script>");      
        }
        catch(FileExistsException fe){
        out.print("<script>alert('File Aready exists');location.href='UploadDocuments.jsp';</script>");        
        }
       
        
        catch(Exception e){
        out.print(e+" <BR>"+e.getMessage());}
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
