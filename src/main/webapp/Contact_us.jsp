<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp"/>

<!Doctype html>
<html>
    <head>
        <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width,innitial-scale=1.0">
		
	    <title>Contact Us</title>
        <link rel="icon" href="images/logo.jpg">

	    <link rel="stylesheet" type="text/css" href="\coffeeshop\css\contactUs.css">
        <link href='https://css.gg/mail.css' rel='stylesheet'>
        <link href='https://css.gg/phone.css' rel='stylesheet'>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
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
    padding: 20px 100px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

header .logo{
    position: relative;
    max-width: 150px; 
    color: brown; font-size: 36px; font-weight: 600;
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
    background: #c37f64;
    padding: 8px;
    border-radius: 10%;
}
.contact .content{
    max-width: 800px;
    text-align: center;
}
.contact .content h2{
    font-size: 36px;
    font-weight: 500;
    color: #2F435A;
}
.contact .content p{
    font-weight: 300;
    color: #2F435A;
}
.container{
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 30px;margin-top: 5%;
}
.container .contactInfo{
    width: 50%;
    display: flex;
    flex-direction: column;
}
.container .contactInfo .box{
    position: relative;
    padding: 20px 0;
    display: flex;
}
.container .contactInfo .box .icon{
    min-width: 60px;
    height: 60px;
    display: flex;
    justify-content: center;
    align-items: center;
    border-radius: 50%;
    font-size: 22px;
}
.container .contactInfo .box .text{
    display: flex;
    margin-left: 20px;
    font-size: 16px;
    color: #2F435A;
    flex-direction: column;
}
.container .contactInfo .box .text h3{
    font-weight: 500;
    color: #2F435A;
}
.ContactForm{
    width: 40%;
    padding: 40px;
    background:#39918C;
}
.ContactForm h2{
    font-size: 30px;
    color: #2F435A;
    font-weight: 500;
}
.ContactForm .inputBox{
    position: relative;
    width: 100%;
    margin-top: 10px;
}
.ContactForm .inputBox input,
.ContactForm .inputBox textarea{
    width: 100%;
    padding: 5px 0;
    font-size: 16px;
    margin: 10px 0;
    border: none;
    border-bottom: 2px solid #333;
    outline: none;
    resize: none;
}
.ContactForm .inputBox input[type="submit"]{
    width: 100px;
    background: #D0B49F;
    color: #2F435A;
    border: 2px solid #f48b62;;
    border-radius: 10px;
    cursor: pointer;
    padding: 10px;
    font-size: 22px;
    font-weight: 550;
}

.ContactForm .inputBox input[type="submit"]:hover{
    border: 2px solid #AB6B51;
    background-color: #f48b62;

}
input::placeholder,
textarea::placeholder{
    padding-left: 10px;
}

@media (max-width: 991px)
{
    .contact{
        padding: 50px;
    }
    .content{
        margin-top: 15%;
    }
    .container{
        flex-direction: column;
    }
    .container .contactInfo,
    .ContactForm{
        width: 100%;
    }

}
        </style>
        
    </head>
    <body>
        <section class="contact">
        <div class="circle"></div>
            <header>
                <a href="index.html" class="logo">BiblioCafe</a>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="User_Menu_Choose.jsp">Menu</a></li>
                  
                    <li><a href="#">Contact </a></li>
                </ul>
            </header>
            <div class="content">
                <h2>Contact Us</h2>
                <p>If you're Facing any kind of issue, Feel free to knock us. Your opinion matters the most.
                    Your Criticism will improve our service.
                </p>
            </div>
            <div class="container"> 
                <div class="contactInfo">
                    <div class="box">
                        <div class="icon"><i class="material-icons">add_location</i></div>
                        <div class="text">
                            <h3>Address</h3>
                            <p><br>Kolkata,India<br></p>
                        </div>
                        </div>
                    <div class="box">
                        <div class="icon"><i class="gg-phone"></i></div>
                        <div class="text">
                            <h3>Phone</h3>
                            <p>+1234567890</p>
                        </div>
                    </div>
                    <div class="box">
                        <div class="icon"><i class="gg-mail"></i></div>
                        <div class="text">
                            <h3>Email</h3>
                            <p>bibliocafe@gmail.com</p>
                        </div>
                    </div>
                </div>
                <div class="ContactForm">
                    <form action="contact.php" method="POST">
                        <h2> Send Message</h2>
                        <div class="inputBox">
                            <input type="txt" name="name" required="required" placeholder="Full Name">
                        </div>
                        <div class="inputBox">
                            <input type="txt" name="email" required="required" placeholder="Email">
                        </div>
                        <div class="inputBox">
                            <textarea required="required" name="message" placeholder = "Type Your Message..."></textarea>
                        </div>
                        <div class="inputBox">
                            <span><a href="sendmsg.jsp"><button type="button">Send</button></a></span>
                        </div>
                    </form>
                </div>
            </div>
            
        </section>
    </body>
</html>
<jsp:include page="footer.jsp"/>