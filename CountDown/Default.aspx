<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CountDown.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <!-- Your Basic Site Informations -->
    <title>Flatland Responsive Flat Design Landing Page</title>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="Flatland is a premium flat landing page that built-in professional responsive design, colorful and have a slew of features." />
    <meta name="keywords" content="Landing Page, One Page Template, Responsive, Flat Design, Premium, Creative, Colorful, Portfolio, PSD, HTML5, CSS3, jQuery" />
    <meta name="author" content="Affapress" />

    <!-- Mobile Specific Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

    <!-- Fonts -->
    <link href="http://fonts.googleapis.com/css?family=Noto+Sans:400,700,400italic" rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />

    <!-- Stylesheets -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/slick.css" />
    <link rel="stylesheet" href="css/slick-theme.css" />
    <link rel="stylesheet" href="css/jquery.fancybox.css" />
    <link rel="stylesheet" href="css/animate.min.css" />
    <link rel="stylesheet" href="css/style.css" />

    <!-- Custom Colors -->
    <%--<link rel="stylesheet" href="css/colors/green.css">--%>
    <!--<link rel="stylesheet" href="css/colors/orange.css">-->
    <!--<link rel="stylesheet" href="css/colors/pink.css">-->
    <link rel="stylesheet" href="css/colors/purple.css" />
    <!--<link rel="stylesheet" href="css/colors/yellow.css">-->

    <!--[if lt IE 9]>
    	<script src="js/html5.js"></script>
        <script src="js/respond.min.js"></script>
	<![endif]-->

    <!--[if lt IE 8]>
    	<link rel="stylesheet" href="css/ie-older.css">
    <![endif]-->

    <noscript><link rel="stylesheet" href="css/no-js.css"></noscript>

    <!-- Favicons -->
    <link rel="shortcut icon" href="images/favicon.ico" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png" />

</head>

