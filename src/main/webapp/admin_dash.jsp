<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,innitial-scale=1.0">
<title>Admin Dashboard</title>
<link rel="icon" href="images/logo.jpg">

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<style>
 @import url('https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800,900&display=swap');
*{                    
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}
section{
    position: relative;
    width: 100%;
    min-height: 100vh;
    padding: 50px 100px;
    display: flex;
    justify-content: center;
    align-items: center;
    background: #D0B49F;
    flex-direction: column;
}
header{
    position:absolute;
    top: 0;
    left: 0;
    width: 100%;
    padding: 50px 100px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}
header .logo{
    position: relative;
    max-width: 150px; 
    color: brown; font-size: 32px; font-weight: 550;
    text-decoration: none;
}
header ul{
    position: relative;
    display:flex;
}
header ul li{
    list-style: none;
}
header ul li a{
    display: inline-block;
    color: #333;
    font-weight: 400;
    margin-left: 60px;
    text-decoration: none;
    color: #2F435A;
}
header ul li a:hover{
    background: #AB6B51;
    padding: 10px;
    border-radius: 5%;
}
.container{
    padding: 2px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    margin-top: 2%;
}
.container h2{
    font-size: 42px;
    font-weight: 600;
    color: #2F435A;
    position: relative;
}
.container .status{
    width: 60%;
   
    position: relative;
    margin-top: 5%;
    margin-left: 25px;
    margin-right: 25px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}
.container .status .additem,
.container .status .viewitem,
.container .status .vieworder,
.container .status .viewfeedback{
    width: 500px;
    height: 150px;
    background-color: #AB6B51;
    color: #2F435A;
    padding: 4px;
    font-weight: 300;
    text-decoration: none;
    margin-left: 5%;
    margin-right: 5%;
    position: relative;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    border-radius: 8%;
}
.status a{
    text-decoration: none;
    color: #2F435A;
    font-size: 18px;
    text-align: center;
}
.status a:hover{
    font-size: 20px;
}
@media (max-width: 991px)
{
    .container{
        min-width: 60%;
        margin-top: 12%;
    }
    .container .status{
        flex-direction: column;
    }
}
</style>
</head>             
<body>
    <section>
        <header>
        <a href="#" class="logo" >BiblioCafe</a>
            <ul>
                <li><a href="#">Dashboard</a></li>
                <li><a href="addProd.jsp">Add Product</a></li>
                <li><a href="viewProd.jsp">View Products</a></li>
                <li><a href="LogOut">Log out</a></li>
            </ul>
        </header>
        <div class="container">
            <h2>Admin Dashboard</h2>
            <div class="status">

                    
                    <div class="additem"><b><a href="addProd.jsp">Add Product</a></b>  <br></div>

                    
                    <div class="viewitem"><b><a href="viewProd.jsp">View Product</a></b> <br>  </div>

                    
                    <div class="vieworder"> <b><a href="viewUser.jsp">View User</a></b> </div>
                   
                    
                    <div class="viewfeedback"><b><a href="#">View Feedback</a></b> </div>
            </div>
        </div>
    </section>
</body>
</html>
<jsp:include page="footer.jsp"/>