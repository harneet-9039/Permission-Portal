<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="AppPortal.Gallery" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <ol class="breadcrumb">
					<li class="breadcrumb-item">
						<a href="Index.aspx">Home</a>
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
   
 </asp:Content>

