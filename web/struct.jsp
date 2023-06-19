

<%@page import="java.net.InetAddress"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <script>
     
     
     function validateTime() {
var id=document.getElementById("id").value;
var Database=document.getElementById("Database").value;
var Schema=document.getElementById("Schema").value;
var type=document.getElementById("type").value;
 var Cmd=document.getElementById("Cmd").value;
var Attribute=document.getElementById("Attribute").value;
 

if(id===""){    
    alert("Error: userid cannot be blank!");
    return false;
}
if(Database===""){    
    alert("Error: Database cannot be blank!");
    return false;
}
if(Schema===""){    
    alert("Error: Schema cannot be blank!");
    return false;
}
if(type===""){    
    alert("Error: type cannot be blank!");
    return false;
}
if(Cmd===""){    
    alert("Error: Commend cannot be blank!");
    return false;
}
if(Attribute===""){    
    alert("Error: Attribute cannot be blank!");
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
                
        <font size = 4> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Your IP   :<%=InetAddress.getLocalHost().getHostAddress()  %> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
    <form method="POST" action="outuser.jsp" onsubmit="return validateTime();">
    <br><br><b>Please Enter Database Details </b><BR><br>
    <table><tr><td>  <b> User id</b>    </td><td>       <input type="text" id="id"name="id" size="30" style="border-style: ridge; border-width: 1" tabindex="1"></td></tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>

    <tr><td>   <b>  Database</b>    </td><td>        <input type="text" id="Database" name="Database" size="30" style="border-style: ridge; border-width: 1" tabindex="1"></td></tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
     <tr><td>  <b> Schema   </b>  </td><td>          <input type="text" id="Schema" name="Schema" size="30" style="border-style: ridge; border-width: 1" tabindex="1"></td></tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
     <tr><td>  <b> Object type </b>   </td><td>          <input type="text" id="type" name="type" size="30" style="border-style: ridge; border-width: 1" tabindex="1"></td></tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
<tr><td>  <b> SQL Cmd </b>   </td><td>          <input type="text" id="Cmd" name="Cmd" size="30" style="border-style: ridge; border-width: 1" tabindex="1"></td></tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
 <tr><td>  <b> Attribute </b>   </td><td>        <input type="text" id="Attribute"name="Attribute" size="30" style="border-style: ridge; border-width: 1" tabindex="1"></td></tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>

    <td></td> <td> <input type="submit" value="      Verify        " tabindex="3" name="command"></td></tr>

    </table></form>
       
       </div>
             
        
       
        
        <div class="clear"></div> 
        	
        </div>
        
        
        
        <div class="cleaner"></div>
    </div>
    <div id="templatemo_content_bottom"></div>
    
    <div id="templatemo_footer">

        Copyright © 2048 <a href="#">Your Company Name</a> | Designed by <a href="http://www.templatemo.com" target="_parent">Free CSS Templates</a>
    
    </div> <!-- end of templatemo_footer -->
     
</div> <!-- end of wrapper -->
</body>
</html>

