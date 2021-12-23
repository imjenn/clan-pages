<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Welcome to Clan</title>
	
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="/css/home.css">
	
	<!-- Bootstrap -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	 
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

	<!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
   	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Hind&display=swap" rel="stylesheet">
    
    <!-- Icons -->
    <script src="https://use.fontawesome.com/b4a0ba9277.js"></script>
    
</head>
<body>
	<div id="container">
        <nav class="nav-links">
            <div>
                <h1 class="header">CLΛN<i class="fa fa-gamepad" aria-hidden="true"></i></h1>
            </div>
            <div class="right-nav-links">
                <a href="/games">Games</a>
                <a href="/chat">Chat</a>
                <div class="nav-btns">
                    <a href="/signin"><button class="login-btn">Login</button></a>
                    <a href="/signin"><button class="signup-btn">Sign Up</button></a>
                </div>
            </div>
        </nav>

        <div id="carouselExampleIndicators" class="carousel slide carousel-fade" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="images/home/lol.jpeg" alt="First slide">
                    <div class="carousel-caption d-none d-md-block">
                        <h3>League of Legends</h3>
                        <a href="/games"><button class="carousel-button">View More</button></a>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="images/home/halo.jpeg" alt="Second slide">
                    <div class="carousel-caption d-none d-md-block">
                        <h3>Halo Infinite</h3>
                        <a href="/games"><button class="carousel-button">View More</button></a>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="images/home/val.png" alt="Third slide">
                    <div class="carousel-caption d-none d-md-block">
                        <h3>Valorant</h3>
                        <a href="/games"><button class="carousel-button">View More</button></a>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="images/home/cod.jpeg" alt="Fourth slide">
                    <div class="carousel-caption d-none d-md-block">
                        <h3>Call of Duty</h3>
                        <a href="/games"><button class="carousel-button">View More</button></a>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="images/home/dbd.jpeg" alt="Fifth slide">
                    <div class="carousel-caption d-none d-md-block">
                        <h3>Dead by Daylight</h3>
                        <a href="/games"><button class="carousel-button">View More</button></a>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
		
        <div class="content-bar">
            <a href="/chat">
                <img class="side-img" src="images/logos/lol_logo-removebg-preview.png" title="Join League of Legends"
                    alt="LOL logo">
            </a>
            <a href="/chat">
                <img class="side-img" src="images/logos/halo_logo-removebg-preview.png" title="Join Halo Infinite"
                    alt="Halo logo">
            </a>
            <a href="/chat">
                <img class="side-img" src="images/logos/valorant-removebg-preview.png" title="Join Valorant"
                    alt="Valorant logo">
            </a>
            <a href="/chat">
                <img class="side-img" src="images/logos/cod_logo.png" title="Join Call of Duty" alt="COD logo">
            </a>
        </div>
        
        <div class="view-btn">
        	<a href="/games"><button class="view-btn-hover">View All Games &nbsp; <i class="fa fa-long-arrow-right" aria-hidden="true"></i></button></a>
        </div>
        
        <!-- About Us -->
        <div class="about">
            <h4>ABOUT</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae quod, itaque assumenda ipsum a nulla accusamus fugit ab nam hic, facere voluptatum harum, totam sint sed! Ab enim amet minus. Lorem ipsum dolor sit amet consectetur adipisicing elit. Culpa doloremque sit iure, ipsum ducimus odio saepe neque, nesciunt obcaecati inventore molestiae est deleniti modi, voluptatibus vel soluta repudiandae voluptatem rerum.
            Dolorem repellat architecto inventore maxime molestias iure voluptatem, temporibus reiciendis provident hic error nihil quod, porro optio nemo quam. Suscipit minus, est ducimus quasi dicta corrupti in fugiat aspernatur? Deserunt.
            Harum temporibus laudantium necessitatibus atque architecto nesciunt in odio, blanditiis reiciendis ut ipsa eligendi facilis explicabo nobis corporis distinctio dicta. Harum maiores sunt odio accusantium ea illum. Corrupti, porro expedita?</p>
        </div>

        <footer>
            <h4>STAY CONNECTED</h3>
            <p class="footer-copyright">&copy; CLAN CO. ALL RIGHTS RESERVED<br>Lorem ipsum dolor sit amet consectetur adipisicing elit. </p>
                <ul class="stay-connected-icons">
                    <li><a href="" title="Instagram"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                    <li><a href="" title="Facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                    <li><a href="" title="Twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                    <li><a href="" title="Twitch"><i class="fa fa-twitch" aria-hidden="true"></i></a></li>
                    <li><a href="" title="Snapchat"><i class="fa fa-snapchat-ghost" aria-hidden="true"></i>
                    </i></a></li>
                </ul>
                <ul class="footer-links">
                    <li><a href="#">ABOUT</a></li>
                    <p class="triangle">&#9653;</p>
                    <li><a href="#">SUPPORT</a></li>
                    <p class="circle">&#9711;</p>
                    <li><a href="#">PRIVACY POLICY</a></li>
                    <p class="x">&#x2715;</p>
                    <li><a href="#contact-section">CONTACT US</a></li>
                    <p class="square">&#10079;</p>
                </ul>
        </footer>
    </div>
</body>
</html>