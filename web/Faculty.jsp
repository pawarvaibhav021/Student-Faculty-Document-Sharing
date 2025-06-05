<%-- 
    Document   : Faculty
    Created on : Apr 5, 2019, 10:22:34 PM
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
               body{
                overflow: hidden;              
                background: rgba(17,166,137,1) ;          
            }
            #left{
                padding-top: 10px;                
                width:45%;
                height:80%;               
                left:30px;
                top:30px;                
                overflow-y: auto;
                border-radius: 10px ;
                border:2px solid cyan;
                background-color: rgba(255,255,255,0.7); 
            }
            #right{
                padding-top: 10px;                
                width:45%;
                height:80%;               
                right:30px;
                top:30px;                
                overflow-y: auto;
                border-radius: 10px ;
                border:2px solid cyan;
                background-color: rgba(255,255,255,0.7); 
            }
            ::-webkit-scrollbar {
                width: 0px;  /* remove scrollbar space */
                background: transparent;  /* optional: just make scrollbar invisible */
            }
            #left,#right{
                 display:inline-block;
                 position:fixed;
            }
            td{
                text-align: center;
            }
               input[type="button"]{
                width:100%;
                height:30px;
                box-shadow: 2px 2px 2px grey;
                border-bottom-color: grey;
                border-right-color: grey;
                border-width: 1px 1px 1px 1px;
                border-radius: 5px ;
                text-align: center;
                background: rgba(56,66,108,1);
                color:white;
                font-size:19px;
                font-family: serif;
               }
               select,input{
                background: none;
               }
               
               input[type="text"]
               {         
                height:20px;
                box-shadow: 2px 2px 2px grey;
                border-bottom-color: grey;
                border-right-color: grey;
                border-width: 1px 1px 1px 1px;
                border-radius: 5px ;
                text-align: center;
               }
            table{
                border:1px solid cyan; 
                border-radius:10px; 
            }
            td{
               color:#006666;
                border:2px solid cadetblue   ;
                border-radius: 15px;
                text-align: center;
                font-size: 14px;
                font-family: serif;
                padding: 5px;
            }
                
        </style>
    </head>
    <body>
        <div id="main">
            <div id="left">
                
                <center>
                    <form action="AddFaculty" method="post" name="f">
                    <table id="table">
                        <tr>
                            <td>Faculty First Name</td>
                            <td><input type="text" name="fname" id="fname"></td>
                        </tr>
                        <tr>
                            <td>Faculty Middle Name</td>
                            <td><input type="text" name="mname" id="mname"></td>
                        </tr>
                        <tr>
                            <td>Faculty Last Name</td>
                            <td><input type="text" name="lname" id="lname"></td>
                        </tr>
                        <tr>
                            <td>Subjects</td>
                            <td><input type="text" name="subs" id="subs"></td>
                        </tr>
                        <tr>
                            <td>Field</td>
                                    <td><select name="field">
                                            <option value="IT">IT</option>
                                            <option value="CS">CS</option>  
                                </select></td>
                        </tr>
                        <tr>
                            <td>Years</td>
                                    <td><select name="year">
                                            <option value="fy">First</option>
                                            <option value="sy">Second</option>
                                            <option value="ty">Third</option>
                                        </select></td>
                        </tr>
                        <tr>
                            <td>Mob No</td>
                            <td><input type="text" name="mob" id="mob"></td>
                        </tr>
                        <tr>
                            <td>D.O.B</td>
                            <td><input type="date" name="date" id="date"></td>
                        </tr>
                        <tr>
                            <td>Email id</td>
                            <td><input type="email" name="email" id="email"></td>
                        </tr>
                        <tr>
                            <td colspan="2"><center><input type="button" value="Submit" onclick="Insert()"></center></td>
                              
                        </tr>
                    </table>
                    </form>
                </center>
            </div>
            <div id="right">
                <center> 
                    <%
                    try{
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college?zeroDateTimeBehavior=convertToNull&useSSL=false", "root", "root");                           
                            PreparedStatement ps=con.prepareStatement("select id,fullname,subs,field,year,password from login");
                            ResultSet rs=ps.executeQuery();
                        
                    %>
                    <table id="table">
                    <tr>
                        <td>SR</td>
                        <td>Faculty Name</td>
                        <td>Subjects</td>
                        <td>Field</td>
                        <td>Year</td>
                        <td>Password</td>
                    </tr>
                    <%
                        rs.next();
                            while(rs.next())
                            {
                                %>
                                <tr>
                                <td><%=rs.getString(1)%></td>
                                <td><%=rs.getString(2)%></td>
                                <td><%=rs.getString(3)%></td>
                                <td><%=rs.getString(4)%></td>
                                <td><%=rs.getString(5)%></td>
                                <td><%=rs.getString(6)%></td>
                                </tr>
                                <%
                            }
                        }
                        catch(Exception e){}
                    %>
                    
                </table>
                    </center>
            </div>
        </div>
        <script>
              if(sessionStorage.getItem("visit")==="0"||sessionStorage.getItem("opened_once")!="1")
      {
          top.window.location.href="index.jsp";
      }
           function Insert()
           {
               
               if(
                       document.getElementById("fname").value.length==0||
                       document.getElementById("mname").value.length==0||
                       document.getElementById("lname").value.length==0||
                       document.getElementById("subs").value.length==0||                     
                       document.getElementById("mob").value.length!=10||
                       document.getElementById("date").value.length!=10||
                       document.getElementById("email").value.length==0                           
                       )
               {
                   alert("Please Check all Field");
               }
               else
               {
                 f.submit();
               }
               
           }
            
        </script>
    </body>
</html>
