<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="AppPortal.Gallery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Permission Portal</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="Collegian a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="css/lightcase.css">
    <link href="css/nav.css" rel='stylesheet' type='text/css' />
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <link href="css/fontawesome-all.css" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
</head>

<body>
    <div class="inner-page" id="home">
        <!--/nav-->
         <div class="top_nav">
            <h1>
                <a class="logo" href="Home.aspx">PermissionPortal</a>
            </h1>
            <div class="top-btns">
                <div class="sign-btn">
                    <a href="#" data-toggle="modal" data-target="#exampleModalCenter">
                        <i class="fas fa-lock"></i> Sign In</a>
                    <a href="#" data-toggle="modal" data-target="#exampleModalCenter2">
                        <i class="far fa-user"></i> Register</a>
                </div>
            </div>
            <div class="container-btn" id="btn">
                <div class="text">Menu</div>
                <div id="bars">
                    <div class="bar first"></div>
                    <div class="bar second"></div>
                    <div class="bar third"></div>
                </div>
            </div>


            <!-- top-overlay -->
            <div class="top-overlay fade-out" id="menu">
                <nav class="top-overlay-content" id="nav">
                    <span class="top-overlay-close" id="close-btn"> &times; </span>
                    <div class="container" id="container">
                        <div class="first-nav text-center">
                            <ul class="first-nav text-center">
                           <!-- <li><a href="Home.aspx">Home</a></li> -->
                            <li><a href="About.aspx" >Home</a></li>
                            <li><a href="Gallery.aspx" class="active">Gallery</a></li>
                          <!--  <li><a href="gallery.html" class="dropdown"></a></li> -->
                              
                         <!--   <li class="dropdown">
                              <button class="dropbtn">Visit Venue <i class="fas fa-angle-down"></i></button>
                              <div class="dropdown-content">
                                <a href="Gallery.aspx">Mp Hall</a>
                                <a href="404.html">Seminar Hall</a>
                                 <a href="service.html">NLH</a>
                              </div>
                            </li> -->
                            <li><a href="Contact.aspx">Contact</a></li>
                        </ul>
                        </div>
                    </div>
                </nav>
            </div>
            <!--//nav-->
        </div>
    
    </div>
       <ol class="breadcrumb">
					<li class="breadcrumb-item">
						<a href="About.aspx">Home</a>
					</li>
					<li class="breadcrumb-item active">Gallery</li>
				</ol>
    <!---->
    <!--banner-bottom-w3layouts-->
    <section class="banner-bottom-w3layouts py-md-5 py-4">
        <div class="container">
            <div class="inner-sec-wthree-w3ls py-md-5 py-4">
                <h3 class="tittle-w3l text-center mb-lg-5 mb-3">
                    <span>Our</span>Gallery</h3>
    
                <div class="gallery-lightbox mt-5">
				<div class="row">
					<div class="col-md-6 project-img">
						<a href="images/gl1.jpg" id="example5" class="showcase img-fluid" data-rel="lightcase:myCollection:slideshow" title="Cayton Heath">
							<img src="images/gl1.jpg" class="img-fluid" alt="">
						</a>
					</div>
					<div class="col-md-6 project-img">
						<a href="images/gl2.jpg" id="example9" class="showcase img-fluid" data-rel="lightcase:myCollection:slideshow" title="Scott Webb">
							<img src="images/gl2.jpg" class="img-fluid" alt="">
						</a>
					</div>
				</div>
				<div class="row my-4">
					<div class="col-md-4 project-img">
						<a href="images/gl3.jpg" id="example2" class="showcase img-fluid" data-rel="lightcase:myCollection:slideshow" title="Cayton Heath">
							<img src="images/gl3.jpg" class="img-fluid" alt="">
						</a>
					</div>
					<div class="col-md-4 project-img">
						<a href="images/gl4.jpg" id="example3" class="showcase img-fluid" data-rel="lightcase:myCollection:slideshow" title="Scott Webb">
							<img src="images/gl4.jpg" class="img-fluid" alt="">
						</a>
					</div>
					<div class="col-md-4 project-img">
						<a href="images/gl5.png" id="example8" class="showcase img-fluid" data-rel="lightcase:myCollection:slideshow" title="Scott Webb">
							<img src="images/gl5.png" class="img-fluid" alt="">
						</a>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6 project-img">
						<a href="images/tedx-mnnit.jpg" id="example4" class="showcase img-fluid" data-rel="lightcase:myCollection:slideshow" title="Roberto Nickson">
							<img src="images/tedx-mnnit.jpg" class="img-fluid" alt="">
						</a>
					</div>
					<div class="col-md-6 project-img">
						<a href="images/gl.jpg" id="example6" class="showcase img-fluid" data-rel="lightcase:myCollection:slideshow" title="Cayton Heath">
							<img src="images/gl.jpg" class="img-fluid" alt="">
						</a>

					</div>


				</div>
</div>
            </div>
        </div>
    </section>
    <!--//banner-bottom-w3layouts-->
   
   <!-- footer -->
