<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
    <%@page import="org.mis.ConnectionProvider" %>
    <%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="javax.servlet.http.HttpSession" %>

    <jsp:include page="header.jsp"/>
<!DOCTYPE html>
<html>
	<head>
		<title>BBB.Home</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"> 
		<meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        
        <style>
        	.shop-cards {
			    padding: 40px;
			    display: flex;
			    flex-wrap: wrap;
			    justify-content: space-evenly;
			    background-color: #e79e59;
			}
			.shop-sec {
			    padding: 10px;
			    display: flex;
			    flex-wrap: wrap;
			    justify-content: space-evenly;
			    background-color: #e79e59;
			}
			
			.box {
			    height: 500px;
			    width: 23%;
			    background-color: white;
			    padding: 20px 0px 15px;
			    margin-top: 5px;
			}
			
			.box-img {
			    height: 300px;
			    background-size: cover;
			}
			
			.box-content {
			    margin-left: 1rem;
			    margin-right: 1rem;
			    margin-top: 1rem;
			    margin-bottom: 1rem;
			}
			.box-content p{
			    color: #007185;
			}
			.box-content span{
				color: gray;
			}
			#car1{
			    height: 350px; /* Set the desired height for the carousel */
			    width: 30vw;
			}
			
			.carousel-inner {
			    max-height: 350px; /* Set the maximum height for the inner content */
			}
			
			.carousel-item img {
			    /*object-fit: cover; /* Ensure the image covers the entire carousel item */
			    height: 350px;
			    width: 25vw; /* Make sure the image doesn't exceed the carousel height */
			}
			.nav-item li{
				list-style: none;
			}
		</style>
	</head>
	<body>
	   <h1>Welcome to brew with books!</h1>
	   <div class="shop-sec">
	   		<div class="carousel">
        		<div id="car1" class="carousel slide">
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#car1" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#car1" data-bs-slide-to="1" aria-label="Slide 2"></button>
              <button type="button" data-bs-target="#car1" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="images/coffee2.jpg" class="d-block w-100" alt="cf1">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Latte</h5>
                  <p>Start Your Day Right!</p>
                </div>
              </div>
              <div class="carousel-item">
                <img src="images/coffee3.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Coffee Delight</h5>
                  <p>Coffee makes everything possible.</p>
                </div>
              </div>
              <div class="carousel-item">
                <img src="images/coffee6.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Hot Chocolate</h5>
                  <p>Doing justice to the beans!</p>
                </div>
              </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#car1" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#car1" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>
          
    </div>
    
    
    <div class="carousel">
        <div id="car1" class="carousel slide">
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#car2" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#car2" data-bs-slide-to="1" aria-label="Slide 2"></button>
              <button type="button" data-bs-target="#car2" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="images/coffee.jpg" class="d-block w-100" alt="cf1">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Coffee Delight</h5>
                  <p>Coffee makes everything possible.</p>
                </div>
              </div>
              <div class="carousel-item">
                <img src="images/coffee.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Second slide label</h5>
                  <p>Some representative placeholder content for the second slide.</p>
                </div>
              </div>
              <div class="carousel-item">
                <img src="images/coffee2.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Third slide label</h5>
                  <p>Some representative placeholder content for the third slide.</p>
                </div>
              </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#car2" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#car2" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>
          
    </div>
    
    
    <div class="carousel">
        <div id="car1" class="carousel slide">
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#car3" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#car3" data-bs-slide-to="1" aria-label="Slide 2"></button>
              <button type="button" data-bs-target="#car3" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="images/coffee3.jpg" class="d-block w-100" alt="cf1">
                <div class="carousel-caption d-none d-md-block">
                 <h5>Hot Chocolate</h5>
                  <p>Doing justice to the beans!</p>
                </div>
              </div>
              <div class="carousel-item">
                <img src="images/coffee3.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Second slide label</h5>
                  <p>Some representative placeholder content for the second slide.</p>
                </div>
              </div>
              <div class="carousel-item">
                <img src="images/coffee3.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Third slide label</h5>
                  <p>Some representative placeholder content for the third slide.</p>
                </div>
              </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#car3" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#car3" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>
          
    </div>
	   </div>
	   
	   <div class="shop-cards">
        <div class="box">
            <div class="box-content">
                <h2>Mocha</h2>
                <div class="box-img" style="background-image: url('images/coffee7.jpg');"></div>
                <form action="#" method="#">
                        <!-- Hidden fields to store product details -->
                        <input type="hidden" name="productId" value="#"/>
                        <input type="hidden" name="productName" value="Cappucino"/>
                        <input type="hidden" name="price" value="300"/>
                        <input type="hidden" name="image" value="box52_image.jpeg"/>
                        
                        <!-- Input fields for user to input quantity and submit the form -->
                        <!-- <label for="quantity">Quantity: </label>-->
                        <input type="hidden" id="quantity" name="quantity" min="1" required>
                                                <br>
                        <input type="submit" value="60% Off" class="btn btn-outline-secondary"></button>
                    </form>
            </div>
        </div>
       <div class="box">
            <div class="box-content">
                <h2>Latte</h2>
                <div class="box-img" style="background-image: url('images/coffee4.jpg');"></div>
                <form action="#" method="#">
                        <!-- Hidden fields to store product details -->
                        <input type="hidden" name="productId" value="#"/>
                        <input type="hidden" name="productName" value="Cappucino"/>
                        <input type="hidden" name="price" value="300"/>
                        <input type="hidden" name="image" value="box52_image.jpeg"/>
                        
                        <!-- Input fields for user to input quantity and submit the form -->
                        <!-- <label for="quantity">Quantity: </label>-->
                        <input type="hidden" id="quantity" name="quantity" min="1" required>
                                                <br>
                        <input type="submit" value="20% Off" class="btn btn-outline-secondary"></button>
                    </form>
            </div>
        </div>
        <div class="box">
            <div class="box-content">
                <h2>Cappucinos</h2>
                <div class="box-img" style="background-image: url('images/coffee3.jpg');"></div>
                <form action="#" method="#">
                        <!-- Hidden fields to store product details -->
                        <input type="hidden" name="productId" value="#"/>
                        <input type="hidden" name="productName" value="Cappucino"/>
                        <input type="hidden" name="price" value="300"/>
                        <input type="hidden" name="image" value="box52_image.jpeg"/>
                        
                        <!-- Input fields for user to input quantity and submit the form -->
                        <!-- <label for="quantity">Quantity: </label>-->
                        <input type="hidden" id="quantity" name="quantity" min="1" required>
                                                <br>
                        <input type="submit" value="10% Off" class="btn btn-outline-secondary"></button>
                    </form>
            </div>
        </div>
        
        <div class="box">
            <div class="box-content">
                <h2>Cappucinos</h2>
                <div class="box-img" style="background-image: url('images/coffee6.jpg');"></div>
                <form action="#" method="#">
                        <!-- Hidden fields to store product details -->
                        <input type="hidden" name="productId" value="#"/>
                        <input type="hidden" name="productName" value="Cappucino"/>
                        <input type="hidden" name="price" value="300"/>
                        <input type="hidden" name="image" value="box52_image.jpeg"/>
                        
                        <!-- Input fields for user to input quantity and submit the form -->
                        <!-- <label for="quantity">Quantity: </label>-->
                        <input type="hidden" id="quantity" name="quantity" min="1" required>
                                                <br>
                        <input type="submit" value="2% Off" class="btn btn-outline-secondary"></button>
                    </form>
            </div>
        </div>
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
       %>
        <div class="box">
            <div class="box-content">
                <h2><%=ProductName %></h2>
                <div class="box-img" style="background-image: url('images/<%=Image%>');"></div>
                <form action="AddToCart" method="post">
                        <!-- Hidden fields to store product details --><label for="prod_id">Price&nbsp:Rs.<%=Price %> </label>
                        <input type="hidden" name="productId" value="<%=ProductId %>"/>
                        <input type="hidden" name="productName" value="Cappucino"/>
                        <input type="hidden" name="price" value="300"/>
                        <input type="hidden" name="image" value="box52_image.jpeg"/>
                        
                        <!-- Input fields for user to input quantity and submit the form -->
                        <!-- <label for="quantity">Quantity: </label>-->
                        <input type="hidden" id="quantity" name="quantity" min="1" required>
                                                <br>
                        <input type="submit" value="Add To Cart" class="btn btn-outline-secondary"></button>
                    </form>
                    <!--           order now -->
                    <form action="Ordernow" method="post">
                        <!-- Hidden fields to store product details -->
                        <input type="hidden" name="productId" value="<%=ProductId %>"/>
                        <input type="hidden" name="productName" value="Cappucino"/>
                        <input type="hidden" name="price" value="300"/>
                        <input type="hidden" name="image" value="box52_image.jpeg"/>
                        
                        <!-- Input fields for user to input quantity and submit the form -->
                        <!-- <label for="quantity">Quantity: </label>-->
                        <input type="hidden" id="quantity" name="quantity" min="1" required>
                                                
                     <input type="submit" value="order Now" class="btn btn-outline-secondary">
                    </form>
            </div>
        </div>
    
       
       <%}
}catch (Exception e) {}%> 

        
       </div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</html>
<jsp:include page="footer.jsp" />

