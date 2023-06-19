<%@page import="Connection.DB"%>
.............................................................................000

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %> 
<HTML>
    <HEAD>
  
  
 </HEAD>
 
 <BODY>
 <br><br><br><br><br>
 <table width="250px" align="center" bgcolor="#CDFFFF" border=0 style="border:1px solid;">
<%

 String userid=request.getParameter("userid").trim();
		String role=request.getParameter("role").trim();
                String client=request.getParameter("client").trim();
		String password=request.getParameter("password").trim();
	Statement st;
	System.out.println(userid+","+role+","+client+","+password);
    try {
       DB db= new DB();
	    
	   
	     String qry="select * from user where id='"+userid+"' and pass = '"+password+"' and role = '"+role+"' and app = '"+client+"'";
           

	
        ResultSet  rs = db.Select(qry);
	   if(rs.next())
		{
		 System.out.println("****");
		response.sendRedirect("search.jsp");
		
	}
    else{
   response.sendRedirect("ack.jsp");
    }}
	catch (Exception e) {
      e.printStackTrace();
    }
	





%>

 </table> 
 </BODY>
</html>
