<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>

    <body>
        <%@ page import="com.oreilly.servlet.MultipartRequest" %>  
<%  
   String imgNoticeName=request.getParameter("hid");
    MultipartRequest m = new MultipartRequest(request, "D:\\Program Files\\Student Faculty Document Sharing\\web\\img_notice",1048576*5*1024);  
    
    out.print(imgNoticeName); 
    //out.print("successfully uploaded"+m.getOriginalFileName("fname")); 
    //response.sendRedirect("Home.jsp");

  
%>  
    </body>
</html>
