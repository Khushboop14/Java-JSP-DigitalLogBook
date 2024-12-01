<!-- include file = top.jsp , line includes the content of the "Top.jsp" file in this JSP page.-->
<%@include file= "Top.jsp" %>
<%--<%@include file="SecurityGaurd.jsp" %>--%>
<html>
    <title> DigitalLogBook </title>
    <style>
        .formeles{
            font-size: 25px;
        }

    </style>

    <!--    <body background = "blur-coffee.webp";>-->

    <div>
        <!--     form action is use to redirect to next page-->
        <form action='CheckAuthCode.jsp'> 
            <table border = '0' style ="text-align:center; color:white;
                   border-radius:20px ; margin-top:-40px;border:inset" align='center' cellspacing='20'>
                <tr>
                    <td class="formeles" >USER LOGIN</td>
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
                        <a href ="Signinpage.html"  style="color:blue" > NEWUSER </a>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</html>