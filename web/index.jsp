
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            ::-webkit-input-placeholder
            {
                text-align: center;
            }
            #login
            {
                width:80%;
                height:29px;               
                background: rgba(56,66,108,1);
                color:white;
                box-shadow: 2px 2px 2px black;
            }
            #select
            {
                width:80%;               
                height:28px;               
                text-align-last: center;
                color:grey;
                border-color: grey;
                box-shadow: 2px 2px 2px grey;               
                border-radius: 5px ;
            }
            input{
                width:80%;
                height:30px;
                box-shadow: 2px 2px 2px grey;
                border-bottom-color: grey;
                border-right-color: grey;
                border-width: 1px 1px 1px 1px;
                border-radius: 5px ;
                text-align: center;
            }
            body
            {
                background: rgba(17,166,137,1) ;
            }
            table{
                width:350px;               
                background-color: rgba(255,255,255,0.4); 
                border-radius: 10px ;
            }
            #top
            {
                height:20px;
            }
            #bottom
            {
                height:20px;
            }
            label{               
                color:rgba(39,39,39,1);
            }
            input[type="radio"]{
                content:url('images/unchecked.png');
                width:30px;
                height:30px;
                -webkit-appearance: none;
                box-shadow: 0px 0px 0px grey;
                border-width: 0px 0px 0px 0px;
                border-radius: 0px ;
            }
            input[type="radio"]:checked
            {
                content: url('images/checked.png');
            }
            #select_course{
                display: block;
            }
            #Reg{
                display: block;
            }

        </style>
    </head>
    <body >
        <script type="text/javascript">
            sessionStorage.setItem('visit',0);
            sessionStorage.setItem('opened_once',1);
            function validate()
            {
                if(document.getElementById('usernm').value.length==0||document.getElementById('ps').value.length==0)
                {
                    alert("Please Enter Details");
                }
                else
                {
                    f.submit();
                }
                
            }
            
            function hideSelect(){
                document.getElementById('select').style.display = 'none';
            }
            function showSelect(){
                document.getElementById('select').style.display = 'block';
            }
        </script>
        <br>
        <br>
        <br>
        <br>
    <center>
        <img src="images/logo.png" width="100" height="100">

        <br><br><br>
        <br>    
        <form name="f" action='Login' method='post'>
            <table cellpadding="5" >
                <tr id="top"></tr>
                <tr>
                    <td><center><label><input  type="radio" id="r1" name="AF" value="Admin"  onclick="hideSelect()">Admin</label></center></td>
                    <td><center><label><input  type="radio" id="r2" name="AF"  value="Faculty"  checked="checked" onclick="showSelect()">Faculty</label></center></td>
                    <td><center><label><input  type="radio" id="r3" name="AF" value="Student"  onclick="showSelect()">Student</label></center></td>
                </tr>
                <tr>                     
                    <td colspan="3"><center><input type="text" id="usernm" name="username" placeholder="UserName"></center></td>
                </tr>
                <tr>                    
                    <td colspan="3"><center><input type="password" id="ps" name="ps" placeholder="Password"></center></td>
                <tr>
                    <td colspan="3" >
                <center id="select_course">                    

                    <select name=select id="select">

                        <option value="IT">MSC-IT </option>
                        <option value="CS">MSC-CS </option>

                    </select>
                </center>

                </td>
                </tr>
                <tr>
                <center>
                    <td  colspan="3">
                    <center> <input type="button" onclick="validate()" id="login" value="Login"></center></center>  </td></tr>
           
                <tr id="bottom"></tr>
            </table>
            </form>

    </center>
</body>
</html>
