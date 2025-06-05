
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
            *{
                font-size: 24px;
                font-family: serif;
            }
            
            body{
                 background: rgba(17,166,137,1) 
            }
           
            button{
                width:80px;
                height:80px;
                color:white;
                background: rgba(56,66,108,1);
                font-size: 25px;
                border:0;
                border-radius: 50px;
                
            }
            table{
                  
                background-color: rgba(255,255,255,0.4); 
                border-radius: 10px ;
                border:2px solid cyan;
            }     
            td{
                border:1px solid cyan;
                border-radius: 10px;
                text-align: center;
                padding-right: 10px;
            }
            input[type="radio"]{
                width:0px;
                height:0px;
                visibility: hidden;
                
            }
            button
            {
                width:47%;
                height:20%;
                margin: 5px;
                
            }
            
        </style>
        
     
    </head>
    <body >
    <center>
        <div id="resultTable">
            
        </div>
        <form name=f action="UploadResult" method="post">
            <input type="hidden" name="grades" id="grades">
        </form>
        
    </center>
    <br><br><br><br>
       <script>
           
       /*
         if(sessionStorage.getItem("visit")==="0"||sessionStorage.getItem("opened_once")!="1")
        {
            top.window.location.href="index.jsp";
        }
        */
        var count=0;
        var a=[];
       var str="<table  cellspacing=10><tr>";
       
    <%   
        int cnt=0;
            try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college?zeroDateTimeBehavior=convertToNull", "root", "root");                             
            
           
            String year=request.getParameter("year");
            String sem=request.getParameter("sem");
            
            HttpSession s=request.getSession();
            String course=(String)s.getAttribute("field");
            s.setAttribute("year", year);
            s.setAttribute("sem",sem);
            
            String field=year+course;
            PreparedStatement ps1=con.prepareStatement("select count(rno) from "+field+"Result");
            ResultSet rs1=ps1.executeQuery();
            if(rs1.next())
            {
                cnt=rs1.getInt(1);
            }
            PreparedStatement ps2=con.prepareStatement("select * from "+field+"Result");
            ResultSet rs2=ps2.executeQuery();
            %>
                str=str+"<td colspan=10><%=year.toUpperCase()+course%> Result</td></tr><tr>";
            <%
            
           while(rs2.next())
           {
               int rno=rs2.getInt(1);
               String name=rs2.getString(2);
             
            %>
                
                str=str+"<td><%=rno%></td>";
                str=str+"<td><%=name%></td>";
                str=str+"<td id=student<%=rno%>1 onclick=select(<%=rno%>,1)><input type=radio id=r<%=rno%>1 onclick=change(<%=rno%>,1) name=student<%=rno%>grade value='O'>O</td>";
                str=str+"<td id=student<%=rno%>2 onclick=select(<%=rno%>,2)><input type=radio id=r<%=rno%>2 onclick=change(<%=rno%>,2) name=student<%=rno%>grade value='A+'>A+</td>";
                str=str+"<td id=student<%=rno%>3 onclick=select(<%=rno%>,3)><input type=radio id=r<%=rno%>3 onclick=change(<%=rno%>,3) name=student<%=rno%>grade value='A'>A</td>";
                str=str+"<td id=student<%=rno%>4 onclick=select(<%=rno%>,4)><input type=radio id=r<%=rno%>4 onclick=change(<%=rno%>,4) name=student<%=rno%>grade value='B+'>B+</td>";
                str=str+"<td id=student<%=rno%>5 onclick=select(<%=rno%>,5)><input type=radio id=r<%=rno%>5 onclick=change(<%=rno%>,5) name=student<%=rno%>grade value='B'>B</td>";
                str=str+"<td id=student<%=rno%>6 onclick=select(<%=rno%>,6)><input type=radio id=r<%=rno%>6 onclick=change(<%=rno%>,6) name=student<%=rno%>grade value='C'>C</td>";
                str=str+"<td id=student<%=rno%>7 onclick=select(<%=rno%>,7)><input type=radio id=r<%=rno%>7 onclick=change(<%=rno%>,7) name=student<%=rno%>grade value='D'>D</td>";
                str=str+"<td id=student<%=rno%>8 onclick=select(<%=rno%>,8)><input type=radio id=r<%=rno%>8 onclick=change(<%=rno%>,8) name=student<%=rno%>grade value='F'>F</td>";
                str=str+"</tr><tr>";
                     
           <%       
            }
            %>
            str=str+"<td id=tb1 colspan=10><button id=button1 onclick=upload()>Upload</button><button id=button2 onclick=back()>Back</button></td>"
            str=str+"</tr></table>";
            document.getElementById('resultTable').innerHTML=str;
            
            <%
            PreparedStatement ps3=con.prepareStatement("select rno,sem"+sem+"grades from "+field+"Result");
            ResultSet rs3=ps3.executeQuery();
            while(rs3.next())
            {
                int rno=rs3.getInt(1);
                String grade=rs3.getString(2);
                %>
                    for(i=1;i<=8;i++)
                    {   
                      if(document.getElementById('r<%=rno%>'+i).value=="<%=grade%>")                      
                      {
                          change(<%=rno%>,i);
                      }
                    }
                <%                 
                
            }
                
        
        }
        catch(Exception e){
            out.println(e);
        }
      %>
          function change(i,n)
          {
              deselect(i);
              document.getElementById('student'+i+n).style.background="yellow";
              document.getElementById('student'+i+n).style.color="red";
          }
          function deselect(i)
          {
              document.getElementById('student'+i+"1").style.backgroundColor="inherit";
              document.getElementById('student'+i+"1").style.color="inherit";
              document.getElementById('student'+i+"2").style.backgroundColor="inherit";
              document.getElementById('student'+i+"2").style.color="inherit";
              document.getElementById('student'+i+"3").style.backgroundColor="inherit";
              document.getElementById('student'+i+"3").style.color="inherit";
              document.getElementById('student'+i+"4").style.backgroundColor="inherit";
              document.getElementById('student'+i+"4").style.color="inherit";
              document.getElementById('student'+i+"5").style.backgroundColor="inherit";
              document.getElementById('student'+i+"5").style.color="inherit";
              document.getElementById('student'+i+"6").style.backgroundColor="inherit";
              document.getElementById('student'+i+"6").style.color="inherit";
              document.getElementById('student'+i+"7").style.backgroundColor="inherit";
              document.getElementById('student'+i+"7").style.color="inherit";
              document.getElementById('student'+i+"8").style.backgroundColor="inherit";
              document.getElementById('student'+i+"8").style.color="inherit";              
          }
          function select(i,n)
          {

               document.getElementById('r'+i+n).checked=true;
               change(i,n);
          }
          function upload()
          {
              var str=[];
            
              for(i=1;i<=<%=cnt%>;i++)
              {
                  var n;
                  var flag=0;
                  for(j=1;j<=8;j++)
                  {
                      if(document.getElementById('r'+i+j).checked)
                      {
                          n=j;
                          flag=1;
                      }
                  }
                  if(flag==1)
                  {
                      str.push(document.getElementById('r'+i+n).value);
                  }
                  else
                  {
                      str.push('NA');
                  }
                  
              } 
             
              document.getElementById('grades').value=str.join();
              f.submit();
              
          }
          function back()
          {
              location.href="Result.jsp";
          }
            </script>
    </body>
</html>
