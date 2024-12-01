<%@page import= "java.sql.DriverManager" %>
<%@page import= "java.sql.PreparedStatement"%>
<%@page import= "java.sql.Connection"%>
<%@page import= "java.sql.ResultSet,java.util.ArrayList"%>

<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    PreparedStatement st = con.prepareStatement("select * from feedbacktable");
    ResultSet rs = st.executeQuery();
 
     ArrayList list1= new ArrayList();
          ArrayList list2= new ArrayList();
      
          while(rs.next()){
   list1.add(rs.getString(1));
   list2.add(rs.getString(2));
    }
%>
<style>
     body{
            background-repeat:no-repeat;
            background-size: 100%;
            background-position: center;
            width: 100%;
            font-size: 18px;
            }
    
    .tabtheme{
        width:50%;
        height:50px;
        font-family:arial;
        font-weight:bold;
        font-size: 19px;
        color:black;
        text-align:center;
        margin-top:70px;
        margin-left: 300px;
        border-radius:20px;
        background-color: buttonhighlight;
        background-size:  cover;
            }
           
            .coltheme{
             
                color:black;
                align-content: center;
              
            }
</style>

<div style="width:100% ;height:300px;margin-top: 50px;font-size: 20px; background-size: 0px" >>
     <body background = "blur-coffee.webp" >
<table width="40%"cellpadding="7px" align="left"  class="tabtheme" border="0.9" cellspacing="7px" >
   <tr> <caption> FEEDBACK FORM</caption></tr>
     <thread>       
    <tr align="centre">
        <th > NAME</th>
        <th > FEEDBACK</th>
    </tr>
     </thread>

    <%
        for(int i=0;i<list1.size();i++){
        
    %>
    <tr align="centre">
        <td><%=list1.get(i) %></td>  
        <td><%=list2.get(i) %></td>
        </tr>
        <%}%>
        
        </table>
</div>
  <%@page import ="java.util.Date"%>
  <%@page import ="java.text.DateFormat"%>
  
  <%
   Date date= new Date();
   DateFormat df= DateFormat.getDateInstance(DateFormat.FULL);
  %>  
