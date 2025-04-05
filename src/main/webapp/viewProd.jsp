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

 <h2><center>Product List</center></h2><hr>


	<div class="table-responsive">
    <table class="table table-striped table-bordered table-hover table-condensed" width="80%" align="center">
        <tr>

            <th><center>ProductId</center></th>
            <th><center>ProductName</center></th>
            <th><center>Catagory</center></th>
            <th><center>Image</center></th>
            <th><center>Quantity</center></th>
            <th><center>Price</center></th>
            </tr>
       
                      
<% 
String ProductId = null;
String ProductName=null;
String Category = null;
String Image=null;
int Quantity=0;
double Price=0;
Connection conn = null;
PreparedStatement pstm = null;
ResultSet rs = null;
try {
conn= ConnectionProvider.createC();
pstm = conn.prepareStatement("select * from product");
rs = pstm.executeQuery();

while (rs.next()) {
ProductId=rs.getString(1);
ProductName=rs.getString(2);
Category=rs.getString(3);
Image=rs.getString(4);
Quantity=rs.getInt(5);
Price=rs.getDouble(6);

out.println("<tr>");


out.println("<td>");
out.println(ProductId);
out.println("</td>");

out.println("<td>");
out.println(ProductName);
out.println("</td>");

out.println("<td>");
out.println(Category);
out.println("</td>");


out.println("<td>");
out.println(Image);
out.println("</td>");

out.println("<td>");
out.println(Quantity);
out.println("</td>");

out.println("<td>");
out.println(Price);
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