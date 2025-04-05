<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Orders</title>
    <link rel="icon" href="/coffeeshop/image/logo.png">

    <link href='https://css.gg/check-o.css' rel='stylesheet'>
    <link href='https://css.gg/close-o.css' rel='stylesheet'>

    <style>
        @import url('https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800,900&display=swap');
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        section {
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

        header {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            padding: 40px 100px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        header .logo {
            position: relative;
            max-width: 150px;
            color: brown;
            font-size: 32px;
            font-weight: 550;
            text-decoration: none;
        }

        header ul {
            position: relative;
            display: flex;
        }

        header ul li {
            list-style: none;
        }

        header ul li a {
            display: inline-block;
            color: #333;
            font-weight: 400;
            margin-left: 60px;
            text-decoration: none;
            color: #2F435A;
        }

        header ul li a:hover {
            background: #AB6B51;
            padding: 10px;
            border-radius: 5%;
        }

        .container {
            padding: 2px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .container h2 {
            font-size: 36px;
            font-weight: 500;
            color: #2F435A;
            position: relative;
        }
		
        .container .table {
            margin-top: 10%;
            width: 90%;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .container .table table {
            position: relative;
            margin-top: 5%;
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        .container .table table td,
        .container .table table th {
            border: 1px solid #2F435A;
            padding: 8px;
            min-width: 150px;
        }

        .container .table table th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #AB6B51;
            color: #2F435A;
        }

        a:active {
            color: #AB6B51;
        }

        .btn {
            padding: 5px;
            font-size: 18px;
            background-color: chocolate;
            font-weight: 550;
            border-radius: 10px;
        }

        @media (max-width: 991px) {
            .container {
                min-width: 40%;
            }

            .container .table {
                min-width: 60%;
            }

            .container .add-form table {
                min-width: 60%;
            }
        }
    </style>
</head>

<body>
    <section>
        <header>
            <a href="#" class="logo">BiblioCafe</a>
            <ul>
            	<li><a href="Home.jsp">Home</a></li>
                <li><a href="userdashboard.jsp">User Dashboard</a></li>
           
                <li><a href="LogOut.jsp">Log out</a></li>
            </ul>
        </header>
        <div class="container">
                
                <h2>Your Order has successfully been placed!!</h2>
                
            </div>
        </section>
    </body>
</html>