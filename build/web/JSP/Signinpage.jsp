
<%@include file="SecurityGaurd.jsp" %>

<html>
    <style>

            .formeles{
                font-size: 25px;
                color: white;
                
            }
    </style>
 
    <body background = "blur-coffee.webp">;
        
        
        <div>
        <form action='InsertAuthCode.jsp'>
        <table border = '0' style ="text-align:center; color:white;
         border-radius:20px ; margin-top:-30px;border:inset" align='center' cellspacing='1'>;
            <tr>
                <td class="formeles" style="color:black;" ><h3>USER SIGN UP<h3></td>
            </tr>
            
             <tr>
                 <td class="formeles">NAME</td>
            </tr>
                  
            <tr>
                <td>
                    <input type='text' name ='name' style="width: 300px;height: 40px ; background-color: whitesmoke">
                </td>
            </tr>
            
            <tr>
                <td class="formeles">ID</td>
            </tr>
            
            <tr>
                <td>
                    <input type='text' name ='id' style="width: 300px;height: 40px; background-color: whitesmoke">
                </td>
            </tr>
            
            <tr>
                <td class="formeles">PASSWORD</td>
            </tr>
            
            <tr>
                <td><input type='password'name ='pass' style="width: 300px;height: 40px ; background-color: whitesmoke"></td>
            </tr>

            
            <tr>
                <td class="formeles">CONTACT</td>
            </tr>
            
            
            <tr>
                <td>
                    <input type='number' name ='cont' style="width: 300px;height: 40px; background-color: whitesmoke">
                </td>
            </tr>
            
                        <tr>
                <td class="formeles">EMAIL</td>
            </tr>
            
            <tr>
                <td><input type='email' name ='mail' style="width: 300px;height: 40px; background-color: whitesmoke"></td>
            </tr>

            <tr align='center'>
                <td colspan="2" >
                     <input type='submit' value='SIGNUP' style="width:170px; height: 40px;border-radius:30px;
                        background-color:black; color:white;border:outset; border-color:white">
                </td>
           </tr>
          </table>    
        </form>
       </div>
    </body>
</html>