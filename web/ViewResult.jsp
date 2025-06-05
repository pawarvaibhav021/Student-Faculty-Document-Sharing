<%-- 
    Document   : ViewResult
    Created on : 24 Feb, 2019, 8:47:21 PM
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
             *{
                font-size: 24px;
                font-family: serif;
            }
            
            body{
                 background: rgba(17,166,137,1) ;
            }
            #main{
                margin:2%;
                padding-top: 5%;
                padding-bottom: 5%;
                background: rgba(255,255,255,0.5) ;
                border-radius:15px;
            }
            td{
                border:3px solid cadetblue;
                border-radius:5px;
                text-align: center;
            }
            table{
                width:80%;
            }
        </style>
    </head>
    
    <body>
    <center>
        <div id="main">
            <h1 id="caption">
                
            </h1>
            <br>
        <div id="Ograde">
            <label>O grade</label><br>
            
        </div>
        <br><br>
        
        <div id="Apgrade">
            <label>A+ grade</label><br>
            
        </div>
        <br><br>
        
        <div id="Agrade">
            
        </div>
        <br><br>
        
        <div id="BPgrade">
            
        </div>
        <br><br>
        
        <div id="Bgrade">
            
        </div>
        <br><br>
        
        <div id="Cgrade">
            
        </div>
        <br><br>
        
        <div id="Dgrade">
            
        </div>
        <br><br>
        
        <div id="Fgrade">
            
        </div>
        </div></center>
        <br><br>
        <script>
            var ograde="<table id=ogradeTable><td colspan=10>O Grade</td><tr>";
            var apgrade="<table id=apgradeTable><td colspan=10>A+ Grade</td><tr>";
            var agrade="<table id=agradeTable><td colspan=10>A Grade</td><tr>";
            var bpgrade="<table id=bpgradeTable><td colspan=10>B+ Grade</td><tr>";
            var bgrade="<table id=bgradeTable><td colspan=10>B Grade</td><tr>";
            var cgrade="<table id=cgradeTable><td colspan=10>C Grade</td><tr>";
            var dgrade="<table id=dgradeTable><td colspan=10>D Grade</td><tr>";
            var fgrade="<table  id=fgradeTable><td colspan=10>F Grade</td><tr>";
            
            <%
                /*
               HttpSession s=request.getSession();
               String course=(String)s.getAttribute("course");
               String year=(String)s.getAttribute("year");
               String sem=(String)s.getAttribute("sem");
*/
               HttpSession s=request.getSession();
               String course=(String)s.getAttribute("field");
               String year=request.getParameter("year");
               String sem=request.getParameter("sem");
               String field=year+course;
               %>
                   document.getElementById('caption').innerText="<%=year.toUpperCase()+course.toUpperCase()%>";
                <%
                
                 Class.forName("com.mysql.jdbc.Driver");
                 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college?zeroDateTimeBehavior=convertToNull&useSSL=false", "root", "root");                             
                 
                 PreparedStatement ps1=con.prepareStatement("select rno from "+field+"Result where sem"+sem+"grades='O'");
                 ResultSet rs1=ps1.executeQuery();
                 int cnt=1;
                 while(rs1.next())
                 { 
                    %>
                        if(<%=cnt%>%10==0)
                        {
                            ograde=ograde+"</tr><tr>";
                        }
                         ograde=ograde+"<td><%=rs1.getInt(1)%></td>";
                       
                     <%
                         cnt++;
                         
                 }
              
            %>
                ograde=ograde+"</tr></table>";
                document.getElementById('Ograde').innerHTML=ograde;
            
             <%
                  PreparedStatement ps2=con.prepareStatement("select rno from "+field+"Result where sem"+sem+"grades='A+'");
                 ResultSet rs2=ps2.executeQuery();
                 cnt=1;
                 while(rs2.next())
                 { 
                    %>
                        if(<%=cnt%>%10==0)
                        {
                            apgrade=apgrade+"</tr><tr>";
                        }
                         apgrade=apgrade+"<td><%=rs2.getInt(1)%></td>";
                       
                     <%
                         cnt++;
                         
                 }
              
            %>
            apgrade=apgrade+"</tr></table>";
            document.getElementById('Apgrade').innerHTML=apgrade;
            
            
            <%
                  PreparedStatement ps3=con.prepareStatement("select rno from "+field+"Result where sem"+sem+"grades='A'");
                 ResultSet rs3=ps3.executeQuery();
                 cnt=1;
                 while(rs3.next())
                 { 
                    %>
                        if(<%=cnt%>%10==0)
                        {
                            agrade=agrade+"</tr><tr>";
                        }
                         agrade=agrade+"<td><%=rs3.getInt(1)%></td>";
                       
                     <%
                         cnt++;
                         
                 }
              
            %>
            agrade=agrade+"</tr></table>";
            document.getElementById('Agrade').innerHTML=agrade;
           
           <%
                  PreparedStatement ps4=con.prepareStatement("select rno from "+field+"Result where sem"+sem+"grades='B+'");
                 ResultSet rs4=ps4.executeQuery();
                 cnt=1;
                 while(rs4.next())
                 { 
                    %>
                        if(<%=cnt%>%10==0)
                        {
                            bpgrade=bpgrade+"</tr><tr>";
                        }
                         bpgrade=bpgrade+"<td><%=rs4.getInt(1)%></td>";
                       
                     <%
                         cnt++;
                         
                 }
              
            %>
            bpgrade=bpgrade+"</tr></table>";
            document.getElementById('BPgrade').innerHTML=bpgrade;
            
            <%
                  PreparedStatement ps5=con.prepareStatement("select rno from "+field+"Result where sem"+sem+"grades='B'");
                 ResultSet rs5=ps5.executeQuery();
                 cnt=1;
                 while(rs5.next())
                 { 
                    %>
                        if(<%=cnt%>%10==0)
                        {
                            bgrade=bgrade+"</tr><tr>";
                        }
                         bgrade=bgrade+"<td><%=rs5.getInt(1)%></td>";
                       
                     <%
                         cnt++;
                         
                 }
              
            %>
            bgrade=bgrade+"</tr></table>";
            document.getElementById('Bgrade').innerHTML=bgrade;
            
            <%
                  PreparedStatement ps6=con.prepareStatement("select rno from "+field+"Result where sem"+sem+"grades='C'");
                 ResultSet rs6=ps6.executeQuery();
                 cnt=1;
                 while(rs6.next())
                 { 
                    %>
                        if(<%=cnt%>%10==0)
                        {
                            cgrade=cgrade+"</tr><tr>";
                        }
                         cgrade=cgrade+"<td><%=rs6.getInt(1)%></td>";
                       
                     <%
                         cnt++;
                         
                 }
              
            %>
            cgrade=cgrade+"</tr></table>";
            document.getElementById('Cgrade').innerHTML=cgrade;
            
            <%
                  PreparedStatement ps7=con.prepareStatement("select rno from "+field+"Result where sem"+sem+"grades='D'");
                 ResultSet rs7=ps7.executeQuery();
                 cnt=1;
                 while(rs7.next())
                 { 
                    %>
                        if(<%=cnt%>%10==0)
                        {
                            dgrade=dgrade+"</tr><tr>";
                        }
                         dgrade=dgrade+"<td><%=rs7.getInt(1)%></td>";
                       
                     <%
                         cnt++;
                         
                 }
              
            %>
            dgrade=dgrade+"</tr></table>";
            document.getElementById('Dgrade').innerHTML=dgrade;
            
            <%
                  PreparedStatement ps8=con.prepareStatement("select rno from "+field+"Result where sem"+sem+"grades='F'");
                 ResultSet rs8=ps8.executeQuery();
                 cnt=1;
                 while(rs8.next())
                 { 
                    %>
                        if(<%=cnt%>%10==0)
                        {
                            fgrade=fgrade+"</tr><tr>";
                        }
                         fgrade=fgrade+"<td><%=rs8.getInt(1)%></td>";
                       
                     <%
                         cnt++;
                         
                 }
              
            %>
            fgrade=fgrade+"</tr></table>";
            document.getElementById('Fgrade').innerHTML=fgrade;
        </script>
    </body>
</html>
