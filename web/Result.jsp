


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
            *{
                font-family:serif;
                font-size: 16px;
            }
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
        
        
        <script>
       
       if(sessionStorage.getItem("visit")==="0"||sessionStorage.getItem("opened_once")!="1")
      {
          top.window.location.href="index.jsp";
      }
         function uploadResult(){
                document.getElementById('table').action="UploadResult.jsp";
                document.table1.submit();
            }
            function viewResult(){
                document.getElementById('table').action="ViewResult.jsp";
                document.table1.submit();
            }
               
           
                       
           
        </script>
     
    </head>
    <body >
        
    <center>
       
        <form name="table1" action="UploadResult.jsp" id="table" method="get">
            <br><br><br><br>  <br><br><br><br>
            <table cellpadding="5" id=selection>
               <tr id="top"></tr>
                
                <tr>
                    <td>
                 <center><b><label>Select Year</label></b></center>
                    </td><td>
                        <select name="year">
                            <option value="fy">First</option>
                            <option value="sy">Second</option>
                            <option value="ty">Third</option>
                        </select>
                        
                    </td>
                </tr>
               <tr>
                    <td>
                 <center><b><label>Select semester</label></b></center>
                    </td><td>
                        <select name="sem">
                            <option value="1">First Half</option>
                            <option value="2">Second Half</option>
                            
                        </select>
                        
                    </td>
                </tr>
                <tr>
                <td >
                <input type="button" id="result" onclick="uploadResult()" value="Upload Result">
                    </td>
                <td >
                <input type="button" id="viewresult" onclick="viewResult()" value="View Result">
                    </td>    
                </tr>
                <tr id="bottom"></tr>
            </table>
        </form>
     
       
        <br>
        <br>
        <br>
        <br>
        </center>
     <script>
           if(sessionStorage.getItem('admin')==1)
       {
          
           document.getElementById('result').style.display='none';
          
       }
    </script>
</body>
</html>
