<%
    response.addHeader("Pragma","no-Cache"); //universal Browser
    response.addHeader("Cache-Control","no-store"); //manage history
    response.setHeader("Pragma","no-Cache"); 
    response.setHeader("Cache-Control","no-store");
    
   String name = (String)session.getAttribute("CALL");
   if(name==null)
   {
    response.sendRedirect("newjsp.jsp");
   }
    if(session==null)
   {
    response.sendRedirect("newjsp.jsp");
   }
 %>
