<!-- /  this is  user page after login form also-->
<%@include file="SecurityGaurd.jsp" %>
<%@include file="Top.jsp" %>
<html>
    <style>
        .tabtheme{
            width:100%;
            height:40px;
            font-family:arial;
            font-weight:bold;
            font-size: 25px;
            color:white;
            text-align:center;
            margin-top:40px;
            border-radius:30px;
            background-color:rgba(122,69,85,0.5);
        }
        body{

            background-size: 100%;
            background-position: center;
            width: 100%;
            font-size: 18px;
        }
        

        .coltheme:hover{
            background-color:white;
            color:black;
            border-radius:40px;

        }
    </style>
    
<body background = "istockphoto-645258164-612x612.jpg">
        <div>
            <form>
                <table border = '5' style ="text-align:center; color:white;
                       border-radius:25px ; margin-top:-30px;border:inset" align='left' cellspacing='30'>

                    <tr>
                        <td class="formeles" ><a href="usercomplainpage.jsp">COMPLAIN</a></td>
                    </tr>

                    <tr>
                        <td class="formeles" ><a href="userfeedbackpage.jsp">FEEDBACK</a></td>
                    </tr>

                    <tr>
                        <td class="formeles" ><a href="userinvoicepage.jsp">INVOICE</a></td>
                    </tr>


                    <tr>
                        <td class="formeles"><a href="userprofilepage.jsp">MY PROFILE</a> </td>
                    </tr>



                    <tr>
                        <td class="formeles"><a href="userorderhistorypage.jsp">ORDER HISTORY</a> </td>
                    </tr>


                    <tr>
                        <td class="formeles"><a href="userpaymentpage.jsp">PAYMENT</a></td>
                    </tr>


                    <tr>
                        <td class="coltheme"><a href="SessionDestroy.jsp">EXIT</a></td>  
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
