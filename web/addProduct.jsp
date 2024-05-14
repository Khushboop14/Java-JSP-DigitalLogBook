<%@include file = "Top.jsp"%>
<html>
    <style>
            .formeles{
                font-size: 25px;
            }
            .coltheme:hover{
                background-color:white;
                color:black;
                border-radius:40px;
                
            }
    </style>
    
        <div >
        <form action='addProductCode.jsp'>
        <table border = '0' style ="text-align:center; color:white;
         border-radius:20px ; margin-top:-30px;border:inset" align='center' cellspacing='20'>
            <tr>
                <td class="formeles" style="background-color:black">ADD/REMOVE PRODUCT</td>
            </tr>
            
            <tr>
                <td class="formeles" style="background-color:rgba(0,0,0,0.3)">PRODUCT NAME</td>
            </tr>
            
            <tr>
                <td>
                    <input type='text' name ='pro' style="width: 300px;height: 40px">
                </td>
            </tr>
            
            <tr>
                <td class="formeles"style="background-color:rgba(0,0,0,0.3)">PRICE</td>
            </tr>
            
            <tr>
                <td><input type='password'name ='price' style="width: 300px;height: 40px"></td>
            </tr>
            
            <tr>
                <td colspan="2" >
                     <input type='submit' value='ADD' style="width:150px; height: 40px;border-radius:30px;
                           background-color:black; color:white;border:outset; border-color:white">
                    <input type='submit' value='REMOVE' style="width:150px; height: 40px;border-radius:30px;
                           background-color:black; color:white;border:outset; border-color:white">
                </td>
           </tr>

          </table>    
        </form>
       </div>
    </body>
</html>