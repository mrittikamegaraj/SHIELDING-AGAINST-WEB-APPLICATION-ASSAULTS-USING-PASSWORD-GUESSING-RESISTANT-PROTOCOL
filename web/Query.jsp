

<%@page import="Connection.DB"%>
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
var password=document.getElementById("password").value;
var role=document.getElementById("role").value;
var app=document.getElementById("app").value;
var ip=document.getElementById("ip").value;
var day=document.getElementById("day").value;
var data=document.getElementById("data").value;
var schema=document.getElementById("schema").value;
var obj=document.getElementById("obj").value;
var cmd=document.getElementById("cmd").value;
var att=document.getElementById("att").value;

 var ipadd = /^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$/.test(ip);
 
if(userid===""){    
    alert("Error: uid cannot be blank!");
    return false;
}
if(password===""){    
    alert("Error: pwd cannot be blank!");
    return false;
}
if(role===""){    
    alert("Error: Role cannot be blank!");
    return false;
}
if(app===""){    
    alert("Error: Application cannot be blank!");
    return false;
}
if(ip===""){    
    alert("Error: IP cannot be blank!");
    return false;
}
if(!ipadd){
    alert("Error: InCorrect IP Format!");
  return false;  
}
if(day===""){    
    alert("Error: Shift cannot be blank!");
    return false;
}

if(data===""){    
    alert("Error: Database cannot be blank!");
    return false;
}
if(schema===""){    
    alert("Error: schema cannot be blank!");
    return false;
}
if(obj===""){    
    alert("Error: Objective cannot be blank!");
    return false;
}
if(cmd===""){    
    alert("Error: Commend cannot be blank!");
    return false;
}

if(att===""){    
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
                <li><a href="adminreg.jsp" class="current">Home</a></li>
                <li><a href="Blocked.jsp" class="current">Blocked Users</a></li>
                <li><a href="Query.jsp" class="current">Query's</a></li>
                <li><a href="Blocked_1.jsp" class="current">Block</a></li>
                <li class="last"><a href="signout.jsp" class="current">LogOut</a></li>
                <li class="last"><a href="Blocked_2.jsp" class="current">UnBlock-URL</a></li>
                 
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
        	
      <div style="overflow: auto;height: 400px;width: 700px"> 
                             <table border="1">
                                    <thead><th>U_Id</th> <th>Query</th> <th>IP</th><th>Time</th></thead>
		<%
			 try {
               String qry="SELECT * FROM record";
             DB db= new DB();    
              ResultSet  rs = db.Select(qry);
               while(rs.next())
                    {
                 
                  %>
                  <tr>
                      
                      <td><%=rs.getString(2)%></td><td><%=rs.getString(3)%></td><td><%=rs.getString(4)%></td><td><%=rs.getString(5)%></td>
                  </tr>
                            
                     
                     <%     }
       }
            catch (Exception e) {
          out.println(e);
        }

    %>  
                             </table>
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

