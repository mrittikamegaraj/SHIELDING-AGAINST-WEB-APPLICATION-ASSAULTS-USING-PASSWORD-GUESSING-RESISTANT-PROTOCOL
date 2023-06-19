
<%@page import="Connection.DB"%>
<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%
    String pwd=request.getParameter("pwd");
		
	Statement st;
    try {
      DB db= new DB();


	     String qry="select * from user where id='"+session.getAttribute("username")+"' and pwd = '"+pwd+"'";

     
	   ResultSet  rs =db.Select(qry);
	   if(rs.next())
		{
		
		response.sendRedirect("search_4.jsp");

	}
    else{
    response.sendRedirect("password.jsp?msg="+"Incorrect ID or Password");
    }}
	catch (Exception e) {
      e.printStackTrace();
    }

%>
    </body>
</html>
