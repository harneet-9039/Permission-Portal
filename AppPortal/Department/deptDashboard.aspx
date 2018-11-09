<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deptDashboard.aspx.cs" Inherits="AppPortal.Department.deptDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../Department/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../images/logo.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Department Dashboard
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="../Department/assets/css/material-dashboard.css?v=2.1.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="../Department/assets/demo/demo.css" rel="stylesheet" />
</head>

<body class="">
    <form runat="server">
  <div class="wrapper ">
    <div class="sidebar" data-color="purple" data-background-color="white" data-image="../Department/assets/img/cover1.jpg">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
      <div class="logo">
        <a href="../index.aspx" class="simple-text logo-normal">
          <img src="../images/logo.png" style="height:100px;width:100px;" />
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
         <!-- <li class="nav-item active  ">
            <a class="nav-link" href="./dashboard.html">
              <i class="material-icons">dashboard</i>
              <p>Dashboard</p>
            </a>
          </li>-->
        <!--  <li class="nav-item ">
            <a class="nav-link" href="./user.html">
              <i class="material-icons">person</i>
              <p>User Profile</p>
            </a>
          </li>-->
          <li class="nav-item ">
            <a class="nav-link" href="./Applications.aspx">
              <i class="material-icons">content_paste</i>
              <p>Applications</p>
            </a>
          </li>
		  <li class="nav-item ">
            <a class="nav-link" href="./Rejected.aspx">
              <i class="material-icons">content_paste</i>
              <p>Rejected</p>
            </a>
          </li>
		  <li class="nav-item ">
            <a class="nav-link" href="./Accepted.aspx">
              <i class="material-icons">content_paste</i>
              <p>Accepted</p>
            </a>
          </li>
         <!-- <li class="nav-item ">
            <a class="nav-link" href="./typography.html">
              <i class="material-icons">library_books</i>
              <p>Typography</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./icons.html">
              <i class="material-icons">bubble_chart</i>
              <p>Icons</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./map.html">
              <i class="material-icons">location_ons</i>
              <p>Maps</p>
            </a>
          </li>-->
          <!--<li class="nav-item ">
            <a class="nav-link" href="./Notifications.aspx">
              <i class="material-icons">notifications</i>
              <p>Notifications</p>
            </a>
          </li>
          <!-- <li class="nav-item active-pro ">
                <a class="nav-link" href="./upgrade.html">
                    <i class="material-icons">unarchive</i>
                    <p>Upgrade to PRO</p>
                </a>
            </li> -->
        </ul>
      </div>
    </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top navbar-custom ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" href="#">Hello, <asp:Label ID="department_txt" runat="server"></asp:Label></a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end">
          <!--  <form class="navbar-form">
              <div class="input-group no-border">
                <input type="text" value="" class="form-control" placeholder="Search...">
                <button type="submit" class="btn btn-white btn-round btn-just-icon">
                  <i class="material-icons">search</i>
                  <div class="ripple-container"></div>
                </button>
              </div>
            </form>-->
            <ul class="navbar-nav">
              <!--<li class="nav-item">
                <a class="nav-link" href="#pablo">
                  <i class="material-icons">dashboard</i>
                  <p class="d-lg-none d-md-block">
                    Stats
                  </p>
                </a>
              </li>-->
                
             <!-- <li class="nav-item dropdown">
                <a class="nav-link" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="material-icons">notifications</i>
                  <span class="notification">5</span>
                  <p class="d-lg-none d-md-block">
                    Some Actions
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                  <a class="dropdown-item" href="#">Mike John responded to your email</a>
                  <a class="dropdown-item" href="#">You have 5 new tasks</a>
                  <a class="dropdown-item" href="#">You're now friend with Andrew</a>
                  <a class="dropdown-item" href="#">Another Notification</a>
                  <a class="dropdown-item" href="#">Another One</a>
                </div>
              </li>-->
              <li class="nav-item dropdown">
                <a class="nav-link" href="#" id="profileDropDownMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="material-icons">person</i>
                  <p class="d-lg-none d-md-block">
                    Department
                  </p>
                </a>
                  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                  <asp:Button ID="logout_btn" OnClick="logout_btn_Click" CssClass="dropdown-item" runat="server" Text="Log Out" />
                  
                </div>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
	  
      <div class="content" style="background-image: url(../Department/assets/img/cover3.jpg);">
      <!--   <div>-->
           <h3><i><a href="../Index.aspx">GO TO HOME SITE</a></i></h3>
          <div class="container-fluid">
          
         
        </div>
      </div>
       
     <!-- </div>-->
	  
	  <!--footer-->
	  
      <footer class="footer">
        <div class="container-fluid">
          <nav class="float-left">
            <ul>
              <li>
                <a href="../Index.aspx">
                 <b> Permission Portal</b>
                </a>
              </li>
              <li>
                <a href="../Index.aspx">
                  About Us
                </a>
              </li>
              <li>
                <a href="../Gallery.aspx">
                  Gallery
                </a>
              </li>
              <li>
                <a href="../Team.aspx">
                  Team
                </a>
              </li>
			  </li>
              <li>
                <a href="../Contact">
                  Contact Us
                </a>
              </li>
            </ul>
          </nav>
         <div class="copyright float-right">
            &copy;
            <script>
              document.write(new Date().getFullYear())
            </script>, made with <i class="material-icons">favorite</i> by
            <a href="../Team.aspx" target="_blank">ASP.H</a>
          </div>
        </div>
      </footer>
    </div>
  </div>
</form>
     
    <!--//Login-->
  <!--   Core JS Files   -->
  <script src="../Department/assets/js/core/jquery.min.js" type="text/javascript"></script>
  <script src="../Department/assets/js/core/popper.min.js" type="text/javascript"></script>
  <script src="../Department/assets/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
  <script src="../Department/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chartist JS -->
  <script src="../Department/assets/js/plugins/chartist.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="../Department/assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../Department/assets/js/material-dashboard.min.js?v=2.1.0" type="text/javascript"></script>
  <!-- Material Dashboard DEMO methods, don't include it in your project! -->
  <script src="../Department/assets/demo/demo.js"></script>
  <script>
    $(document).ready(function() {
        // Javascript method's body can be found in Department/assets/js/demos.js
      md.initDashboardPageCharts();

    });
  </script>

</body>
</html>
