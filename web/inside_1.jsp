<%@page import="Connection.DB"%>
    .............................................................................000

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %> 
<html>
    <HEAD>
  
  
 </HEAD>

 <BODY>
 <br><br><br><br><br>
 <table width="250px" align="center" bgcolor="#CDFFFF" border=0 style="border:1px solid;">
<%

 String userid=request.getParameter("userid");
		String att=request.getParameter("att");
                String schema=request.getParameter("schema");
		String password=request.getParameter("password");
	Statement st;
	
    try {
      DB db= new DB();

	    
	   
	     String qry="select * from user where id='"+userid+"' and pass = '"+password+"' and att = '"+att+"'and shema = '"+schema+"'";
           

	
    
	   ResultSet  rs = db.Select(qry);
	   if(rs.next())
		{
		 
		response.sendRedirect("search.jsp");
		
	}
    else{
   response.sendRedirect("ack_1.jsp");
    }}
	catch (Exception e) {
      e.printStackTrace();
    }
	





%>

 </table> 
 </BODY>
</html>
