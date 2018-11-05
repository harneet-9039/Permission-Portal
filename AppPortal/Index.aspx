<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="AppPortal.Home" EnableEventValidation="false" EnableViewState="true" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <ol class="breadcrumb">
					<li class="breadcrumb-item">
					<!-- <a href="Home.aspx">Home</a> -->
					</li>
					<li class="breadcrumb-item active">Home</li>
				</ol>
    <!---->
    <!--banner-bottom-w3layouts-->
    <section class="banner-bottom-w3layouts py-md-5 py-4">
        <div class="container">
            <div class="inner-sec-wthree-w3ls py-md-5 py-4">
                <h3 class="tittle-w3l text-center mb-lg-5 mb-3">
                    <span>Visit</span>Welcome To Our Site</h3>
                <div class="row mt-5">
                    <div class="col-lg-6 about-img">
                        <img src="images/func1.jpg" alt="" class="img-fluid">
                    </div>
                    <div class="col-md-6 aboutright">
                        <h3>Get Permission for Events</h3>
                        <h3> for Successful Hosting.</h3>
                        <h4>Design is so simple that's why it is so complicated</h4>
                        <p>Lorem ipsum dolor sit amet Neque porro quisquam est qui dolorem Lorem int ipsum dolor sit amet when
                            an unknown printer took a galley of type.Vivamus id tempor felis. Cras sagittis mi sit amet malesuada
                            mollis. Mauris porroinit consectetur cursus tortor vel interdum. Suspendisse interdum velit vel
                            qu dapibus condimentum. Pellentesque consequat.</p>
                        <div class="read inner mt-4">
						<a href="about.html" class="btn btn-sm animated-button victoria-two">Read More</a>
					</div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="course-selection py-lg-5 py-md-4 py-4">
        <div class="layer-transporant py-md-5 py-4">
            <div class="container">
                <div class="row justify-content-between align-items-center">
                    <div class="col-lg-6 course-left">
                        <h3 class="course">
                            Confused about</h3>
                        <h3 class="course">
                            the Venue !
                        </h3>
                        <p class="para my-4">
                            Different programmes of different departments are conducted at these venues. So it is difficult to keep track of which venue is available when you wish to conduct a programme.</p>
                        <div class="row course-details-content">
                            <div class="col course-detials-inner-info">

                                <a href="#">
                                    <h4>Book venue of your choice</h4>
                                </a>
                                <p>
                                    Select a venue from the list of available venues. Things made easy , Isn&#39;t it !</p>
                            </div>
                            <div class="col course-detials-inner-info">

                                <a href="#">
                                    <h4>Login if you find suitable venue</h4>
                                </a>
                                <p>
                                    No need to login to check available venues. Saves pretty much of your time....
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 course-right">
                        <form action="#" method="post">
                            <h4 class="text-white text-center mb-3">Search for required venue</h4>
                            <asp:DropDownList ID="Role_ddl" class="form-control" runat="server">
                                
                               </asp:DropDownList>
                            <br /><br />
                            <div class='input-group date' id='datetimepicker3'>
                    <input type='text' class="form-control" />
                    <span class="input-group-addon">
                        <span class="fas fa-lock"></span>
                    </span>
                </div>

                <div class='input-group date' id='datetimepicker4'>
                    <input type='text' class="form-control" />
                    <span class="input-group-addon">
                        <span class="fas fa-lock"></span>
                    </span>
                </div>
                            <input class="form-control mt-3" type="submit" value="Query">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
 
    <!--//courses-->
    <section class="banner-bottom-w3layouts py-lg-5 py-lg-4 py-4">
        <div class="container">
            <div class="inner-sec-wthree-w3ls py-lg-4 py-4">
                <h3 class="tittle-w3l text-center mb-lg-5 mb-3">
                    <span>Visit</span>Explore Venues</h3>
                <div class="owl-carousel owl-theme">
                    <div class="item">
                        <div class="cource-box-info text-center rounded">
                            <div class="card">
                                <div class="card-body">
                                    <img src="images/semi.jpg" alt="seminar" class="img-fluid">
                                    <h5 class="card-title mt-3">Seminar Hall
                                    </h5>
                                   <!-- <p class="card-text">
                                        <i class="fas fa-map-marker-alt"></i> New York City</p>
                                        <ul class="property-box">
                                            <li class="field-item text-left">
                                                
                                                <i class="fas fa-users"></i> 195 </li>
                                            <li class="field-item text-right">
    
                                                <i class="far fa-comments"></i> 26 </li>
                                        </ul>-->
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="cource-box-info text-center rounded">
                            <div class="card">
                                <div class="card-body">
                                    <img src="images/mphall.jpg" alt="Collegien" class="img-fluid">
                                    <h5 class="card-title mt-3">MP Hall
                                    </h5>
                                  <!--  <p class="card-text">
                                        <i class="fas fa-map-marker-alt"></i> New York City</p>
                                        <ul class="property-box">
                                            <li class="field-item text-left">
                                                
                                                <i class="fas fa-users"></i> 155 </li>
                                            <li class="field-item text-right">
    
                                                <i class="far fa-comments"></i> 15 </li>
                                        </ul>-->
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="cource-box-info text-center rounded">
                            <div class="card">
                                <div class="card-body">
                                    <img src="images/nlh.jpg" alt="nlh" class="img-fluid">
                                    <h5 class="card-title mt-3">NLH
                                    </h5>
                                <!--    <p class="card-text">
                                        <i class="fas fa-map-marker-alt"></i> New York City</p>
                                        <ul class="property-box">
                                            <li class="field-item text-left">
                                                
                                                <i class="fas fa-users"></i> 155 </li>
                                            <li class="field-item text-right">
    
                                                <i class="far fa-comments"></i> 25 </li>
                                        </ul>-->
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="cource-box-info text-center rounded">
                            <div class="card">
                                <div class="card-body">
                                    <img src="images/ground.jpg" alt="ground" class="img-fluid">
                                    <h5 class="card-title mt-3">Gymkhana Ground
                                    </h5>
                                 <!--   <p class="card-text">
                                        <i class="fas fa-map-marker-alt"></i> New York City</p>
                                        <ul class="property-box">
                                            <li class="field-item text-left">
                                                
                                                <i class="fas fa-users"></i> 255 </li>
                                            <li class="field-item text-right">
    
                                                <i class="far fa-comments"></i> 15 </li>
                                        </ul>-->
                    <!--            </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="cource-box-info text-center rounded">
                            <div class="card">
                                <div class="card-body">
                                    <img src="images/NLH2.jpg" alt="Collegien" class="img-fluid">
                                    <h5 class="card-title mt-3">NLH2
                                    </h5> -->
                                  <!--  <p class="card-text">
                                        <i class="fas fa-map-marker-alt"></i> New York City</p>
                                        <ul class="property-box">
                                            <li class="field-item text-left">
                                                
                                                <i class="fas fa-users"></i> 395 </li>
                                            <li class="field-item text-right">
    
                                                <i class="far fa-comments"></i> 25 </li>
                                        </ul>-->
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="cource-box-info text-center rounded">
                            <div class="card">
                                <div class="card-body">
                                    <img src="images/CricketGround2.jpg" alt="Collegien" class="img-fluid">
                                    <h5 class="card-title mt-3">Cricket Ground
                                    </h5>
                                  <!--  <p class="card-text">
                                        <i class="fas fa-map-marker-alt"></i> New York City</p>
                                    <ul class="property-box">
                                        <li class="field-item text-left">
                                            
                                            <i class="fas fa-users"></i> 355 </li>
                                        <li class="field-item text-right">

                                            <i class="far fa-comments"></i> 25 </li>
                                    </ul>-->
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
  
  </asp:Content>

 