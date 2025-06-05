<%-- 
    Document   : newjsp
    Created on : 6 Feb, 2019, 9:20:41 PM
    Author     : vaibhav
--%>

<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>
        <%
                    File dir=new File("d:\\new");
                    String[] str=dir.list();
                    for(int i=0;i<str.length;i++)
                    {
                        %>
                        <h1><%=str[i]%></h1>
                            <%
                    }
                %>
       <form name="f" action="Upload.jsp" method="post" enctype="multipart/form-data">  
            Select File:<input id="file1" type="file" name="fname1" /><br/>  
            Select File:<input id="file2" type="file" name="fname2" /><br/>  
            Select File:<input id="file3" type="file" name="fname3" /><br/>  
            
        </form>  
        <input type="button" value="submit" onclick="Upload()"/>  
        <script>
                function Upload()
                {
                    var s=document.getElementById('file1').value+document.getElementById('file2').value+document.getElementById('file3').value;
                    var a=[];
                    
                    a=s.split("\\");                    
                    //alert(a[a.length-1]);
                    //alert(s);
                    
                   //f.submit();
                }
                
        </script>
            
    </body>
</html>
