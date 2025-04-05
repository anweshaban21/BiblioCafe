<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<% String str = (String)session.getAttribute("EMAIL"); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bibliocafe</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
        integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
    		*{
		    margin: 0;
		    font-family: Arial;
		    border: border-box;
		    
		}
		.navbar{
		    height: 60px;
		    background-color: rgb(128, 70, 13);
		    color: white;
		    display: flex;
		    align-items: center;
		    justify-content: space-evenly;
		    display: flex;
		}
		
		.nav-logo{
		    height: 50px;
		    width: 113px;
		}
		
		.logo{
		    background-image: url("logo1.png");
		    background-size: cover;
		    border-radius: 5px;
		    height: 100%;
		    width: 80%;
		    margin-left: 20px;
		}
		
		.nav-search {
		    display: flex;
		    justify-content: space-evenly;
		    background-color: yellow;
		    width: 620px;
		    height: 40px;
		    border-radius: 4px;
		}
		
		.nav-link{
	        text-decoration: none;
	        color: white;
	      }
		
		.nav-search:hover{
		    border: solid 2px orange;
		}
		/*.nav-signin-border:hover, .nav-login-border:hover{
			border: solid 2px white;
			border-radius: 4px;
		}*/
		
		.search-select {
		    background-color: #f3f3f3;
		    width: 80px;
		    text-align: center;
		    border-top-left-radius: 4px;
		    border-bottom-left-radius: 4px;
		    border: none;
		}
		
		.search-input {
		    width: 100%;
		    font-size: 1rem;
		    border: none;
		}
		
		.search-icon{
		    width: 45px;
		    display: flex;
		    justify-content: center;
		    align-items: center;
		    font-size: 1.2rem;
		    background-color: #febd68;
		    border-top-right-radius: 4px;
		    border-bottom-right-radius: 4px;
		    color: #0f1111;
		}
		
		.nav-cart i{
		    font-size: 38px;
		    height: 30px;
		    margin-right: 20px;
		}
		
		.nav-cart {
		    font-size: 0.85rem;
		    font-weight: 700px;
		    margin-right: 20px;
		}
		/* panel */
		.panel {
		    height: 50px;
		    background-color: rgb(52, 29, 5);
		    display: flex;
		    color: white;
		    align-items: center;
		    justify-content: space-evenly;
		}
		.panel-ops p {
		    display: flex;
		    margin-left: 15px;
		}
		
		.panel-ops {
		    width: 70%;
		    font-size: 0.85rem;
		}
		
		.panel-deals {
		    font-size: 0.9rem;
		    font-weight: 700;
		}
        .search-btn {
            cursor: pointer;
        }
    </style>
</head>
<body>
    <header>
        <div class="navbar">
            <div class="nav-logo">
                <div class="logo" style="background-image: url('images/logo.jpg');"></div>
            </div>

        <div class="nav-search">
        <select class="search-select" id="searchDropdown" onchange="updatePlaceholder()">
	    <option value="">All</option>
	    <option value="Home">Home</option>
        <option value="Deals">Deals</option>
        <option value="About">About</option>
        <option value="Contact">Contact</option>
	    <!-- Add other options here -->
		</select>
        
    <input id="searchInput" placeholder="Search Bibliocafe" class="search-input">
    <div class="search-icon">
        <i class="fa-solid fa-magnifying-glass search-btn" onclick="searchPage()"></i>
    </div>
</div>

         <div class="nav-signin-border">
                <p><span><a href="registration.jsp"><button type="button">Sign up</button></a></span></p>
            </div>
            <div class="nav-login-border">
                <p><span><a href="login.jsp"><button type="button">Login</button></a></span></p>
            </div>
    

            <div class="nav-cart">
                <a href="cart.jsp"><button type="button"><i class="fa-solid fa-cart-shopping"></i></button></a>
                Cart
            </div>
        </div>

        <div class="panel">
            
            <div class="panel-ops">
                    <p><a class="nav-link" href="category.jsp">Today's Deals</a>&nbsp&nbsp&nbsp<a class="nav-link" href="ContactUs.jsp">About</a></p>
               
                         
            </div>
            <div class="panel-deals">
                <a href="https://manybooks.net/" class="nav-link">Check out our specialities!</a>
            </div>
        </div>
    </header>

    <script>
    function searchPage() {
        var selectedOption = document.getElementById('searchSelect').value;
        var searchInput = document.getElementById('searchInput').value;

        // Mapping of options to JSP pages
        var pageMapping = {
            'Home': 'index.jsp',
            'Deals': 'category.jsp',
            'About': 'aboutus.jsp',
            'Contact': 'Contact_us.jsp',
            'All': 'User_Menu_Choose.jsp' // Adjust this based on your project structure
        };
        var pageName = pageMapping[selectedOption];

        // Append the searchInput as a query parameter (optional)
        var queryParams = searchInput ? "?query=" + encodeURIComponent(searchInput) : "";

        // Construct the URL and redirect
        var url = pageName + queryParams;
        window.location.href = url;
    }
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
<script>
    function updatePlaceholder() {
        var dropdown = document.getElementById("searchDropdown");
        var selectedOption = dropdown.options[dropdown.selectedIndex].text;
        var searchInput = document.querySelector(".search-input");
        searchInput.placeholder = "Search " + selectedOption;
    }
</script>
<script>
    function searchPage() {
        var selectedOption = document.getElementById('searchDropdown').value;
        var searchInput = document.getElementById('searchInput').value;

        // Mapping of options to JSP pages
        var pageMapping = {
            'Home': 'index.jsp',
            'Deals': 'category.jsp',
            'About': 'aboutus.jsp',
            'Contact': 'Contact_us.jsp',
            'All': 'User_Menu_Choose.jsp' // Adjust this based on your project structure
        };
        var pageName = pageMapping[selectedOption];

        // Append the searchInput as a query parameter (optional)
        var queryParams = searchInput ? "?query=" + encodeURIComponent(searchInput) : "";

        // Construct the URL and redirect
        var url = pageName + queryParams;
        window.location.href = url;
    }
</script>

</html>