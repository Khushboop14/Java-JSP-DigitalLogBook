<%@include file = "AfterLoginPage.jsp" %>
<html>
        <div >
        <form action='UserComplainCode.jsp'>
        <table border = '0' style ="text-align:center; color:white;
         border-radius:0px ; margin-top:-30px;border:inset" align='center' cellspacing='10'> 
             <tr>
                <td  style="font-family: arial; font-size:  ">  <h1> COMPLAIN FORM <h1> 
                </td>
            </tr>
            
            <tr>
                <td class="formeles">NAME </td>
            </tr>
            
             <tr>
                 <td> <input type="text" name="name" style="width: 300px;height: 40px"> </td>
            </tr>
            
             <tr>
                <td class="formeles">CONTACT</td>
            </tr>
            
             <tr>
                 <td> <input type="text" name="contact" style="width: 300px;height: 40px"> </td>
            </tr>
            
            <tr>
                <td class="formeles">COMPLAIN</td>
            </tr>
            
             <tr>
                 <td> <input type="text" name="complain" style="width: 300px;height: 40px"> </td>
            </tr>
            
           
             <tr align="centre">
              <td collspan="2"> <input type='submit' value='SEND COMPLAIN' style="width:150px; height: 40px;border-radius:30px;
                     background-color:black; color:white;border:outset; border-color:white"></td>
            </tr>
          </table> 
        </form>
       </div>
    </body>
</html>

