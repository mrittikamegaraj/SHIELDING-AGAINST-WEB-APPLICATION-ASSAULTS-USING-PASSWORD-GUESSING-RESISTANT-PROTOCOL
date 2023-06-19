

<%@page import="Connection.DB"%>
<%@page import="java.sql.*"%>
<%@page import="java.net.InetAddress"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Intrusion Detection</title>


<meta name="keywords" content="free css templates, liquid, 3d slider, piecemaker, CSS, HTML" />
<meta name="description" content="Liquid is a free website template provided by templatemo.com that can be used for any purpose." />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/swfobject.js"></script>
<script type="text/javascript">

      var flashvars = {};
      flashvars.cssSource = "piecemaker.css";
      flashvars.xmlSource = "photo_list.xml";
		
      var params = {};
      params.play = "true";
      params.menu = "false";
      params.scale = "showall";
      params.wmode = "transparent";
      params.allowfullscreen = "true";
      params.allowscriptaccess = "always";
      params.allownetworking = "all";
	  
      swfobject.embedSWF('piecemaker.swf', 'piecemaker', '940', '420', '10', null, flashvars,    
      params, null);
    
</script>
<script>
     function validateTime() {
var id=document.getElementById("userid").value;
var pass=document.getElementById("password").value;

 

if(id===""){    
    alert("Error: uid cannot be blank!");
    return false;
}
if(pass===""){    
    alert("Error: pwd cannot be blank!");
    return false;
}
if(!ValidCaptcha()){
    
     alert("Entered Captcha is Wrong ");
 return false; 
    
}


else{return  true;}

}
</script>
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
   <script type="text/javascript">

   //Created / Generates the captcha function    
    function DrawCaptcha()
    {
        var a = Math.ceil(Math.random() * 10)+ '';
        var b = Math.ceil(Math.random() * 10)+ '';       
        var c = Math.ceil(Math.random() * 10)+ '';  
        var d = Math.ceil(Math.random() * 10)+ '';  
        var e = Math.ceil(Math.random() * 10)+ '';  
        var f = Math.ceil(Math.random() * 10)+ '';  
        var g = Math.ceil(Math.random() * 10)+ '';  
        var code = a + ' ' + b + ' ' + ' ' + c + ' ' + d + ' ' + e + ' '+ f + ' ' + g;
        document.getElementById("txtCaptcha").value = code
    }

    // Validate the Entered input aganist the generated security code function   
    function ValidCaptcha(){
        var str1 = removeSpaces(document.getElementById('txtCaptcha').value);
        var str2 = removeSpaces(document.getElementById('txtInput').value);
        if (str1 == str2) return true;        
        return false;
        
    }

    // Remove the spaces from the entered and generated code
    function removeSpaces(string)
    {
        return string.split(' ').join('');
    }
    
 
    </script>

<script>
       

    var hours =00;

    var minutes =01;

    var seconds =00;
    var dis_sec = '00';
    var dis_min = '00';


    function display() {

        if ((minutes == 00) && (seconds == 00) &&(hours ==00)) {
           
           
          
          // alert("Time Out")
             
                window.location.href="Ip_Block.jsp";
           
            
                    
        }
        else
            if (seconds <= 00) {

                if ((hours == 00) && (minutes == 00))

                    seconds =00;

                else {

                    seconds = 60;

                    minutes -= 01;

                }

            }

        if (minutes <= 00) {

            if ((hours < 00) && (minutes < 00)) {

                hours = minutes = seconds = 00;

            }

            else {

                if ((hours == 00) && (minutes == 00))

                    hours = minutes = 00;

                if ((hours > 00) && (minutes < 00)) {

                    minutes = 59;

                    hours -= 01;

                }

            }

        }

        if ((minutes <= -1) || (hours <= -1)) {

            if (hours <= -1) {

                minutes = 00;

                hours += 01;

            }

            else

                minutes -= 1;

            seconds = 00;

            minutes += 01;

        }

        else

            if (seconds >00)

                seconds -= 01;

        if (minutes < 10) {

            dis_min = "0" +minutes+ "";

        }
        else 
        {
         dis_min = minutes;
        }

        if (seconds < 10) {
            dis_sec = "0"+seconds+"";
        }
        else
        {
          dis_sec = seconds;
        }

     

document.getElementById('Timer').value = "0" + hours + ":" + dis_min+ ":" + dis_sec;

       

        window.setTimeout("display()", 1000);
  
    }


