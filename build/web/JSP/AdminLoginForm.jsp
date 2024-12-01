<html>
    <style>
        .tabtheme{
        width:100%;
        height:50px;
        font-family:arial;
        font-weight:bold;
        font-size: 25px;
        color:black;
        text-align:center;
        margin-top:50px;
        border-radius:30px;
        background-color:rgba(122,69,85,0.5);
        }
        .formeles{
                font-size: 25px;
            }
          body{
            background-size: 100%;
            background-position: center;
            width: 100%;
            font-size: 18px;
            background-repeat: no-repeat;
            }  
    </style>
    
    <body background = "blur-coffee.webp">;

        <div >
        <form action='CheckAdminLoginCode.jsp'>
        <table border = '0' style ="text-align:center; color:white;
         border-radius:10px ; margin-top:50px;border:inset" align='center' cellspacing='10'>
            <tr>
                <td class="formeles" >ADMIN LOGIN</td>
            </tr>
            
            <tr>
                <td class="formeles">ID</td>
            </tr>
            
            <tr>
                <td>
                    <input type='text' name ='id' style="width: 300px;height: 40px">
                </td>
            </tr>
            
            <tr>
                <td class="formeles">PASSWORD</td>
            </tr>
            
            <tr>
                <td><input type='password'name ='pass' style="width: 300px;height: 40px"></td>
            </tr>
            
            <tr>
                <td colspan="2" >
                   <input type='submit' value='LOGIN' style="width:150px; height: 40px;border-radius:30px;
                    background-color:black; color:white;border:outset; border-color:white">        
                </td>
           </tr>
          </table>    
        </form>
       </div>
    </body>
</html>