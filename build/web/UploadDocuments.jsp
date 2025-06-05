<%-- 
    Document   : UploadDocuments
    Created on : 24 Feb, 2019, 10:59:22 PM
    Author     : vaibhav
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.FileInputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
             *{
                font-size: 20px;
                font-family: serif;
            }            
            body{
                 background: rgba(17,166,137,1) ;
                 padding: 10px;
            }
            
            #main{
                  border-radius: 10px ;
                 background-color: rgba(255,255,255,0.7); 
                width:60%;
                border:1px solid cyan;
                padding: 30px;
            }
           table td{
               width: 300px;
               table-layout:fixed;
               word-wrap:break-word;
              overflow: hidden; 
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
            #first_tds{
                width: 50%;
                text-align: center;
            }
            #file{
                opacity: 1;
                width:0px;
                height:0px;                    
            }
            label{
                background: red; 
                padding-left: 30px;
                padding-right:  30px;
                padding-top: 4px; 
                padding-bottom: 4px; 
                border-radius:10px;
                color:white;
            }
         select{
                background-color:white; 
                opacity: 0.7;
                width:100%;
                height:30px;
                border-radius: 10px ;               
                color:black;
                border:1px solid cadetblue;
                box-shadow: 2px 2px 2px grey; 
                text-align-last: center;
               
            }
            #fileNameLabel{
                background: none; 
                padding-right: 80px;          
            }
            #button1
            {
                 cursor: pointer;
                    outline: none;
            }
            #button1:active
            {
                box-shadow: 0 3px #666;
                transform: translateY(10px);
                
            }
            #labeltd{
             text-align: left;
            }
            td{
                padding:5px;
             text-align: center;
             max-width: 300px; 
             
            }
        </style>
    </head>
    <body>
        <br>
        <br>
        <br>
        <br>
    <center>
        <div id="main">            
       
                <form name="f" action="UploadFiles" method="post" enctype="multipart/form-data">
                <table cellspacing="10" id="uploadt" >
                    <colgroup>
                        <col width="30%">
                        <col width="40%">
                    </colgroup>
                        <tr><td >Select Year</td>
                            <td><select id="year" name="year"> 
                                    <option value="fy">First</option>
                                    <option value="sy">Second</option>
                                    <option value="ty">Third</option>
                                </select>    
                                </td></tr>
                        <tr><td >Select File</td>
                            <td id="labeltd" style="width:100px"><label id="button1" for="file">Browse</label> <span id="fileNameLabel">No file Choosen</span><input type="file" onchange="Change()"  id="file" name="file"></td>
                        </tr>
                        <tr>
                            <td>
                                <input type="button" onclick="Submit()" value="Upload">
                            </td>
                            <td>
                                <input type="button" onclick="View()" value="View Documents">
                            </td>
                        </tr>
                </table>                        
                </form>
            </div>
        </center>
    <form name="form2" action="ViewDocuments.jsp">
        <input type="hidden" id="hiddenView" name="year">
    </form>
            
            
          
        </div>
        <script>
            function Change()
            {
                var str=document.getElementById('file').value;
                var arr=str.split("\\");
                var temp="";
                if(arr[arr.length-1].length>15)
                {
                    temp=arr[arr.length-1].slice(0,16)+"...";
                }
                else
                {
                    temp=arr[arr.length-1].toString();
                }
                document.getElementById('fileNameLabel').innerHTML=temp;
                
            }
                
                function Submit()
                {
                    if(document.getElementById('file').value.length!=0)
                    {
                        f.submit();
                    }
                    else
                    {
                        alert("Please select a file first")
                    }
                }
                function View()
                {
                    var str=document.getElementById('year').value;
                    if(str.length>0)
                    {
                        document.getElementById('hiddenView').value=str;
                        form2.submit();
                    }
                }
        </script>
    </body>
</html>
