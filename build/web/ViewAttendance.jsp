<%-- 
    Document   : ViewAttendnace
    Created on : 29 Jan, 2019, 9:17:07 PM
    Author     : vaibhav
--%>

<%@page import="java.sql.ResultSetMetaData"%>
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
             body{
                 background: rgba(17,166,137,1) 
            }
          table{
                  
                background-color: rgba(255,255,255,0.4); 
                border-radius: 10px ;
                border:2px solid cyan;
            }
            th,td{
                    
                border:2px solid cyan   ;
                border-radius: 55px;
                text-align: center;
                font-size: 25px;
                font-family: serif;
            }
            .p{
                color:yellow;
                background: blue;
            }
            .a{
                color:yellow;
                background: red;
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
                    PreparedStatement ps1=con.prepareStatement("select * from "+course);
                    ResultSet rs1=ps1.executeQuery(); 
                    ResultSetMetaData rsmd=rs1.getMetaData();
                    int colCount=rsmd.getColumnCount();             

        %>
     
        
        <table  id=table1 cellspacing=5 cellpadding="5"> <tr>
                <td id="head" colspan="2">  <%=course.toUpperCase()%></td>
            </tr><tr>
        <%
                    
                    for(int i=1;i<=colCount;i++)
                    {
                        
                            String temp=rsmd.getColumnName(i);
                            %>
                            <th id=th<%=i%>><%=temp%></th>
                            <%
                        
                    }%>
                            <th>Total</th>
            </tr><tr >
                    <%

                    int cnt=1;
                    while(rs1.next())
                    {
                        int present=0;
                      
                        for(int i=1;i<=colCount;i++)
                        {
                                String temp=rs1.getString(i);
                                String no=cnt+""+i;
                                if(temp.equals("P")){
                                    present++;
                                %>
                                <td id=td<%=no%> class=p><%=temp%></td>
                                <%
                                    continue;
                                }
                                if(temp.equals("A")){
                                    %>
                                    <td id=td<%=no%> class=a><%=temp%></td>
                                <%
                                    continue;
                                }
                                %>
                                <td id=details><%=temp%></td>                               
                                <%                            
                        }
                        
                        %>
                        <td id=cnt<%=cnt%> ><%=present%>/<%=colCount-2%></td>
            </tr ><tr>                            
                        <%
                            
                              cnt++;
                              
                    }
   
   

                }
                catch(Exception e)
                {
                }
                 
            %>
           
            </tr></table>
     
                 
            <br> <br><br><br>
            <script>     
                  if(sessionStorage.getItem("visit")==="0")
      {
          top.window.location.href="index.jsp";
      }
                var tcolCount=document.getElementById('table1').rows[1].cells.length;
                //alert(trowCount);                            
                var total=tcolCount-3;
            
                document.getElementById('head').colSpan=tcolCount;
            
            </script>
    </body>
</html>
