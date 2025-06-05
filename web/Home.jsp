<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
        <style>
            html,body{
                height:100%;
                width:100%;
                
            }
            body{
                overflow: hidden;              
                background: rgba(17,166,137,1) ;          
            }
            #left{
                padding:10px 10px 10px 10px;
                width:60%;
                height:100%;
                left:5px;
                top:3px;
            }
            #right{
                padding-top: 10px;                
                width:37%;
                height:95%;               
                right:10px;
                top:3px;                
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
            
            #noticeName{
                height:10%;
                width:98%;
                background-color: rgba(255,255,255,0.7); 
                font-size: 24px;
                border-radius: 15px ;
                text-align: center;
                font-family: serif;
                border:2px solid cyan;
            }
            textarea {
               height:90%;
                width: 98%;    
                resize: none;    
                background-color: rgba(255,255,255,0.7); 
                font-size: 24px;
                border-radius: 15px ;
                font-family: serif;
                border:2px solid cyan;
            }            
             ::-webkit-input-placeholder
            {
                text-align: center;
                font-size: 24px;
            }

             button
            {
                background: rgba(56,66,108,1);
                border:0px;
                color:white;
                border-left: 1px solid white;
                border-right:  1px solid white;
                width:19.7%;
                height:10%;
                border-radius: 10px;
                font-size:130%;
                font-family: serif;
            }
            form{
                width:100%;
                height:70%;
            }
           
            #td1,#td{
                width:10%;
            }
            
            table{
                margin-left: 5px;
                width:95%;
                
               
                }
            th,td{
                color:#006666;
                border:2px solid cadetblue   ;
                border-radius: 15px;
                text-align: center;
                font-size: 20px;
                font-family: serif;
                
            }
            .edit,.delete{
                font-size: 20px;
                width:100%;
                background: #36a420;
            }
            
            #update{
                display:none;
            }
            #hiddenView{
                position :fixed; 
                display: none;
                background: url("images/sticky.png");                                
                background-repeat: no-repeat;
                background-size: 100% 100%;
                padding: 30px 30px 30px 30px;
    
                               
            }
            #textData{
                width: 90%;
                padding:10px 10px 10px 10px;
                height:170px;
                border:1px solid orange;
                border-radius: 5px; 
                overflow-y: scroll;
                font-family: serif;
                text-align: justify;
                word-wrap: break-word;
              
            }
            #hiddenImage{
                position :fixed; 
               display: none;
                background: #b8e4dc;
                padding: 30px 30px 30px 30px;
                
            }
            #uploadButton{
                width:100%;
                height:100%;
                font-size: 90%;
            }
            #hiddenRow{
                
            }
            #file1{
                width:1px;
                height:1px;
                opacity: 0;                
            }
            #file1+label{
                    max-width: 80%;
                font-size: 1.25rem;
                font-weight: 700;
                text-overflow: ellipsis;
                white-space: nowrap;
                cursor: pointer;
                display: inline-block;
                overflow: hidden;
                padding: 0.625rem 1.25rem;
                
                background-color:  #d3394c;
                color:White;
                
                
                border-radius: 10px;
                
                
                
            }
            #file1:focus + label,
            #file1 + label:hover {
                background-color: #4b0f31;
            }
            #file1:focus + label {
                outline: 1px dotted #000;
                outline: -webkit-focus-ring-color auto 5px;
             }
             #file1 + label * {
                    pointer-events: none;
                }
                #labelTR{
                     background-color:  #d3394c;
                }
                #labelTR:hover{
                     background-color:  #4b0f31;
                }
            #imageTable{
                width:45%;
                height:170px;
                background: #b8e4dc;
            }
            span{
                 display:inline;
                width:100%;
                white-space: pre; 
                
            }
            svg,span{
                display:inline;
            }
            #img{
                padding:5px 5px 5px 5px;
            }
            #hiddenImgTag
            {
                max-width: 400px;
                max-height: 300px;
                background-size: cover;
                 border-radius: 15px;
            }
            
        </style>    
        <script>
            
         if(sessionStorage.getItem("visit")=="0"||sessionStorage.getItem("opened_once")!="1")
        {
            top.window.location.href="index.jsp";
        }        
        
        var widthh=screen.width/2;
        var heighth=screen.height/2;       
        var lefth=widthh/2;
      
   
            </script>
    </head>
    
    <body id="body2">        
        <div id="left">
            <form id="f" method="post">
                <input type="hidden" name="hidden" id="hidden">
                <input type="text" id="noticeName" name="noticeName" placeholder="Notice Name">
                <br>
                <br>
            <textarea id=textarea name="textarea" placeholder="Type Notice..."></textarea>       
            </form>
             <br>
             <br>
             <button id="upload" onclick="upload()">Upload Text</button>
              <button id="update" onclick="update()">Update</button>
        </div>
        <div id="right">
            <%
                try{
                    HttpSession s=request.getSession();
                    String field=(String)s.getAttribute("field");
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college?zeroDateTimeBehavior=convertToNull&useSSL=false&useSSL=false", "root", "root");                             
                    PreparedStatement ps1=con.prepareStatement("Select * from "+field+"notice");
                    ResultSet rs1=ps1.executeQuery(); 
                    ResultSetMetaData rsmd=rs1.getMetaData();
                    int colCount=rsmd.getColumnCount();    
        %>    
        <table id=table1 cellspacing=5 cellpadding="5"> <tr>
                <th id="head" >  Notices</th>
            </tr><tr>
            </tr><tr >
                    <%
                   int cnt=1;
                        while(rs1.next())
                        {
                            for(int i=1;i<=(colCount);i++)
                            {
                                    String temp=cnt+""+i;
                                    if(i==3||i==4)
                                    {%>
                                    <td id='td'><button class='edit' id=e<%=cnt%><%=i%> onclick='edit("<%=rs1.getString(1)%>","<%=rs1.getString(2)%>","<%=rs1.getString(3)%>")'>Edit</button></td>
                                    <td id='td'><button class='delete' id=d<%=cnt%><%=i%> onclick='Delete(<%=rs1.getString(1)%>)'>Delete</button></td>
                                     <%   continue;
                                    }
                                    %>
                                    <td id=td<%=i%> onclick='hideView("<%=rs1.getString(2)%>","<%=rs1.getString(3)%>")'><b><%=rs1.getString(i)%></b></td>
                                    <%                      
                            }
                            %>
                        </tr><tr>                            
                            <% cnt++; 
                        }
                    }
                catch(Exception e)
                {
                    System.out.print(e);
                }
            %>
            </tr>
        </table>
        </div>
            <div id="hiddenView">
             
                <br>                
                <center>
                    <h3 id="nameData"></h3> 
                    <h4 id="textData"></h4>
                    <button id=close onclick="Close()">Close</button>
                </center>                
            </div>
            
            <script>
                function change(image){
                                       
                    var str=document.getElementById('file1').value.split("\\");                       
                    document.getElementById('displayFile').innerHTML=str[str.length-1];                    
                    document.getElementById('hiddenRow').style.display='table-row';
                    
                  
                    var reader = new FileReader();
                    reader.onload = function (e)
                    {                        
                        $('#hiddenImgTag').attr('src',e.target.result);
                        
                    };
                    reader.readAsDataURL(document.getElementById('file1').files[0]);    
                   
                }
               
                function UploadImage()
                {
                    
                    document.getElementById("left").style.opacity="1";
                    document.getElementById("right").style.opacity="1";
                    window.parent.document.getElementById("top").style.opacity="1";
                    document.getElementById("hiddenImage").style.display='none'; 
                    document.getElementById("hidImg").value=document.getElementById("img_notice_name").value;
                    imageForm.submit();
                }
                function ShowHiddenImage()
                {
                    document.getElementById("left").style.opacity="0.5";
                    document.getElementById("right").style.opacity="0.5";
                    window.parent.document.getElementById("top").style.opacity="0.5";
                    document.getElementById("hiddenImage").style.opacity="2";
                    
                    
                    document.getElementById('hiddenImage').style.display='block';                          
                    document.getElementById('hiddenImage').style.width=widthh+'px';
                    document.getElementById('hiddenImage').style.height=heighth+'px';
                    document.getElementById('hiddenImage').style.left=lefth+'px';                    
                }
                function hideView(noticeName,noticeText)
                {
                   
                    var sp = noticeText.split("\n");
                    var result = sp.join("<br>");                    
                    
                    document.getElementById("left").style.opacity="0.5";
                    document.getElementById("right").style.opacity="0.5";
                    window.parent.document.getElementById("top").style.opacity="0.5";
                    document.getElementById("hiddenView").style.opacity="2";                    
                    
                    document.getElementById('hiddenView').style.display='block';
                    document.getElementById('nameData').innerHTML=noticeName;
                    document.getElementById('textData').innerHTML=result;                            
                    document.getElementById('hiddenView').style.width=widthh+'px';
                    document.getElementById('hiddenView').style.height=heighth+'px';
                    document.getElementById('hiddenView').style.left=lefth+'px';
             //     document.getElementById('hiddenView').style.top=toph+'px';
                }
                function Close()
                {
                    document.getElementById("left").style.opacity="1";
                    document.getElementById("right").style.opacity="1";
                    window.parent.document.getElementById("top").style.opacity="1";
                    document.getElementById("hiddenView").style.display='none';
                    
                }
                function Delete(id)
                {
                    document.getElementById('hidden').value=id;
                    f.action="DeleteNoticeText";
                    f.submit();
                }
                
                function upload(){
                    
                    if(document.getElementById('noticeName').value.length==0||document.getElementById('textarea').value.length==0)
                    {
                        alert("Please fill both fields");
                        return 0;
                    }
                    
                    var strs=document.getElementById('textarea').value;                   
                    var sp = strs.split("\n");
                    var result = sp.join("\\n");
                    document.getElementById('textarea').value=result;
                                      
                    f.action="UploadNoticeText";
                    f.submit();
                    
                }
                function update(){
                    if(document.getElementById('noticeName').value.length==0||document.getElementById('textarea').value.length==0)
                    {
                        alert("Please fill both fields");
                        return 0;
                    }
                    
                    var strs=document.getElementById('textarea').value;                   
                    var sp = strs.split("\n");
                    var result = sp.join("\\n");
                    document.getElementById('textarea').value=result;
                    
                    f.action="UpdateNoticeText";
                    f.submit();
                }
                function edit(col1,col2,col3)
                {
                    
                    document.getElementById('hidden').value=col1;
                  //alert(col1+"\n"+col2+"\n"+col3);
                  document.getElementById("noticeName").value=col2;
                  document.getElementById("textarea").value=col3;
                  document.getElementById('upload').style.display='none';
                  document.getElementById('update').style.display='inline-block';
                    
                }
                var colCount=document.getElementById('table1').rows[2].cells.length;
                document.getElementById('head').colSpan=colCount;
            </script>
    </body>
</html>
