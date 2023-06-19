
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                String role=request.getParameter("role").trim();
                String app=request.getParameter("app").trim();
                String ip=request.getParameter("ip").trim();
                String time=request.getParameter("day").trim();
                String data=request.getParameter("data").trim();
                String schema=request.getParameter("schema").trim();
                String obj=request.getParameter("obj").trim();
                String cmd=request.getParameter("cmd").trim();
                String att=request.getParameter("att").trim();
	Statement st;
        Statement s1;
    try {
      Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vino","root","admin"
             + "");
 String qry1="Select * from user where id ='"+usrid+"'";

           s1 = con.createStatement();
               ResultSet  rstt = s1.executeQuery(qry1); 
              if(rstt.next())
                    {response.sendRedirect("adminreg.jsp?msg=User Name Already Exist");}
   
	     String qry="insert into user values('"+usrid+"','"+passwd+"','"+role+"','"+app+"','"+ip+"','"+time+"','"+data+"','"+schema+"','"+obj+"','"+cmd+"','"+att+"','oo','1')";

       st = con.createStatement();
	 int i = st.executeUpdate(qry);
	   if(i>0)
		{
		 session.setAttribute("username",usrid);
		response.sendRedirect("adminreg.jsp?msg=Successfully Saved");

	}
    else{
    response.sendRedirect("adminreg.jsp?msg=Not Saved");
    }}
         
	catch (Exception e) {
      e.printStackTrace();
    }

%>

 </table> 
 </BODY>
</html>
