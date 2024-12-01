<%@include file="AfterLoginPage.jsp" %>
<html>  
   <div>
        <form action='UserFeedbackCode.jsp'>
        <table border = '0' style ="text-align:center; color:white;
         border-radius:20px ; margin-top:-30px;border:inset" align='center' cellspacing='20'> 
            <tr>

                <td  style="font-family: arial; font-size:  "><h1>FEEDBACK FORM </h1> </td>

            </tr>
            
            <tr>
                <td class="formeles">NAME </td>
            </tr>
            
             <tr>
                 <td> <input type="text" name="name" style="width: 300px;height: 40px"> </td>
            </tr>
                  
            <tr>
                <td class="formeles">FEEDBACK</td>
            </tr>
            
             <tr>
                 <td> <input type="text" name="feedback" style="width: 300px;height: 40px"> </td>
            </tr>
            
           
             <tr>
              <td> <input type='submit' value='SEND FEEDBACK' style="width:150px; height: 40px;border-radius:30px;
                     background-color:black; color:white;border:outset; border-color:white"></td>
            </tr>
          </table> 
        </form>
       </div>
    </body>
</html>

