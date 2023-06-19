

<%@page import="Connection.DB"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%
            String password = request.getParameter("password");
           
          
            try {
                 DB db= new DB();
                int i =db.Insert("update user set pwd='"+ password + "' where id='"+session.getAttribute("username")+"' ");
                System.out.println("i"+i);     
                if(i==1)
                    response.sendRedirect("encrypt.jsp?password="+password);
            } catch (Exception e) {
                e.printStackTrace();
            }
%>




