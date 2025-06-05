<%-- 
    Document   : ViewFeedback
    Created on : Apr 24, 2019, 1:00:33 AM
    Author     : vaibhav
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
              body
            {
                background: rgba(17,166,137,1) ;
                padding:30px;
            }
              th,td{
                
                min-width:100px;
                color:#006666;   
                font-size: 20px;
                border:1px solid cyan;
                border-radius: 10px;
                padding:3px;
                font-family: sans-serif;
            }
            table{
                padding:50px;
                text-align: center;
                table-layout: fixed;
                border:1px solid cyan;
                background-color: rgba(255,255,255,0.4); 
                border-radius: 10px ;
                                
            }
            th{
                color:greenyellow;
            }
        </style>
    </head>
    
    <body>
        <br>
    <center><div id="table"></div></center> 
    <br>
    <br>
        <script>
               <%  
             String year=request.getParameter("year");
              HttpSession s=request.getSession();            
            String course=(String)s.getAttribute("field");
             Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college?zeroDateTimeBehavior=convertToNull&useSSL=false", "root", "root");                                                   
            PreparedStatement ps=con.prepareStatement("select * from "+year+course+"feedback");
            ResultSet rs=ps.executeQuery();
        %>
             var str="<table border=2>";
             str=str+"<tr><th>Rno</th><th>Name</th><th>Teacher1</th><th>Teacher2</th><th>Teacher3</th><th>Teacher4</th><th>Teacher5</th></tr>";
             <%
                 while(rs.next())
                 {
             %>
                 str=str+"<tr>";
                 str=str+"<td><%=rs.getString(1)%></td>";
                 str=str+"<td><%=rs.getString(2)%></td>";
                 str=str+"<td><%=rs.getString(3)%></td>";
                 str=str+"<td><%=rs.getString(4)%></td>";
                 str=str+"<td><%=rs.getString(5)%></td>";
                 str=str+"<td><%=rs.getString(6)%></td>";
                 str=str+"<td><%=rs.getString(7)%></td>";
                 str=str+"</tr>";                 
                 <%
                   }
                 %>
                     str=str+"</table>";
                     document.getElementById('table').innerHTML=str;
        </script>
    </body>
</html>
