<%-- 
    Document   : CountAttendance
    Created on : 24 Jan, 2019, 9:58:23 PM
    Author     : vaibhav
--%>


<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <Script>
              if(sessionStorage.getItem("visit")==="0"||sessionStorage.getItem("opened_once")!="1")
      {
          top.window.location.href="index.jsp";
      }
            <%
               HttpSession s=request.getSession();
               String course=(String)s.getAttribute("field");
               String year=(String)s.getAttribute("year");
               String LastColumn="";
               
               //System.out.print(year+course);
               int cnt=0;
               
                String str =request.getParameter("hidden1");
                String str2 =request.getParameter("hidden2");
               // System.out.println(str.length());
                String[] strArray=new String[str.length()];           
                strArray=str.split(",");
                int[] arr=new int[strArray.length];
                for(int i=0;i<strArray.length;i++)
                {                
                      arr[i]=Integer.parseInt(strArray[i]);
                }
                
                String[] strArray2=new String[str2.length()];           
                strArray2=str2.split(",");
                int[] arr2=new int[strArray2.length];
                for(int i=0;i<strArray2.length;i++)
                {                
                      arr2[i]=Integer.parseInt(strArray2[i]);
                }
                
                
                try{
                    Date date = new Date();
                    SimpleDateFormat ft =new SimpleDateFormat ("d");    
                    //out.print( "<h2 align = \"center\">" +ft.format(date)+"</h2>");
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college?zeroDateTimeBehavior=convertToNull&useSSL=false", "root", "root");                             
                    PreparedStatement ps1=con.prepareStatement("select count(rno) from "+(year+course));
                    ResultSet rs1=ps1.executeQuery();  
                    if(rs1.next())
                    {
                        cnt=rs1.getInt(1);
                    }
                    
                    PreparedStatement ps2=con.prepareStatement("select * from "+(year+course));
                    ResultSet rs2=ps2.executeQuery();          
                    ResultSetMetaData rsmd=rs2.getMetaData();
                    int count=rsmd.getColumnCount();
                    LastColumn=rsmd.getColumnName(count);
                    for(int i=0;i<arr.length;i++)
                        {                       
                            PreparedStatement ps4=con.prepareStatement("update "+(year+course)+" set "+LastColumn+"='P' WHERE rno="+arr[i]);

                            ps4.executeUpdate();                       
                        }
                     for(int i=0;i<arr2.length;i++)
                        {                       
                            PreparedStatement ps4=con.prepareStatement("update "+(year+course)+" set "+LastColumn+"='A' WHERE rno="+arr2[i]);

                            ps4.executeUpdate();                       
                        }
                        response.sendRedirect("ViewAttendance.jsp?course="+course+"&year="+year);
                    
                    
                    
                    //response.sendRedirect("ViewAttendance.jsp");
                      //response.sendRedirect("ViewAttendance.jsp?course="+course+"&year="+year);
                }
                catch(Exception e){System.out.println(e);}             
                
             
        %></script>
    </body>
</html>
