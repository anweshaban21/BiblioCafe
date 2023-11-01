<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%String str=(String)session.getAttribute("EMAIL"); %>
<!DOCTYPE html>  
<html lang="en">  
<head>  
  <title>Bootstrap Example</title>  
  <meta charset="utf-8">  
  <meta name="viewport" content="width=device-width, initial-scale=1">  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>  
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>  
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script> 
</head>  
<body style="height:1500px">  
<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">  
  <a class="navbar-brand" href="#"><img src="images/shopinglogo.gif" width="100" height="50"> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp </a>  
  <ul class="navbar-nav navbar-right">  
   <li class="nav-item">  
      <a class="nav-link" href="home_content.jsp">   Home</a>  
    </li>  
    <li class="nav-item">  
      <a class="nav-link" href="#">About</a>  
    </li> 
     <li class="nav-item">  
      <a class="nav-link" href="#">Contact   
      </a></li>
       <li class="nav-item">  
      <a class="nav-link" href="">Catagories   &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
       </a>  
    </li>  
      
    </li>  
    <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Search for services!" aria-label="Search">
          <button class="btn btn-outline-light" type="submit">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
            </svg>
          </button>
        </form>
        
        <li class="nav-item">  
      <a class="nav-link" href="#">Hello: <%=str %>  
      </a></li>
      <%if(str!=null)
      {%>
    	 <li class="nav-item">  
      <a class="nav-link" href="logout.jsp">Logout</a>  
    </li> 
    <%} else
    { %> 
      
    	
        <li class="nav-item">  
      <a class="nav-link" href="registration.jsp">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
       
      Sign_Up</a>  
    </li> 
    
    <li class="nav-item">  
      <a class="nav-link" href="login.jsp">Login </a>  
    </li> 
    <%} %>
  </ul>  
</nav>  

</body>  
</html>  