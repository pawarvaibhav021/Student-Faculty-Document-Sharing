
<%@page import="java.sql.ResultSetMetaData"%>
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
        
        <style>
            body{
                 background: rgba(17,166,137,1) 
            }
            #present,#absent,#submit{
                width:20%;
                height:50px;     
                font-size: 25px;                
            }
            input,button{
                width:80px;
                height:80px;
                color:white;
                background: rgba(56,66,108,1);
                font-size: 25px;
                border:0;
                border-radius: 50px;
                
            }
            td{
                border:5px solid cyan   ;
                border-radius: 55px;
            }
            
           #tdhead{
            text-align: center;    
            font-size: 30px;
            font-family: serif;           
           }
            table{
                border-radius: 25px;
                padding:10px;
                border:1px solid cyan;
                background-color: rgba(255,255,255,0.4); 
            }
           
        </style>
        
        <script>
        if(sessionStorage.getItem("visit")==="0"||sessionStorage.getItem("opened_once")!="1")
        {
            top.window.location.href="index.jsp";
        }         
    var count=0;
     var a=[];
     var b=[];
      
    <%   
         
        String Field="";
        String LastColumn="";
        int cnt=0;
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college?zeroDateTimeBehavior=convertToNull&useSSL=false&useSSL=false", "root", "root");                             
        
   
        String year=request.getParameter("year");
        LastColumn=request.getParameter("columnName");
        HttpSession s=request.getSession();
        String course=(String)s.getAttribute("field");
        Field=year+course;
        
        s.setAttribute("year", year);
        PreparedStatement ps=con.prepareStatement("select count(rno) from "+(year+course));
        ResultSet rs=ps.executeQuery();
            if(rs.next())
            {
                cnt=rs.getInt(1);
            }
        PreparedStatement ps2=con.prepareStatement("select "+LastColumn+" from "+Field);
        ResultSet rs2=ps2.executeQuery();
        
    %>
    count=<%=cnt%>;
            function load()
            {
                    flag=1;
                    bgcolor='blue';
                    color='yellow';
                   
                        
                   // alert(count);
                    var str='<table id=at_sheet cellspacing=5 border=2><tr>';
                    str=str+'<td colspan=10 id=tdhead><b><%=Field.toUpperCase()%><b></td></tr><tr>';

                    for(i=1;i<=count;i++)
                    {
                        str=str+'<td><button id=b'+i+' onclick=select('+i+')>'+i+'</button></td>';

                        if(i%10===0)
                        {
                            if(i===count)
                                continue;
                            str=str+'</tr><tr>';
                        }
                    }
                    str=str+'</tr></table>\n\
                            <br><input id=present type=button onclick=present() value=Present>\n\
                            <input id=submit type=button onclick=upload() value=upload>\n\
                            <input id=absent type=button onclick=absent() value=Absent>';
                    document.getElementById('f').innerHTML=str;
                     
                            <%
                                int i=1;
                            while(rs2.next())
                            {
                                
                                
                                if(rs2.getString(1).equals("P"))
                                {%>                                       
                                    document.getElementById('b<%=i%>').style.background='blue';
                                    document.getElementById('b<%=i%>').style.color='yellow';
                                <%}
                                if(rs2.getString(1).equals("A"))
                                {%>
                                        
                                    document.getElementById('b<%=i%>').style.background='red';
                                    document.getElementById('b<%=i%>').style.color='yellow';
                                <%}
                                i++;
                            }
                        %>
                    
                    document.getElementById('present').style.background='blue';
                    document.getElementById('present').style.color='yellow';       
            }           
            
           
            function select(i)
            {
                
                 document.getElementById('b'+i).style.background=bgcolor;
                 document.getElementById('b'+i).style.color=color;
                
            }

            function present()
            {
                
                document.getElementById('present').style.background='blue';
                document.getElementById('present').style.color='yellow';
                
                bgcolor='blue';
                color='yellow';
                
                if(flag==0){
                    document.getElementById('absent').style.backgroundColor='rgba(56,66,108,1)';
                    document.getElementById('absent').style.color='white';
                    flag=1;
                }
            }
             function absent()
            {
               
                document.getElementById('absent').style.background='red';
                document.getElementById('absent').style.color='yellow';
                
                bgcolor='red';
                color='yellow';
                
                if(flag==1){
                    document.getElementById('present').style.backgroundColor='rgba(56,66,108,1)';
                    document.getElementById('present').style.color='white';
                    flag=0;
                }
            }
            function upload()
            {
               
                for(i=1;i<=count;i++)
                {
                    var buttonBgColor=document.getElementById('b'+i).style.background;
                    if(buttonBgColor=='blue')
                    {                        
                        a.push(i); 
                    } 
                   else
                    {                        
                        b.push(i); 
                    }
                }
                document.getElementById('hidden1').value=a.join();               
                document.getElementById('hidden2').value=b.join();               
                form1.submit();
               
            }
      <%
            }
        catch(Exception e){System.out.println("Errror"+e.getMessage());}
      %>
            </script>
    </head>
    <body onload="load()">
    <center><div id="f">
            
        </div>
        <form name="form1" action="UpadteCountAttendance.jsp" method="get">
        <input type="hidden" id="hidden1" name="hidden1">
         <input type="hidden" id="hidden2" name="hidden2">
        </form>
        
        
    </center>
    <br><br><br><br>
    </body>
</html>
