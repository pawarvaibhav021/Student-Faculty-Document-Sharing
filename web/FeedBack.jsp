<%-- 
    Document   : FeedBack
    Created on : Apr 5, 2019, 10:25:30 PM
    Author     : vaibhav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
              ::-webkit-input-placeholder
            {
                text-align: center;
            }
           
           
            input{
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
            body
            {
                background: rgba(17,166,137,1) ;
            }
            table{
                width:350px;               
                background-color: rgba(255,255,255,0.7); 
                border-radius: 10px ;
                padding-left: 20px;
                padding-right: 30px;
                border: 1px solid cyan;
             
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
            label{
                width:100%;
      
            }
            
            #top
            {
                height:20px;
            }
            #bottom
            {
                height:20px;
            }
           
        </style>
    </head>
    <body>
    <center>
       <form name="table1" action="ViewFeedback.jsp" id="table" method="post">
            <br><br><br><br>  <br><br><br><br>
            <table cellpadding="5" id=selection>
               <tr id="top"></tr>
               
                <tr>
                    <td>
                 <center><b><label>Select Year</label></b></center>
                    </td><td>
                        <select id=year name="year">
                            <option value="fy">First</option>
                            <option value="sy">Second</option>
                            <option value="ty">Third</option>
                        </select>
                        
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td >                
                <input type="button" id="viewtimeTable" onclick="viewFeedback()" value="View Feedback">
                    </td>    
                </tr>
                <tr id="bottom"></tr>
            </table>
        </form>
        </center>
        <script>
                function viewFeedback()
                {
                    var year=document.getElementById('year').value;
                      location.href="ViewFeedback.jsp?year="+year;
                }
        </script>
    </body>
</html>
