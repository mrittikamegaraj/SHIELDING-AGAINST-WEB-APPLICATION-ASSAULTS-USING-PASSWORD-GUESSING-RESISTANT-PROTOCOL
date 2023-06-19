
<%@page import="Connection.DB"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
String Query=request.getParameter("Query");
String user=request.getParameter("user");

		String ip=request.getParameter("ip");
                System.out.println("***"+ip+","+Query+","+user);
                if(user != null){
	Statement st;

    try {
     DB db= new DB();

	     String qry="select * from user where id='"+user+"' ";

      
	   ResultSet  rs = db.Select(qry);
	  while(rs.next())
		{
System.out.println("**********");
               if(rs.getString("ip").equals(ip))
                   {
		response.sendRedirect("contex.jsp");
                       }
	
    else{
               ArrayList arrayList = new ArrayList();

    //Add elements to Arraylist
    arrayList.add("struct.jsp");
    arrayList.add("struct.jsp");
   

    Collections.shuffle(arrayList);
    response.sendRedirect(arrayList.get(1).toString());
    }}}
	catch (Exception e) {
      e.printStackTrace();
    }}
                else{
          response.sendRedirect("form.jsp");

         }
%>
    </body>
</html>