<body>

    <style>
        h1.time-title, h2.time-title, h3.time-title, h4.time-title, h5.time-title {
            color: white;
            padding-top: 40px;
            padding-bottom: 80px;
            font-weight: bold;
        }

        input.time-input {
            height: 80px;
            width: 125px;
            font-size: 75px;
            text-align: center;
            color: black;
            opacity: 0.8;
        }

            input.time-input::placeholder { /* Chrome, Firefox, Opera, Safari 10.1+ */
                color: black;
                opacity: 1; /* Firefox */
            }

            input.time-input:-ms-input-placeholder { /* Internet Explorer 10-11 */
                color: black;
            }

            input.time-input::-ms-input-placeholder { /* Microsoft Edge */
                color: black;
            }

        .time-input-header {
            color: white;
        }

        p.countdown-time {
            font-size: 150px;
            line-height: 1em;
            color: white;
        }

        p.options-text {
            font-size: 20px;
            line-height: 1em;
            color: white;
        }
    </style>


    <!-- #header -->
    <%--<header id="header">

        <!-- #navigation -->
        <nav id="navigation" class="navbar">

            <!-- .container -->
            <div class="container">
                
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#menu-collapse-1">
                        <span class="sr-only">Menu</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <div class="navbar-brand"><img src="images/logo.png" alt="Logo" /></div> <!-- site logo -->
                </div>
                
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="menu-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#header" class="smooth-scroll">Home</a></li>
                        <li><a href="#features" class="smooth-scroll">Features</a></li>
                        <li><a href="#screenshots" class="smooth-scroll">Screenshots</a></li>
                        <li><a href="#pricing" class="smooth-scroll">Pricing</a></li>
                        <li><a href="#download" class="smooth-scroll">Download</a></li>
                        <li><a href="page.html">Page</a></li>
                    </ul>
                </div>
                
            </div>
            <!-- .container end -->

        </nav>
        <!-- #navigation end -->

        <!-- .header-content -->
        <div class="header-content">
            
            <!-- .container -->
            <div class="container">
                
                <!-- .row -->
            	<div class="row">
                    
                    <div class="col-sm-7">
                    	<div class="header-text">
                        	<div class="header-heading">
                            	<p>Flat Style Landing Page</p>
                                <h1>Present your app in beautiful way with Flatland</h1>
                            </div>
                            <p>Blazing fast, fully responsive, nice hover effects, smooth animation, price-table, working ajax contact form and more!</p>
                            <div class="header-button">
                            	<a href="#download" class="btn-custom btn-icon animation smooth-scroll" data-animation="animation-fade-in-left"><i class="fa fa-download"></i> Download Now</a>
                                <span class="header-button-sep animation" data-animation="animation-fade-in" data-delay="300">or</span>
                                <a href="page.html" class="btn-custom btn-more-link animation" data-animation="animation-fade-in-right" data-delay="600">Learn More</a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-sm-5 col-md-4 col-md-offset-1">
                    	<div class="header-img">
                            <div class="carousel-slider header-slider animation" data-animation="animation-fade-in-down">
                                <div><img src="images/content/sliders/1.jpg" alt="Image 1" /></div>
                                <div><img src="images/content/sliders/2.jpg" alt="Image 2" /></div>
                                <div><img src="images/content/sliders/3.jpg" alt="Image 3" /></div>
                                <div><img src="images/content/sliders/4.jpg" alt="Image 4" /></div>
                            </div>
                        </div>
                    </div>
                    
                </div>
                <!-- .row end -->
                
            </div>
            <!-- .container end -->
            
        </div>
        <!-- .header-content end -->

    </header>--%>
    <!-- #header end -->



    <%-- Set Up Section --%>
    <section id="setupSection">
        <div class="wrap-container80" style="background-image: url('/architecture-buildings-city-842948.jpg'); background-position-y: bottom">
            <div class="container">
                <div class="col-md-12 text-center">

                    <div class="row">
                        <h1><i class="fa fa-bomb"></i></h1>
                        <h1 class="time-title">Count Down</h1>
                        <p><strong>Set up your countdown time and click Start!</strong></p>
                    </div>

                    <div class="row">
                        <div class="col-md-2 col-md-offset-3">
                            <h5 class="time-input-header">Hours:</h5>
                            <input id="hoursStart" type="text" name="hours" value="0" class="time-input" />
                        </div>
                        <div class="col-md-2">
                            <h5 class="time-input-header">Minutes:</h5>
                            <input id="minutesStart" type="text" name="hours" value="00" class="time-input" />
                        </div>
                        <div class="col-md-2">
                            <h5 class="time-input-header">Seconds:</h5>
                            <input id="secondsStart" type="text" name="hours" value="10" class="time-input" />
                        </div>
                    </div>

                    <div class="row">
                        <div class="wrap-container60">
                            <input id="startButton" type="button" name="name" value="Start"
                                style="font-size: 50px; border-color: red; border-width: 5px; border-style: solid; background-color: red; opacity: 0.8;" />
                        </div>
                    </div>

                </div>

                <div class="row">

                    <div class="col-md-4 text-center">
                        <%--<p class="options-text">Allow Cancel</p>--%>
                        <div class="btn-group">
                            <button type="button" class="btn btn-primary">Allow Cancel</button>
                            <button type="button" class="btn btn-primary">Cancel Off</button>
                        </div>

                        <div class="padding-top10">
                            <select id="createECardStandardMessages" class="form-control">
                                <option value="default">Allow Cancel</option>
                                <option value="Thinking Of You">Cancel Until 10 Seconds</option>
                                <option value="Happy Birthday">Cancel Until 1 Minute</option>
                                <option value="Congratulations">Cancel off</option>
                            </select>
                        </div>

                        <div class="dropdown">
                            <button class="btn btn-default dropdown-toggle" type="button" id="menu1" data-toggle="dropdown">
                                Tutorials
    <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">HTML</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">CSS</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">JavaScript</a></li>
                                <li role="presentation" class="divider"></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">About Us</a></li>
                            </ul>
                        </div>
                    </div>

                    <%--<div class="col-md-2">
                        <div class="btn-group">
                            <button type="button" class="btn btn-primary">Allow Cancel</button>
                            <button type="button" class="btn btn-primary">Cancel Off</button>
                        </div>
                    </div>--%>

                    <div class="col-md-2">
                        <i class="fa fa-volume-off" style="font-size: 30px;"></i>
                    </div>

                </div>
            </div>
        </div>
    </section>


    <%-- Count Down Section --%>
    <section id="countdownSection" style="background-color: darkred; min-height: 1000px;">

        <div class="wrap-container120">
            <div class="container">
                <div class="row">

                    <div class="col-md-1">
                        <span>
                            <i id="countdownHome" class="fa fa-home" style="color: white; font-size: 40px; cursor: pointer;" onclick="gotoCountdownSetup(); return false;"></i>
                        </span>
                    </div>

                    <div class="col-md-4 col-md-offset-3">
                        <%--<h1 style="font-size: 3em;">Tag h1. Tag h1. Tag h1. Tag h1. Tag h1. Tag h1. Tag h1. Tag h1. Tag h1. Tag h1. Tag h1. Tag h1. Tag h1. Tag h1. Tag h1.</h1>--%>
                        <%--<h2>Tag h2.</h2>--%>
                        <%--<h3>Tag h3.</h3>--%>
                        <%--<h4>Tag h4.</h4>--%>
                        <%--<p>Paragraph in section. Paragraph in section. Paragraph in section. Paragraph in section. Paragraph in section. Paragraph in section. Paragraph in section.</p>--%>

                        <p id="countdownvalue" class="countdown-time text-center">2:43</p>

                        <%--<div class="progress">
                            <div id="countdownProgressBar" class="progress-bar progress-bar-striped" role="progressbar"
                                aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%;">
                            </div>
                        </div>--%>

                        <div class="wrap-container100">
                            <p class="text-center">
                                <input id="countdownCancelButton" type="button" name="name" value="Cancel" class="btn" onclick="stopCounter(); return false;"
                                    style="font-size: 40px; border-color: white; border-width: 5px; border-style: solid; background-color: transparent; opacity: 1; color: white;" />
                            </p>
                        </div>

                    </div>
                </div>
            </div>
        </div>

    </section>


    <!-- #footer -->
    <footer id="footer">

        <div class="footer-socials">
            <div class="container">
                <a href="#" title="Twitter" class="animation" data-animation="animation-bounce-in"><i class="fa fa-twitter"></i></a>
                <a href="#" title="Facebook" class="animation" data-animation="animation-bounce-in" data-delay="200"><i class="fa fa-facebook"></i></a>
                <a href="#" title="Google Plus" class="animation" data-animation="animation-bounce-in" data-delay="400"><i class="fa fa-google-plus"></i></a>
                <a href="#" title="Pinterest" class="animation" data-animation="animation-bounce-in" data-delay="600"><i class="fa fa-pinterest"></i></a>
                <a href="#" title="Instagram" class="animation" data-animation="animation-bounce-in" data-delay="800"><i class="fa fa-instagram"></i></a>
                <a href="#" title="LinkedIn" class="animation" data-animation="animation-bounce-in" data-delay="1000"><i class="fa fa-linkedin"></i></a>
                <a href="#" title="Github" class="animation" data-animation="animation-bounce-in" data-delay="1200"><i class="fa fa-github"></i></a>
            </div>
        </div>

        <div class="footer-copyright">
            <div class="container">
                <p>&copy; 2016 Copyright. All Rights Reserved. Created by <a href="http://affapress.com" target="_blank">Affapress.</a></p>
            </div>
        </div>

    </footer>
    <!-- #footer end -->


    <!-- JavaScript -->
    <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="js/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/jquery.easing.min.js"></script>
    <script type="text/javascript" src="js/smoothscroll.js"></script>
    <script type="text/javascript" src="js/response.min.js"></script>
    <script type="text/javascript" src="js/jquery.placeholder.min.js"></script>
    <script type="text/javascript" src="js/jquery.fitvids.js"></script>
    <script type="text/javascript" src="js/jquery.imgpreload.min.js"></script>
    <script type="text/javascript" src="js/waypoints.min.js"></script>
    <script type="text/javascript" src="js/slick.min.js"></script>
    <script type="text/javascript" src="js/jquery.mousewheel-3.0.6.pack.js"></script>
    <script type="text/javascript" src="js/jquery.fancybox.pack.js"></script>
    <script type="text/javascript" src="js/parallax.min.js"></script>
    <script type="text/javascript" src="js/jquery.counterup.min.js"></script>
    <script type="text/javascript" src="js/isotope.pkgd.min.js"></script>
    <script type="text/javascript" src="js/script.js"></script>
    <script type="text/javascript" src="countdown.js"></script>
</body>

</html>
