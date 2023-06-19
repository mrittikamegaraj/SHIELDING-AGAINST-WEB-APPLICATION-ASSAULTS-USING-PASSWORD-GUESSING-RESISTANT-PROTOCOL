

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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
    <script>
     
     
     function validateTime() {
var Query=document.getElementById("Query").value;

 

if(Query===""){    
    alert("Error:  cannot Request Empty Query!");
    return false;
}



else{return  true;}

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
    	<div id="templatemo_main_content">
        	
        <div style="margin-left:120px;">
            <form name="form" action="" onsubmit="return validateTime();">
                <input  type="text" name="Query" id="Query"value="" style="height: 30px; width:600px;font-size: 20px;font-style: inherit;font-family: serif;color: #663300" />
                            <input type="submit" value="Request"  class="query" name="Button" /><br>
                              </form></div><br><br><br>
            <center>
                <div style="height: 500px;">
            <%

                                        String sqlQuery = request.getParameter("Query");
                                      
 Class.forName("com.mysql.jdbc.Driver");
                                       System.out.println(sqlQuery);
                                   if(sqlQuery!=null){
                                        try{
                                        Connection con3 = DriverManager.getConnection("jdbc:mysql://localhost:3306/vino","root","admin"
             + "");

   
	     String qry3="insert into record values('0','"+session.getAttribute("username")+"','"+sqlQuery+"','"+request.getRemoteHost() +"','"+new java.util.Date()+"')";

        Statement st3 = con3.createStatement();
	 int i = st3.executeUpdate(qry3);}catch (Exception e) {
                                                out.println("Error in Index 1" + e);
                                            }
	
                                        }
                                       
                                        
                                        if (sqlQuery != null && sqlQuery != "" ) {
                                            if(sqlQuery.contains("insert")){
                                            response.sendRedirect("call.jsp");}
                                            Connection conn = null;
                                            Statement st = null;
                                            ResultSet rs = null;
                                            String dbName = null;
                                            if (sqlQuery.contains("use")) {
                                                String[] setDbQry = sqlQuery.split(" ");
                                                dbName = setDbQry[1].trim();
                                                //out.print("in use" + dbName);
                                                session.setAttribute("dbName", dbName);
                                                out.print("in use " + dbName);
                                            }
                                            dbName = ((String) session.getAttribute("dbName") == null) ? "" : (String) session.getAttribute("dbName");
                                           System.out.print("Database name is" + dbName.trim());
                                           

                                           
                                            try {
                                                
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+dbName,"root","admin"
             + "");
System.out.println("connected");
                                                if (!sqlQuery.contains("use") && !sqlQuery.contains("insert") ) {
                                                    st = con.createStatement();
                                                    rs = st.executeQuery(sqlQuery);
                                                     //st.executeUpdate(sqlQuery);
System.out.println("*****");
                                                    java.sql.ResultSetMetaData rsmd = rs.getMetaData();

                                                    int columnCount = rsmd.getColumnCount();
                                                    String[] columnNames = new String[columnCount];
                                                    String result = "<div style='overflow:auto;height: 500px;width: 900px' class='datagrid'> <center><TABLE border=1>";
                                                    result += "<TR>";
                                                    for (int i = 1; i <= columnCount; i++) {
                                                        columnNames[i - 1] = rsmd.getColumnName(i).toUpperCase();
                                                        result += "<TH>" + columnNames[i - 1] + "</TH>";
                                                    }
                                                    result += "</TR>";
                                                    while (rs.next()) {

                                                        result += "<TR>";
                                                        for (int j = 1; j <= columnCount; j++) {
                                                            result += "<TD>" + rs.getString(j) + "</TD>";
                                                        }
                                                        result += "</TR>";
                                                    }
                                                    result += "</TABLE></div>";
                                                    out.print(result);
                                                    
                                                }

                                            } catch (Exception e) {
                                                out.println("Error in Index JSP" + e);
                                            }
                                        }


                            %>

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

