

<%@page import="java.net.InetAddress"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <script>
     
     
     function validateTime() {
var userid=document.getElementById("userid").value;
var role=document.getElementById("role").value;
var client=document.getElementById("client").value;
var data=document.getElementById("data").value;
 var obj=document.getElementById("obj").value;
var password=document.getElementById("password").value;

if(userid===""){    
    alert("Error: userid cannot be blank!");
    return false;
}
if(role===""){    
    alert("Error: role cannot be blank!");
    return false;
}
if(client===""){    
    alert("Error: client cannot be blank!");
    return false;
}
if(data===""){    
    alert("Error: database cannot be blank!");
    return false;
}
if(obj===""){    
    alert("Error: Objectives cannot be blank!");
    return false;
}
if(password===""){    
    alert("Error: pwd cannot be blank!");
    return false;
}
else{return  true;}

}
 </script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Intrusion Detection  -PLC Technologies.in</title>
<meta name="keywords" content="free css template, liquid contact form, CSS, HTML" />
<meta name="description" content="Liquid Contact Page - free CSS template provided by templatemo.com for anyone." />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="css/jquery.ennui.contentslider.css" rel="stylesheet" type="text/css" media="screen,projection" />
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
</head>
<body> 
<div id="templatemo_header_wrapper">
    <div id="templatemo_header">
        <div id="site_title">
            <a href="">Intrusion Detection System</a>
        </div> <!-- end of site_title -->
        <div id="templatemo_menu">
          <ul>
                <li><a href="Search_Check.jsp" class="current">Home</a></li>
                <li class="last"><a href="signout.jsp" class="current">LogOut</a></li>
            </ul>
            
            
            
            <div class="cleaner"></div>    	
        </div>
        <div class="cleaner"></div>
    </div> <!-- end of header -->
</div>
<div id="templatemo_wrapper">    
    
    <div id="templatemo_content_top"></div>
    
    <div id="templatemo_content">
    	<div id="templatemo_main_content"  style="height: 500px">
        	
    
       <div style="margin-left:120px" style="height: 500px">
             <font size = 4> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Your IP   :      <%=InetAddress.getLocalHost().getHostAddress()  %> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    Date   : <%= new java.util.Date() %></font>
<center>
   
    <form method="POST" action="inside_2.jsp" onsubmit="return validateTime();">
    <br><br><b>Please Enter the YourID , Role and Client </b><BR><br>
    <table><tr><td>   <b>  User ID</b>    </td><td>      <input id="userid" type="text" name="userid" size="30" style="border-style: ridge; border-width: 1" tabindex="1"></td></tr></tr></td></tr><tr></tr><tr></tr><tr></tr><tr></tr>
     <tr><td>  <b> Role    </b>  </td><td>         <input type="text" id="role"name="role" size="30" style="border-style: ridge; border-width: 1" tabindex="1"></td></tr></tr></td></tr><tr></tr><tr></tr><tr></tr><tr></tr>
    <tr><td>  <b> Application  </b>   </td><td>         <input type="text" id="client" name="client" size="30" style="border-style: ridge; border-width: 1" tabindex="1"></td></tr></tr></td></tr><tr></tr><tr></tr><tr></tr><tr></tr>
     <tr><td>  <b> Database  </b>  </td><td>        <input type="text" id="data" name="data" size="30" style="border-style: ridge; border-width: 1" tabindex="1"></td></tr></tr></td></tr><tr></tr><tr></tr><tr></tr><tr></tr>
    <tr><td>  <b> Objectives  </b>   </td><td>         <input type="text" id="obj" name="obj" size="30" style="border-style: ridge; border-width: 1" tabindex="1"></td></tr></tr></td></tr><tr></tr><tr></tr><tr></tr><tr></tr>
 <tr><td>  <b>  Password  </b>  </td><td><input type="password" id="password" name="password" size="30" style="border-style: ridge; border-width: 1" tabindex="2"></td></tr></tr></td></tr><tr></tr><tr></tr><tr></tr><tr></tr>
 <tr></tr><tr></tr><tr><td>   <input type="hidden" name="Query" value="<%= session.getAttribute("Query") %>" /></td>

    
     <td> &nbsp&nbsp&nbsp <input type="submit" value="       Login        " tabindex="3" name="command"></td></tr></table>

    </form>
       
       </div>   
             
        
       
        
        <div class="clear"></div> 
        	
        </div>
        
        
        
        <div class="cleaner"></div>
    </div>
    <div id="templatemo_content_bottom"></div>
    
    <div id="templatemo_footer">

        Copyright © 2048 <a href="#">Company Name</a> | Designed by <a href="http://www.templatemo.com" target="_parent">Free CSS Templates</a>
    
    </div> <!-- end of templatemo_footer -->
     
</div> <!-- end of wrapper -->
</body>
</html>

