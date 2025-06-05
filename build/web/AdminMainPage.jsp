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
        body,html{
            margin:0 0 0 0;
            height:100%;
        }
       
        #top
        {
            width:100%;
            height:175px;
            background: cyan;
        }
       
       button
       {
          
           background: rgba(56,66,108,1);
           border:0px;
           color:white;
           border-left: 1px solid white;
           border-right:  1px solid white;
           width:19.5%;
           height:25%;
           border-radius: 10px;
           font-size:130%;
           font-family: serif;
       }
        #bottom
        {
            
            width:100%;
            height:100%; 
            padding: 0;
        }
        body{
            padding:0px;           
            overflow-x: hidden;   
            overflow-y:hidden;   
        }
        iframe
        {           
           
            height:76%;
            width:100%;
            overflow-x: hidden; 
            overflow-y:scroll; 

        }
        #logout{
            height:7%;
            position :fixed;
            right:5px;
            top:40px;
        }
        
    </style>
    
       
    </head>
     
    <body id="body1">
        <div id="top">
        
            <br>
            
            <center><img src="images/logo.png" alt="logo">
            </center>
             <button id="logout" onclick="logout()">LogOut</button>
               
                

            <br>
            <button id="home" onclick="home()">Home</button>
            <button id="Faculty" onclick="Faculty()">Add Faculty</button>
            <button id="attendance" onclick="Attendance()">Attendance</button>
            <button id="result" onclick="Result()">Result</button>  
            <button id="FeedBack" onclick="FeedBack()">FeedBack</button>
            
        </div>    
        <div id="bottom">
            <iframe src="Home.jsp" id="frame1"></iframe>
        </div>
        
         <script>
       
                  
      
        function select(str)
        {
            deselect();
            document.getElementById(str).style.background='#bb99dd';       //when button selected color became lavendar
            document.getElementById(str).style.color='red';                 //when button selected text-color became red
        }
        function deselect()
        {
            document.getElementById('home').style.background='rgba(56,66,108,1)';   //when home button deselected color changes to normal
            document.getElementById('home').style.color='white';
            document.getElementById('Faculty').style.background='rgba(56,66,108,1)'; //when upload button deselected color changes to normal
            document.getElementById('Faculty').style.color='white';
            document.getElementById('attendance').style.background='rgba(56,66,108,1)'; //when attendance button deselected color changes to normal
            document.getElementById('attendance').style.color='white';
            document.getElementById('result').style.background='rgba(56,66,108,1)';     //when home result deselected color changes to normal
            document.getElementById('result').style.color='white';
            document.getElementById('FeedBack').style.background='rgba(56,66,108,1)';
            document.getElementById('FeedBack').style.color='white';
        }
        function home()
        {
            select('home');
            document.getElementById('frame1').src="Home.jsp";
            
        }
        function Faculty()
        {
            select('Faculty');
            document.getElementById('frame1').src="Faculty.jsp";
        }
        function Attendance()
        {
            select('attendance');
            document.getElementById('frame1').src="Attendance.jsp";
        }
        function Result()
        {
            select('result');
             document.getElementById('frame1').src="Result.jsp";
        }
        function FeedBack()
        {
            select('FeedBack');
             document.getElementById('frame1').src="FeedBack.jsp";
        }
        function logout()
        {
           location.href="index.jsp";
           sessionStorage.setItem("visit",0);
            
        }
        home();   
    </script>

    </body>
</html>
