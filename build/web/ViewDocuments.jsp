<%-- 
    Document   : ViewDocuments
    Created on : Mar 16, 2019, 12:18:11 AM
    Author     : vaibhav
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            *{
                    font-family: serif;
                      font-size:20px;
            }
            body{
                 background: rgba(17,166,137,1) 
            }
            table{
               background-color: rgba(255,255,255,0.4); 
                border-radius: 10px ;
                border:2px solid cyan;
            }
            th,td{
                padding:5px;    
                border:2px solid cyan   ;
                border-radius: 55px;
                text-align: center;
              
                font-family: serif;
            }
              button{
                width:100%;
                height:30px;
               
                box-shadow: 2px 2px 2px grey;
                border-bottom-color: grey;
                border-right-color: grey;
                border-width: 1px 1px 1px 1px;
                border-radius: 15px ;
                text-align: center;
                background:#36a420;
                color:white;
              
            }
            #back{
                 background: rgba(56,66,108,1);
            }
        </style>
    </head>
    <body>
       <%
            try{     
                
                String year=request.getParameter("year");
                HttpSession s=request.getSession();
                String course=(String)s.getAttribute("field");
                s.setAttribute("year", year);
                 course=year+course;
                    //String course=request.getParameter("course");
                    //String course="fyit";
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college?zeroDateTimeBehavior=convertToNull&useSSL=false", "root", "root");                             
                    PreparedStatement ps1=con.prepareStatement("select * from upload"+course);
                    ResultSet rs1=ps1.executeQuery(); 
                    ResultSetMetaData rsmd=rs1.getMetaData();
                    int colCount=rsmd.getColumnCount();             

        %>
     
    <center>
        <table  id=table1 cellspacing=5 cellpadding="5"> <tr>
                <td id="head" colspan="5">  <%=course.toUpperCase()%></td>
            </tr><tr>
                            <th>Sr.no</th>
                            <th>File Name</th>
                            <th>File Type</th>                                
                        
               </tr>
                    <%
                        while(rs1.next())
                        {
                            %>
                            <tr>
                            <td><%=rs1.getString(1)%></td>
                            <td><%=rs1.getString(2)%></td>
                            <td><%=rs1.getString(3)%></td>
                            <td><button onclick="Download('<%=rs1.getString(2)%>','<%=year%>')">Download</button></td>
                            <td><button onclick="Delete('<%=rs1.getString(2)%>','<%=year%>')">Delete</button></td>
                            </tr>
                        <%  
                        }
                        %>
                        <tr><td colspan="5"><button id=back onclick="back()">Back</button></td></tr>
                             </table></center>
                        <%
                      }
                    catch(Exception e){
out.println(e);}
                    %>
       
            <form id="f" name="f" method="post">
                <input type="hidden" id="filename" name="filename">
                <input type="hidden" id="year" name="year">
            </form>
            <script>
                function Download(name,yr)
                {
                    document.getElementById('filename').value=name;
                    document.getElementById('year').value=yr;
                    document.getElementById('f').action="DownloadFiles";
                    f.submit();
                }
                function Delete(name,yr)
                {
                    document.getElementById('filename').value=name;                
                    document.getElementById('year').value=yr;
                    document.getElementById('f').action="DeleteFile";
                    f.submit();
                }
                function back()
                {
                    location.href="UploadDocuments.jsp";
                }
                </script>
                <br><br><br><br>
                
    </body>
</html>
