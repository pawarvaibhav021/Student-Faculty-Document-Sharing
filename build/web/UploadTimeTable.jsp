<%-- 
    Document   : UploadTimeTable
    Created on : Mar 17, 2019, 7:35:19 PM
    Author     : vaibhav
--%>

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
            button,input{
                 width:100%;
                height:30px;
                box-shadow: 2px 2px 2px grey;
                border-bottom-color: grey;
                border-right-color: grey;
                border-width: 1px 1px 1px 1px;
                border-radius: 10px ;
                text-align: center;
                background: rgba(56,66,108,1);
                color:white;
                font-size:16px;
                font-family: sans-serif;
            }
            button{
                width:10%;
                height: 30px;
            }
              h1{
                color:yellow;
            }
    </style>
    <body>
    <center>
           <h1 id="head"></h1>
        <div id="subjects">
            <table id="sub" border=2>
                <tr>
                    <td onclick=selectValue('sub1') id="sub1">NA</td>
                    <td onclick=selectValue('sub2') id="sub2">NA</td>
                    <td onclick=selectValue('sub3') id="sub3">NA</td>
                    <td onclick=selectValue('sub4') id="sub4">NA</td>
                    <td onclick=selectValue('sub5') id="sub5">NA</td>
                    <td ><input type="button" onclick="addSub()" value="Enter Subjects"></td>
                </tr>
            </table>
        </div>
        <div id="practical">
            <table id="pract" border=2>
                
                
                <tr>
                    <td onclick=selectValue('pract1') id="pract1">NA</td>
                    <td onclick=selectValue('pract2') id="pract2">NA</td>
                    <td onclick=selectValue('pract3') id="pract3">NA</td>
                    <td onclick=selectValue('pract4') id="pract4">NA</td>
                    <td onclick=selectValue('pract5') id="pract5">NA</td>
                    
                    <td ><input type="button" onclick="addPract()" value="Enter Pract+labs"></td>
                </tr>
            </table>
        </div>
         
        <br>
        <br>
     
        <div id=timeTable>
        </div>
        <form name=f method="post" action="UploadTimetableDB">
            <input type="hidden" name="data" id="data">
            <input type="hidden" name="year" id="year">
          
        </form>        
        <button onclick="test()">Upload</button>
    
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
            document.getElementById("year").value='<%=request.getParameter("year")%>';
            document.getElementById('head').innerHTML='<%=year.toUpperCase()+course.toUpperCase()%>';
            var selectedValue="NA";
            
            var defaultTime=["7:30","8:20","9:25","10:15","11:05","11:55","12:45","1:35","2:25"];
            
           function clearSelection()
           {
                  for(i=1;i<=5;i++)
                  {
                      document.getElementById('sub'+i).style.color='white';
                      document.getElementById('sub'+i).style.background='none';
                  }
                  for(i=1;i<=5;i++)
                  {
                      document.getElementById('pract'+i).style.color='white';
                      document.getElementById('pract'+i).style.background='none';
                  }
           }
            function selectValue(a)
            {
                selectedValue=document.getElementById(a).innerText;
                clearSelection();
                document.getElementById(a).style.color="red";
                document.getElementById(a).style.background="yellow";
                
            }
           
            function insert(a)
            {
                document.getElementById(a).innerText=selectedValue;
            }
           var str="<table border=2>";
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
                    str=str+"<td id=td1"+i+">"+defaultTime[i-1]+"</td>";
                    str=str+"<td onclick=insert('td2"+i+"') id=td2"+i+"><%=rs.getString(2)%></td>";
                    str=str+"<td onclick=insert('td3"+i+"') id=td3"+i+"><%=rs.getString(3)%></td>";
                    str=str+"<td onclick=insert('td4"+i+"') id=td4"+i+"><%=rs.getString(4)%></td>";
                    str=str+"<td onclick=insert('td5"+i+"') id=td5"+i+"><%=rs.getString(5)%></td>";
                    str=str+"<td onclick=insert('td6"+i+"') id=td6"+i+"><%=rs.getString(6)%></td>";
                    str=str+"<td onclick=insert('td7"+i+"') id=td7"+i+"><%=rs.getString(7)%></td>";
                
                str=str+"</tr>";
                i++;
                <%
            }
                %>
            str=str+"</table>";
            document.getElementById('timeTable').innerHTML=str;
           
            function addPract()
            {
                for(i=1;i<=5;i++)
                {
                    var s=prompt("Enter "+i+" Practical Subjects");
                    document.getElementById('pract'+i).innerText=s+"(PR)";
                }
            }
            function addSub()
            {
                for(i=1;i<=5;i++)
                {
                    var s=prompt("Enter "+i+" subject");
                    document.getElementById('sub'+i).innerText=s;
                }
            }
            
            function test()
            {
                var arr1=[];
                for(i=1;i<10;i++)
                {                    
                   
                    for(j=1;j<=7;j++)
                    {
                        var n=document.getElementById('td'+j+i).innerHTML;
                        arr1.push(n);
                    }
                }
            document.getElementById('data').value=arr1.join();
         
            f.submit();
            }
        </script>
        </center>
    </body>
</html>
