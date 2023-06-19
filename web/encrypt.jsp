

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
var att=document.getElementById("att").value;
var schema=document.getElementById("schema").value;
var password=document.getElementById("password").value;
 

if(userid===""){    
    alert("Error: userid cannot be blank!");
    return false;
}
if(att===""){    
    alert("Error: att cannot be blank!");
    return false;
}
if(schema===""){    
    alert("Error: schema cannot be blank!");
    return false;
}
if(password===""){    
    alert("Error: pwd cannot be blank!");
    return false;
}

else{return  true;}

}
 </script>
    <script language="javascript" type="text/javascript">

//Amnite Productions
//New Ideas To Old Problems

function AcChars(){
   alert("Converted Characters:\n" +
   "   A-Z\n" +
   "   a-z\n" +
   "   0-9\n" +
   "   .!?\n" +
   "   <>/&#\n" +
   "   *All Characters Usable Just Not Converted.\n\n");
}

function Help(){
   alert("This code is meant only to encrypt information placed within the designated <div> tag. Scripts, CSS, and anything other than HTML or text have not been tested.\n" +
   "If having problems please check that you have used the correct <div> id. Then check and make sure you have the correct bookmark code. If a problem persists please contact me.");
}

function About(){
   alert("D1v1der 3ncrypt10n V1.5\n" +
   "Created By: Amnite\n" +
   "Created On: 08/29/09\n\n" +
   "To Be Used Only By Permission From Amnite Or Any Of His Underlying Personalities");
}

function Clear(){
   document.getElementById("CdInput").value = "Please Enter Code...";
   document.getElementById("CdOutput").value = "Encrypted Code...";
}

function Encrypt(){
   var UnEncCd = document.getElementById("CdInput").value;
   var EncCd = "";
   var CdComp
   var i,j;
   var LtrArr = new Array("A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9",".","!","?","<",">","/","&","#"," ");

   var EncArr = new Array("v","?","b","R","5","H","q","k","@","O","e","A","f","x","T","s","M","h","W","2","n","g","E","J","t","l","$","N","V","3"," ","Q","d","8","G","/",".","4","U","o","p","y","B","X","w","K","0","c","j","D","a","%","P","!","r","1","m","F","6","C","i","7","u","I","Z","S","9","z","L","Y","#");

   for(i=0;i<UnEncCd.length;i++){

      CdComp = UnEncCd.charAt(i);

      for(j=0;j<=70;j++){

         if(CdComp == LtrArr[j]){
            EncCd += EncArr[j];
            j = 70;
         }

         else if(CdComp != LtrArr && j == 70){
            EncCd += UnEncCd.charAt(i);
         }
      }
   }

   document.getElementById("CdOutput").value = EncCd;


}

function CrtBM(){

   var DivNm = prompt("Enter The Divider Id Your Code Will Be Located In","");

   alert("javascript:var EncDiv = document.getElementById('"+DivNm+"').innerHTML;var UnEncDiv = '';var i,j;var LtrComp;var EncArr = new Array('v','?','b','R','5','H','q','k','@','O','e','A','f','x','T','s','M','h','W','2','n','g','E','J','t','l','$','N','V','3',' ','Q','d','8','G','/','.','4','U','o','p','y','B','X','w','K','0','c','j','D','a','%','P','!','r','1','m','F','6','C','i','7','u','I','Z','S','9','z','L','Y','#');var UnEncArr = new Array('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9','.','!','?','<','>','/','&','#',' ');for(i=0;i<EncDiv.length;i++){LtrComp = EncDiv.charAt(i);for(j=0;j<=70;j++){if(LtrComp == EncArr[j]){UnEncDiv += UnEncArr[j];j = 70;}else if(LtrComp != EncArr && j == 70){UnEncDiv += EncDiv.charAt(i);}}}document.getElementById('"+DivNm+"').innerHTML = UnEncDiv;void(null);")

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
        	
    <% String password=request.getParameter("password"); %>
       <div style="margin-left:120px" style="height: 500px">
              <form action="mail">

<center>
    
     
<br><br>  <input type="text" id="CdInput" name="CdInput" value="<%=password %>" /><br><br>
      
     
     <input type="submit" value="Encrypt" onClick="Encrypt();"></input><br><br>
 <input type="text" id="CdOutput" name="CdInput1" value="" />
  <br>

   <p id=""></p>

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

