

<%@page import="java.net.InetAddress"%>
<%@page import="java.sql.*"%>
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
</head>
<body>
<div id="templatemo_header_wrapper">
	<div id="templatemo_header">
        <div id="site_title">
            <a href="">Intrusion Detection System </a>
        </div> <!-- end of site_title -->
        <div id="templatemo_menu">
            <ul>
                <li><a href="index.jsp" class="current">Home</a></li>
            
                <li><a href="">Profile</a></li>
                <li><a href="">Blog</a></li>
                <li class="last"><a href="">Contact</a></li>
            </ul>
            
           
            <div class="cleaner"></div>    	
        </div>
        <div class="cleaner"></div>
    </div> <!-- end of header -->
    <div class="cleaner"></div>
</div>
    <%
    String ip= request.getRemoteHost();  
			 try {
          Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vino","root","admin");

                 String qry="SELECT * FROM block where ip='"+ip+"'";

          Statement st = con.createStatement();
               ResultSet  rs = st.executeQuery(qry);
               if(rs.next())
                    {
                 response.sendRedirect("Error.jsp");
                      }
       }
            catch (Exception e) {
          out.println(e);
        }

    %>  
    
    %>
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
                    <form method="POST" name="form1"action="login.jsp" onSubmit="return validateTime();">
    <br><br><b>USER LOGIN</b><BR><br>
    <table><tr><td>   <b>  User ID</b>    </td><td>       <input type="text" id="userid"name="userid" size="21" style="border-style: ridge; border-width: 1" tabindex="1"></td></tr>
      <tr><td>  <b>  Password  </b>  </td><td><input type="password" id="password"name="password" size="21" style="border-style: ridge; border-width: 1" tabindex="2"></td></tr>
      <tr></tr><tr></tr><tr><tr></tr><tr></tr><tr><tr></tr><tr></tr><tr></tr><tr></tr><tr><tr></tr><tr></tr><tr><tr></tr><tr></tr><tr><tr><td>
      <input style="color: #398a00" type="submit" value="       Login        " tabindex="3" name="command"></td>
          <td><input style="color: #398a00" type="reset" value="       Reset        " tabindex="3" name="command"></td></tr></table>
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

