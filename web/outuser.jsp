
<%@page import="Connection.DB"%>
<%@ page import="java.sql.*" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%

 String id=request.getParameter("id");
 String Database=request.getParameter("Database");
		String Schema=request.getParameter("Schema");
                String type=request.getParameter("type");
		String Cmd=request.getParameter("Cmd");
                String Attribute=request.getParameter("Attribute");
	Statement st;

    try {
        DB db= new DB();


	     String qry="select * from user where id='"+id+"'and data='"+Database+"' and shema='"+Schema+"' and obj='"+type+"' and cmd='"+Cmd+"' and att='"+Attribute+"'";



     
	   ResultSet  rs = db.Select(qry);
	   if(rs.next())
		{

		response.sendRedirect("search.jsp");

	}
    else{
response.sendRedirect("ack.jsp");
    }}
	catch (Exception e) {
      e.printStackTrace();
    }






%>