<section class="footer py-5">
	<div class="footer-top-w3layouts py-lg-3">
		<div class="container">
			<div class="row footer-grids">
				<div class="col-lg-4 col-md-6 footer-grid text-left">
					<div class="footer-logo">
						<h3 class="mb-3"><a class="logo" href="Home.aspx">Portal</a></h3>
						<p>A portal to grant and wish permissions for venues to organize events and happiness.It's simple, write! wait! celebrate!</p>
						<ul class="social mt-lg-0 mt-3">
					<li class="mr-1"><a href="#"><span class="fab fa-facebook-f"></span></a></li>
					<li class="mx-1"><a href="#"><span class="fab fa-twitter"></span></a></li>
					<li class="mx-1"><a href="#"><span class="fab fa-google-plus-g"></span></a></li>
					<li class="mx-1"><a href="#"><span class="fab fa-linkedin-in"></span></a></li>
					
				</ul>
					</div>
				</div>
                <div class="col-lg-2 col-md-6 col-sm-5 mt-lg-0 mt-sm-5 mt-4 footer-grid links text-left">
					<h3 class="mb-4"> links </h3>
					<ul>
						<!--<li>
							<a href="Home.aspx">Home</a>
						</li> -->
						<li>
							<a href="About.aspx">Home</a>
						</li>
						
						<li>
							<a href="Gallery.aspx">Gallery</a>
						</li>
                        <li>
							<a href="Venue.aspx">Venue</a>
						</li>
						<li>
							<a href="Contact.aspx">Contact Us</a>
						</li>
					</ul>
				</div>
                <div class="col-lg-3 col-md-6 col-sm-7 mt-lg-0 mt-sm-5 mt-4 footer-grid links text-left">
					<h3 class="mb-4">contact Us </h3>
					<ul>
						<li><strong>Address</strong> : Dean academics, MNNIT</li>
						<li><strong>mobile</strong> : +01(24) 3212 9436</li>
						<li><strong>phone</strong> : +01(24) 8543 8088</li>
						<li><strong>Mail</strong> : <a href="mailto:info@example.com">permissionportal@gmail.com</a></li>
					</ul>
				</div>
				 <div class="col-lg-3 col-md-6 mt-md-0 mt-sm-5 mt-4 edu-footer-grid text-left">
					<h3 class="mb-4">Get Event News </h3>
					<form action="#" method="post">
						<input type="text" name="text" placeholder="Name" required="" />
						<input type="email" name="Email" placeholder="Email" required="" />
						<input type="submit" value="Subscribe" />
					</form>
				</div>


			</div>
		</div>
	</div>
</section>
<!-- //footer -->

<!-- copyright -->
<div class="copy_right_w3ls py-4 text-center">
    <p>© 2018 PermissionPortal. All rights reserved </p>
	
</div>
<!-- //copyright -->

    <!--model-forms-->
    <!--/Login-->
    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header text-center">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <div class="login px-4 mx-auto mw-100">
                        <h5 class="text-center mb-4">Login Now</h5>
                        <form action="#" method="post">
                            <div class="form-group">
                                <label class="mb-2">Email address</label>
                                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="" required="">
                                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                            </div>
                            <div class="form-group">
                                <label class="mb-2">Password</label>
                                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="" required="">
                            </div>
                            <div class="form-check mb-2">
                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                <label class="form-check-label" for="exampleCheck1">Check me out</label>
                            </div>
                            <button type="submit" class="btn btn-primary submit mb-4">Sign In</button>
                            <p class="text-center pb-4">
                                <a href="#" data-toggle="modal2" data-target="#exampleModalCenter"> Don't have an account?</a>
                            </p>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!--//Login-->
    <!--/Register-->
    <div class="modal fade" id="exampleModalCenter2" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header text-center">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="login px-4 mx-auto mw-100">
                        <h5 class="text-center mb-4">Register Now</h5>
                        <form action="#" method="post">
                            <div class="form-group">
                                <label>First name</label>

                                <input type="text" class="form-control" id="validationDefault01" placeholder="" required="">
                            </div>
                            <div class="form-group">
                                <label>Last name</label>
                                <input type="text" class="form-control" id="validationDefault02" placeholder="" required="">
                            </div>

                            <div class="form-group">
                                <label class="mb-2">Password</label>
                                <input type="password" class="form-control" id="password1" placeholder="" required="">
                            </div>
                            <div class="form-group">
                                <label>Confirm Password</label>
                                <input type="password" class="form-control" id="password2" placeholder="" required="">
                            </div>

                            <button type="submit" class="btn btn-primary submit mb-4">Register</button>
                            <p class="text-center pb-4">
                                <a href="#">By clicking Register, I agree to your terms</a>
                            </p>
                        </form>

                    </div>
                </div>

            </div>
        </div>
    </div>
    <!--//Register-->

    <!--//model-form-->

    <!-- js -->
    <script src="js/jquery-2.2.3.min.js"></script>
    <!-- menu -->
    <script src="js/index.js"></script>
    <script src="js/modernizr.custom.js"></script>
    <!-- //menu -->
   <script src="js/lightcase.js"></script>
	<script src="js/jquery.events.touch.js"></script>

	<script>
		$('.showcase').lightcase();
	</script>

    <!-- //js -->
    <script src="js/bootstrap.js"></script>
    <!--/ start-smoth-scrolling -->
    <script src="js/move-top.js"></script>
    <script src="js/easing.js"></script>
    <script>
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 900);
            });
        });
    </script>
    <script>
        $(document).ready(function () {
            /*
            						var defaults = {
            							  containerID: 'toTop', // fading element id
            							containerHoverID: 'toTopHover', // fading element hover id
            							scrollSpeed: 1200,
            							easingType: 'linear' 
            						 };
            						*/

            $().UItoTop({
                easingType: 'easeOutQuart'
            });

        });
    </script>
    <!--// end-smoth-scrolling -->
</body>
</html>
