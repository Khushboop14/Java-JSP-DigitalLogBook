<%@include file="Top.jsp"%>
<%@page import= "java.sql.DriverManager" %>
<%@page import= "java.sql.PreparedStatement"%>
<%@page import= "java.sql.Connection,java.util.ArrayList,java.sql.ResultSet"%>
<html>
    <style>
        
        body{
            background-repeat:no-repeat;
            background-size: 130%;
            background-position: center;
            width: 100%;
            font-size: 18px;
            }
                           
                .formeles2{
                font-size: 25px;
                background-color: black;
            color:white
            }
         
            .formeles{
                font-size: 25px;
                background-color: white;
            color:black
            }
            
    </style>
 <%
String button=request.getParameter("btn");
ArrayList list1=new ArrayList();    
ArrayList list2=new ArrayList();
ArrayList list3=new ArrayList();
ArrayList list4=new ArrayList();
ArrayList list5=new ArrayList();
float totalPrice=0.0f;
if(button!=null && button.equalsIgnoreCase("DONE"))
{

String name=request.getParameter("clientname");
    String product=request.getParameter("product");
    String quantity=request.getParameter("quantity");
    String price=request.getParameter("price");
    totalPrice=(Float.parseFloat(price)*Float.parseFloat(quantity));
out.println(totalPrice);
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");  
     
    PreparedStatement st = con.prepareStatement("insert into ordertable values(?,?,?,?,?)");

    st.setString(1,name);
    st.setString(2,product);
    st.setString(3,quantity);
    st.setString(4,price);
    st.setString(5,totalPrice+"");
    st.executeUpdate();

response.sendRedirect("addOrder.jsp");
    }
    
    %>
    
 <body background = "backfinal.jpg ">
        
        <div width="50%">
            <form action="">
        <table  align=left border = '0' style ="text-align:center; color:white;
         border-radius:20px ; margin-top:-30px;border:inset" align='centre' cellspacing='50'>
                

            <tr>
            <th class="formeles2">CLIENT NAME</th>
            <td><input type="text" name="clientname"></td>
            </tr>
            <tr>
            <th class="formeles2">PRODUCT</th>
                        <td class="formeles"><select name='product' >
                                <%
                                ArrayList pro=new ArrayList();
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");  
                                PreparedStatement st = con.prepareStatement("select * from producttable");
                               ResultSet rs1= st.executeQuery();
                               while(rs1.next())
                                {
                                    pro.add(rs1.getString(1));
                                }
                                for(int i=0;i<pro.size();i++)
                                {
                                %>
                               <option value="<%= pro.get(i) %>"><%= pro.get(i) %></option>
                               %>
                    </td>                  
                </select>

            </tr>
            <tr>
            <th class="formeles2">QUANTITY</th>
            <td><input type="number"  name="quantity" min="1" max="5"></td>
            </tr>
            
            <tr>
            <th class="formeles2">PRICE</th>
            <td><input type="number"  name="price" min="1" max="100"></td>
            </tr>
            <tr>
            <th class="formeles2">TOTAL</th>
            <td><font color="black">    <%=totalPrice%></font></td>
            </tr>
         
                 
            <td >
                     <input type='SUBMIT' value='DONE'  style="width:150px; height: 40px;border-radius:30px;
                           background-color:black; color:white;border:outset; border-color:white" name="btn">
                     
                </td>

            </td>
            
        </tr>
        
</table>        
        </form>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");  

    PreparedStatement st1 = con1.prepareStatement("select * from ordertable");
ResultSet rs =st1.executeQuery();
while(rs.next())
{
list1.add(rs.getString(1));
list2.add(rs.getString(2));
list3.add(rs.getString(3));
list4.add(rs.getString(4));
list5.add(rs.getString(5));
    }


%>            
      
             <table  align=left border = '0' style ="text-align:center; color:white;
         border-radius:20px ; margin-top:-30px;border:inset" align='centre' cellspacing='50'>
       
                 <tr>
                     <td class="formeles2">CLIENT NAME</td>
                     <td class="formeles2">PRODUCT</td>
                     <td class="formeles2">QUANTITY</td>
                     <td class="formeles2">PRICE</td>
                     <td class="formeles2">TOTAL</td>
                 </tr> 
                 <%
                 for(int j=0;j<list1.size();j++)
                 {
                 %>
                 <tr align="center">
                     <td><font color=black><%=list1.get(j)%></font></td>
                     <td><font color=black><%=list2.get(j)%></font></td>
                     <td><font color=black><%=list3.get(j)%></font></td>
                     <td><font color=black><%=list4.get(j)%></font></td>
                     <td><font color=black><%=list5.get(j)%></font></td>
                     
                 </tr>
                 <%}%>
</table>        
       
           
        </div>
                
    </body>
</html>
