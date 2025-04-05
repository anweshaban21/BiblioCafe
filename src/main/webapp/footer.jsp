<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bibliocafe_Footer</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<style>
	.footp1{
    background-color: rgb(94, 40, 6);
    color: white;
    height: 50px;
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 0.85rem;
}

.footp2 {
    background-color: rgb(147, 64, 12);
    color: white;
    height: 300px;
    display: flex;
    justify-content: space-evenly;
}
ul {
    margin-top: 20px;
}
ul a{
    display: block;
    font-size: 0.85rem;
    margin-top: 10px;
    color: #dddddd;
}
.footp3 {
    background-color: rgb(90, 40, 6);
    color: white;
    border-top: 0.5px solid rgb(90, 40, 6);
    height: 70px;
    display: flex;
    justify-content: center;
    align-items: center;
}

.logo{
    background-image: url("amazon_logo.png");
    background-size: cover;
    height: 50px;
    width: 100px;
}

.footp4 {
    background-color: rgb(90, 40, 6);
    color: white;
    height: 76px;
    font-size: 0.7rem;
    text-align: center;
    /* display: flex;
    justify-content: center;
    align-items: center; */
}

.pages {
    padding-top: 25px;
}
.copyright {
    padding-top: 5px;
}
</style>
</head>
<body>
	<footer>
        <div class="footp1">
            Back to Top
        </div>
        <div class="footp2">
            <ul>
                <p>Get to Know Us</p>
                <a>Blog</a>
                <a>About Us</a>
                <a>Join Us</a>
                <a>Hire Us</a> 
            </ul>
            <ul>
                <p>Our Products</p>
                <a>BBB Business Card</a>
                <a>Shop with Points</a>
                <a>Reload Your Balance</a>
                <a>Currency Converter</a>      
            </ul>
            <ul>
                <p>Let Us Help You</p>
                <a>Your Account</a>
                <a>Your Orders</a>
                <a>Shipping Rates & Policies</a>
                <a>Returns & Replacements</a>
                <a>Manage Your Content and Devices</a>
                <a>BBB Assistant</a>
                <a>Help</a>
            </ul>
        </div>
        <div class="footp3">
            <div class="logo"></div>
        </div>
        <div class="footp4">
            <div class="pages">
                <a>Conditions of Use</a>
                <a>Privacy Notice</a>
                <a>Your Ads Privacy Choices</a>
            </div>
            <div class="copyright">© 1996-2023, Bibliocafe.com, Inc. or its affiliates</div>
        </div>
    </footer>
</body>
</html>