function Next()
{
   // alert("next")
    document.login_frm.action="Test_Rider";
    document.login_frm.submit();
   // return true;
}


document.onkeydown=function(e) {
    
    var event = window.event || e;
    if (event.keyCode == 116) {
        event.keyCode = 0;
        alert("This action is not allowed");
        return false;
    }
}
</script>
</head>
<body onload="DrawCaptcha();display();">
<div id="templatemo_header_wrapper">
	<div id="templatemo_header">
        <div id="site_title">
            <a href="">Intrusion Detection System </a>
        </div> <!-- end of site_title -->
        <div id="templatemo_menu">
            <ul>
                <li><a href="index.jsp" class="current">Home</a></li>
                <li><a href="">Register</a></li>
                <li><a href="">Profile</a></li>
                <li><a href="">Blog</a></li>
                <li class="last"><a href="">Contact</a></li>
            </ul>
            
       <%
    String ip= request.getRemoteHost();  
			 try {
         
                 String qry="SELECT * FROM block where ip='"+ip+"'";
DB db= new DB();
              ResultSet  rs = db.Select(qry);
               if(rs.next())
                    {
                 response.sendRedirect("Error.jsp");
                      }
       }
            catch (Exception e) {
          out.println(e);
        }

    %>     
            <div class="cleaner"></div>    	
        </div>
        <div class="cleaner"></div>
    </div> <!-- end of header -->
    <div class="cleaner"></div>
</div>
    
<div id="templatemo_wrapper">

    <div id="templatemo_flash">
   		<div id="piecemaker">
        	  </div>
    </div> <!-- end of flash -->
    
    <div id="templatemo_content_top"></div>
    <div id="templatemo_content">
    	<div id="templatemo_main_content">
      
         
        	<div class="content_box">
                    
                    <div style="margin-left: 150px">
                         <input type="text" value=""style=" border: none; background-color:#cccccc; font-size: 16px; font-weight: bold;"value=""name="Timer"id="Timer"/>

                   
                        <form method="POST" name="form1"action="login.jsp" onSubmit="return validateTime();ValidCaptcha()">
                         
                            <br><br><b>USER LOGIN</b><BR><br>
    <table><tr><td>   <b>  User ID</b>    </td><td>       <input type="text" id="userid"name="userid" size="21" style="border-style: ridge; border-width: 1" tabindex="1"></td></tr>
      <tr><td>  <b>  Password  </b>  </td><td><input type="password" id="password"name="password" size="21" style="border-style: ridge; border-width: 1" tabindex="2"></td></tr>
      <tr></tr><tr></tr><tr><tr></tr><tr></tr><tr><tr></tr><tr></tr><tr></tr><tr></tr><tr><tr></tr><tr></tr><tr><tr></tr><tr></tr><tr><tr>
                              <tr>  <td><b>Captcha:</b></td>      <td>
        <input type="text" id="txtCaptcha" readonly=""
            style="background-image:url(1.JPG); text-align:center; border:none;
            font-weight:bold; font-family:Modern;height: 50px;font-size: 20px" />
        <input type="button" id="btnrefresh" value="Refresh" onclick="DrawCaptcha();" />
                                  </td></tr>
                              <tr>
                                  <td><b>Type:</b></td>
    <td>
        <input type="text" id="txtInput"/>    
    </td>
</tr><tr>
                              <td>
                               
      
                                  <input style="color: #398a00" type="submit" value="       Login        " tabindex="3" name="command"></td>
          <td><input style="color: #398a00" type="reset" value="       Reset        " tabindex="3" name="command"></td></tr>
                          </table>
</form>
                                <br>
                                    <% String msg= request.getParameter("msg") ;                 %>
    <%
if(msg != null){
%>
<lable><pre> <b><%=msg%></b> </lable>
<%}%>
</br></div>
   
               </div>
            
            <div class="content_box last_box">
            	 </div>

        </div>
        
        <div id="templatemo_sidebar">   
        
        	
            <div class="sidebar_box">
            	
                <blockquote>
                   
                </blockquote>
            </div>
            
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

