

<%@page import="Connection.DB"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="suntile.jpg">
      
        <%
            String id=request.getParameter("id");
        try
        {
    DB db= new DB();
int i=db.Insert("update user set status='0' where id='"+id+"'");
response.sendRedirect("Blocked.jsp");
        }
catch(Exception e)
        {
    e.printStackTrace();
    }
        
        %>
           
    </body>
</html>
