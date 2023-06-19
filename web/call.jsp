
<%@page import="java.net.InetAddress"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <SCRIPT LANGUAGE="JavaScript">
<!-- Begin
function getRandomNum(lbound, ubound) {
return (Math.floor(Math.random() * (ubound - lbound)) + lbound);
}
function getRandomChar(number, lower, upper, other, extra) {
var numberChars = "0123456789";
var lowerChars = "abcdefghijklmnopqrstuvwxyz";
var upperChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
var otherChars = "`~!@#$%^&*()-_=+[{]}\\|;:'\",<.>/? ";
var charSet = extra;
if (number == true)
charSet += numberChars;
if (lower == true)
charSet += lowerChars;
if (upper == true)
charSet += upperChars;
if (other == true)
charSet += otherChars;
return charSet.charAt(getRandomNum(0, charSet.length));
}
function getPassword(length, extraChars, firstNumber, firstLower, firstUpper, firstOther,
latterNumber, latterLower, latterUpper, latterOther) {

var rc = "";
if (length > 0)
rc = rc + getRandomChar(firstNumber, firstLower, firstUpper, firstOther, extraChars);
for (var idx = 1; idx < length; ++idx) {
rc = rc + getRandomChar(latterNumber, latterLower, latterUpper, latterOther, extraChars);
}
return rc;

}
// End -->
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
                <li><a href="" class="current">Company</a></li>
                <li><a href="" class="current">Portfolio</a></li>
                <li><a href="" class="current">Blog</a></li>
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
         <form action="doDebit.jsp" name="myform">
<table width=80% border=0>
<tr align=center>
<td>
  
<table border=0>
<tr>
<td>

</td>
<td>
<input type=hidden name=firstNumber checked>
<input type=hidden name=firstLower checked>
<input type=hidden name=firstUpper checked>
<input type=hidden name=firstOther>
</td>
</tr>
<tr>
<td>

</td>
<td>
<input type=checkbox name=latterNumber checked>
<input type=checkbox name=latterLower checked>
<input type=checkbox name=latterUpper checked>
<input type=checkbox name=latterOther>
</td>
</tr>
<tr>
<td>

</td>
<td>
    <input type=hidden name=passwordLength value="5" size=3>
</td>
</tr>
<tr>
<td>

</td>
<td>
<input type=hidden name=extraChars size=20>
</td>
</tr>
</table>
</td>
</tr>
<tr align=center>
<td>

<input type=text name=password size=20>
<br>
<input type=submit value="Generate password" onClick="document.myform.password.value =
getPassword(document.myform.passwordLength.value, document.myform.extraChars.value,
document.myform.firstNumber.checked, document.myform.firstLower.checked,
document.myform.firstUpper.checked, document.myform.firstOther.checked,
document.myform.latterNumber.checked, document.myform.latterLower.checked,
document.myform.latterUpper.checked, document.myform.latterOther.checked);">
</
</form></div>
</td>
</tr>
</table>
    </form>
       
       </div>   
             
        
       
        
        <div class="clear"></div> 
        	
        </div>
        
        
        
        <div class="cleaner"></div>
    </div>
    <div id="templatemo_content_bottom"></div>
    
    <div id="templatemo_footer">

        Copyright © 2048 <a href="#"> Company Name</a> | Designed by <a href="http://www.templatemo.com" target="_parent">Free CSS Templates</a>
    
    </div> <!-- end of templatemo_footer -->
     
</div> <!-- end of wrapper -->
</body>
</html>

