<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="org.mis.ConnectionProvider" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

        <meta name="viewport" content="width=device-width, initial-scale=1">


</head>
<body>

 <h2><center>Customer List</center></h2><hr>


	<div class="table-responsive">
    <table class="table table-striped table-bordered table-hover table-condensed" width="80%" align="center">
        <tr>

            <th><center>CustomerId</center></th>
            <th><center>Name</center></th>
            <th><center>Email</center></th>
            <th><center>Password</center></th>
            <th><center>Contact</center></th>
            <th><center>Address</center></th>
            </tr>
       
                      
<% 
int cId = 0;
String name=null;
String email = null;
String pass=null;
String cont=null;
String add=null;
Connection conn = null;
PreparedStatement pstm = null;
ResultSet rs = null;
try {
conn= ConnectionProvider.createC();
pstm = conn.prepareStatement("select * from customers");
rs = pstm.executeQuery();

while (rs.next()) {
cId=rs.getInt(1);
name=rs.getString(2);
email=rs.getString(3);
pass=rs.getString(4);
cont=rs.getString(5);
add=rs.getString(6);


out.println("<tr>");


out.println("<td>");
out.println(cId);
out.println("</td>");

out.println("<td>");
out.println(name);
out.println("</td>");

out.println("<td>");
out.println(email);
out.println("</td>");


out.println("<td>");
out.println(pass);
out.println("</td>");

out.println("<td>");
out.println(cont);
out.println("</td>");

out.println("<td>");
out.println(add);
out.println("</td>");

out.println("<td>");
out.println("<input type='submit' value='Update' class='btn btn-danger'> ");

out.println("</td>");
out.println("<td>");
out.println("<input type='submit' value='Delete' class='btn btn-danger'> ");

out.println("</td>");
out.println("</tr>");
}

} catch (Exception e) {}
%>
         
        
    

    </table>
</div>
</center>



</body>
</html>