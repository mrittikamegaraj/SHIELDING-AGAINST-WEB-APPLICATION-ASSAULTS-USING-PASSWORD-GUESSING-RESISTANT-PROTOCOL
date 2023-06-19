
<%@page import="Connection.DB"%>
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
  String usrid=request.getParameter("userid").trim();
		String passwd=request.getParameter("password").trim();
	Statement st;
    try {
    DB db= new DB();
if(usrid.compareToIgnoreCase("admin")==0 && passwd.compareToIgnoreCase("admin")==0)
       {
     session.setAttribute("username",usrid);
     response.sendRedirect("adminreg.jsp");
}
     else
                 {
	     String qry="select * from user where id='"+usrid+"' and pass = '"+passwd+"'";

     
	   ResultSet  rs = db.Select(qry);
	   if(rs.next())
		{
                    if(rs.getInt("status")==0){
                     response.sendRedirect("index.jsp?msg="+"User Blocked");
                    }
		 session.setAttribute("username",usrid);
		response.sendRedirect("Search_Check.jsp?id="+usrid);

	}
    else{
                

    Integer hitsCount =
      (Integer)session.getAttribute("hitCounter");
    if( hitsCount ==null || hitsCount == 0 ){
       /* First visit */

       hitsCount = 1;
    }else{
       /* return visit */

       hitsCount += 1;
       
    }

    session.setAttribute("hitCounter", hitsCount);
    if(hitsCount>3){


    response.sendRedirect("index_1.jsp?msg="+"Incorrect ID or Password");}
    else{
    response.sendRedirect("index.jsp?msg="+"Incorrect ID or Password");
    }
    }
                 }
         }
	catch (Exception e) {
      e.printStackTrace();
    }

%>

 </table> 
 </BODY>
</html>
