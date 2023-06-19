

<%@page import="java.net.InetAddress"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
     <script>
     
     
     function validateTime() {
var pwd=document.getElementById("pwd").value;

 

if(pwd===""){    
    alert("Error:  cannot Request Empty Query!");
    return false;
}



else{return  true;}

}
 </script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

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
                <li><a href="" class="current">Company</a></li>
                <li><a href="" class="current">Portfolio</a></li>
                <li><a href="decrypt.html" class="current">Decrypt</a></li>
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
          <div style="margin-left: 200px">
           <form action="pwdchk.jsp" onsubmit="return validateTime();">

                <input type="text"id="pwd" name="pwd" value="" />
                <input type="submit" value="ckeck" name="check" />
            </form>  
            </div>
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

