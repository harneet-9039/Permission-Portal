<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="AppPortal.contact" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!-- banner-inner -->
	<div class="banner-inner">
			

	</div>
	<!--// banner-inner -->
    
    <!---->
<ol class="breadcrumb">
					<li class="breadcrumb-item">
						<a href="Index.aspx">Home</a>
					</li>
					<li class="breadcrumb-item active">Contact</li>
				</ol>
	
<!-- contact -->
<section class="banner-bottom-w3layouts contact py-md-5 py-3">
        <div class="inner-sec-wthree-w3ls py-md-5 py-3">
            <h3 class="tittle-w3l text-center mb-lg-5 mb-3">
                <span>Get Intouch</span>Contact Us</h3>
			<div class="map">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d423286.27404345275!2d-118.69191921441556!3d34.02016130939095!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2c75ddc27da13%3A0xe22fdf6f254608f4!2sLos+Angeles%2C+CA%2C+USA!5e0!3m2!1sen!2sin!4v1522474296007"
				    allowfullscreen></iframe>
				<div class="main_grid_contact">
					<div class="form">
						<h4 class="mb-4 text-center">Send us a message</h4>
						<form action="#" method="post">
							<div class="form-group">
								<label class="my-2">Name</label>
								<input class="form-control" type="text" name="Name" placeholder="" required="">
							</div>
							<div class="form-group">
								<label>Email</label>
								<input class="form-control" type="email" name="Email" placeholder="" required="">
							</div>
							<div class="form-group">
								<label>Message</label>
								<textarea id="textarea" placeholder=""></textarea>
							</div>
							<div class="input-group1">
								<input class="form-control" type="submit" value="Submit">
							</div>
						</form>
					</div>
				</div>
			</div>
		<!--	<div class="container">
				<div class="address row">
					<div class="col-lg-4 address-grid-w3ls">
						<div class="row address-info">
							<div class="col-md-3 address-left text-center">
								<i class="far fa-map"></i>
							</div>
							<div class="col-md-9 address-right text-left">
								<h6 class="ad-info text-uppercase mb-2">Address</h6>
								<p> California, USA

								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-4 address-grid-w3ls">
						<div class="row address-info">
							<div class="col-md-3 address-left text-center">
								<i class="far fa-envelope"></i>
							</div>
							<div class="col-md-9 address-right text-left">
								<h6 class="ad-info text-uppercase mb-2">Email</h6>
								<p>Email :
									<a href="mailto:example@email.com"> mail@example.com</a>
								</p>
							</div>

						</div>
					</div>
					<div class="col-lg-4 address-grid-w3ls">
						<div class="row address-info">
							<div class="col-md-3 address-left text-center">
								<i class="fas fa-mobile-alt"></i>
							</div>
							<div class="col-md-9 address-right text-left">
								<h6 class="ad-info text-uppercase mb-2">Phone</h6>
								<p>+1 234 567 8901</p>

							</div>
						</div>
					</div>
				</div>
			</div>-->
		</div>
	</section>
	<!-- //contact -->
   </asp:Content>