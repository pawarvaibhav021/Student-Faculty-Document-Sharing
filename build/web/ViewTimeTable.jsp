<%-- 
    Document   : ViewTimeTable
    Created on : Mar 17, 2019, 7:36:49 PM
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
                cursor: pointer;
                min-width:100px;
                color:white;          
                border:1px solid cyan;
                border-radius: 10px;
                padding:3px;
                font-family: sans-serif;
            }
            table{
                text-align: center;
                table-layout: fixed;
                border:1px solid cyan;
                border-radius: 10px;
            }
            th{
                color:greenyellow;
            }
            h1{
                color:yellow;
            }
    </style>
    </head>
    <center>
        <h1 id="head"></h1>
        
    <div id="timeTable"></div>
    </center>
    <script>
          <%  
              String year=request.getParameter("year");
              HttpSession s=request.getSession();            
            String course=(String)s.getAttribute("field");
              Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college?zeroDateTimeBehavior=convertToNull&useSSL=false", "root", "root");                             
            PreparedStatement ps=con.prepareStatement("select * from "+year+course+"timetable");
            ResultSet rs=ps.executeQuery();
        %>
            document.getElementById('head').innerHTML='<%=year.toUpperCase()+course.toUpperCase()%>';
          var str="<table >";
           var heading=["Time","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"];
           i=1;
         <%
             while(rs.next())
             {
         %>
             
                str=str+"<tr>";
                if(i==1)
                {
                    for(j=0;j<7;j++)
                    {
                        str=str+"<th>"+heading[j]+"</th>";
                    }
                }
                str=str+"</tr><tr>";
                
                    
                    <!--str=str+"<td id=td1"+i+"><input class=c1"+i+" type=time id=time1"+i+"></td>";-->
                    str=str+"<td id=td1"+i+"><%=rs.getString(1)%></td>";
                    str=str+"<td id=td2"+i+"><%=rs.getString(2)%></td>";
                    str=str+"<td id=td3"+i+"><%=rs.getString(3)%></td>";
                    str=str+"<td id=td4"+i+"><%=rs.getString(4)%></td>";
                    str=str+"<td id=td5"+i+"><%=rs.getString(5)%></td>";
                    str=str+"<td id=td6"+i+"><%=rs.getString(6)%></td>";
                    str=str+"<td id=td7"+i+"><%=rs.getString(7)%></td>";
                
                str=str+"</tr>";
                i++;
                <%
            }
                %>
            str=str+"</table>";
            document.getElementById('timeTable').innerHTML=str;
    </script>
    <body>
        
    </body>
</html>
