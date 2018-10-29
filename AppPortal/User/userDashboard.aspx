<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userDashboard.aspx.cs" Inherits="AppPortal.User.userDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../User/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../images/logo.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    User Dashboard
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="../User/assets/css/material-dashboard.css?v=2.1.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="../User/assets/demo/demo.css" rel="stylesheet" />
   <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
    <link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />
  
    <link href="../User/bootstrap-datepicker/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
  	<link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="assets/dist/material-datetime-picker.css?version=1" rel="stylesheet" />

    
    <link href="https://cdn.jsdelivr.net/npm/gijgo@1.9.10/css/gijgo.min.css" rel="stylesheet" type="text/css" />
   
    

</head>

<body class="">
  <div class="wrapper ">
    <div class="sidebar" data-color="purple" data-background-color="white" data-image="../User/assets/img/sidebar-1.jpg">
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
          <li class="nav-item active  ">
            <a class="nav-link" href="userDashboard.aspx">
              <i class="material-icons">content_paste</i>
              <p>Create New Application</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="viewApplications.aspx">
              <i class="material-icons">library_books</i>
              <p>View Applications</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="acceptedApplications.aspx">
              <i class="material-icons">library_books</i>
              <p>Accepted Applications</p>
            </a>
          </li>
          <!--<li class="nav-item ">
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
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./notifications.html">
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
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" href="#">Hello, <asp:Label ID="username_txt" runat="server"></asp:Label></a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
          </button>
         <div class="collapse navbar-collapse justify-content-end">
           <form class="navbar-form">
               
           <!--   <div class="input-group no-border">
                <input type="text" value="" class="form-control" placeholder="Search...">
                <button type="submit" class="btn btn-white btn-round btn-just-icon">
                  <i class="material-icons">search</i>
                  <div class="ripple-container"></div>
                </button>
              </div>-->
            </form>
            <ul class="navbar-nav">
              <!--<li class="nav-item">
                <a class="nav-link" href="#pablo">
                  <i class="material-icons">dashboard</i>
                  <p class="d-lg-none d-md-block">
                    Stats
                  </p>
                </a>
              </li>-->
              <li class="nav-item dropdown">
                <a class="nav-link" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="material-icons">notifications</i>
                  <span class="notification"></span>
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
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link" href="#" id="navbarDropdownMenuLink_sec" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="material-icons" style="float:right;">person</i>
                  <p class="d-lg-none d-md-block">
                      User
                  </p>
                </a>
                  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink_sec">
                  <a class="dropdown-item" href="#">Profile</a>
                  <a class="dropdown-item" href="#">Log Out</a>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      
      <!-- End Navbar -->
<div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
             
              <div class="card">
               <div class="card-header card-header-primary">
                  <h4 class="card-title">New Application</h4>
                  <p class="card-category">Complete the below details</p>
                </div>
                <div class="card-body">
                  <form runat="server">
                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group">
                          <label class="bmd-label-floating">Purpose of Application</label>
                          <asp:Textbox ID="purpose_txt" runat="server" class="form-control"></asp:Textbox>
                        </div>
                       

                      </div>
                      <div class="col-md-12">
                        <div class="form-group">
                          <label class="bmd-label-floating">Select Venue</label>
                          <!--<input type="text" class="form-control">-->
                          <asp:DropDownList ID="venue_txt" runat="server" class="form-control">
                              <asp:ListItem Value="">1</asp:ListItem>
                          </asp:DropDownList>
                            
                        </div>
                      </div>
                      <!--<div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">From</label>
                          <select class="form-control">
                              <option>1</option><option>1</option><option>1</option><option>1</option><option>1</option>
                          </select>
                        </div>
                      </div>-->
                    </div>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="control-label" for="date">From</label>
                          <asp:TextBox ID="date1" runat="server" class="form-control c-datepicker-input"></asp:TextBox>
                          
                        </div>
                      </div>
                        <div class="col-md-6">
                        <div class="form-group">
                          <label class="control-label" for="date">To</label>
                          <asp:TextBox ID="date2" runat="server" class="form-control c-datepicker-input-to"></asp:TextBox>
                       
                        </div>
                      </div>
                    </div>
                     <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                       
                          <label class="control-label" for="date">Time (From)</label>
                          <asp:TextBox ID="timepicker_txt" runat="server" class="form-control"></asp:TextBox>
                          
                        </div>
                      </div>
                        <div class="col-md-6">
                        <div class="form-group">
                          <label class="control-label" for="date">Time (To)</label>
                          <asp:TextBox ID="timepicker_to_txt" runat="server" class="form-control"></asp:TextBox>
                       
                        </div>
                      </div>
                    </div>
                <!--<div class="row">
                        <div class="form-group">
                <label for="dtp_input2" class="col-md-2 control-label">Date Picking</label>
                <div class="input-group date form_date col-md-5" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                    <asp:TextBox ID="start_date" CssClass="form-control" size="16" value="" runat="server" readonly></asp:TextBox>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
					<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
				 <asp:HiddenField ID="dtp_input2" runat="server" />
            </div>
			<div class="form-group">
                <label for="dtp_input3" class="col-md-2 control-label">Time Picking</label>
                <div class="input-group date form_time col-md-5" data-date="" data-date-format="hh:ii" data-link-field="dtp_input3" data-link-format="hh:ii">
                    <asp:TextBox ID="end_date" CssClass="form-control" size="16" value="" runat="server" readonly></asp:TextBox>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
					<span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
                </div>
				 <asp:HiddenField ID="dtp_input3" runat="server" />
            </div>
                      
                    </div>
                    <!--<div class="row">
                      <div class="col-md-12">
                        <div class="form-group">
                          <label>About Me</label>
                          <div class="form-group">
                            <label class="bmd-label-floating"> Lamborghini Mercy, Your chick she so thirsty, I'm in that two seat Lambo.</label>
                            <textarea class="form-control" rows="5"></textarea>
                          </div>
                        </div>
                      </div>
                    </div>-->
                    <asp:Button ID="submit_btn" runat="server" class="btn btn-primary pull-right" Text="Generate Application" />
                    <div class="clearfix"></div>
                      
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
    </div>
    <footer class="footer">
        <div class="container-fluid">
          <nav class="float-left">
            <ul>
              <li>
                <a href="../Index.aspx">
                  Permission Portal
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
              <li>
                <a href="../Contact.aspx">
                  Contact
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
  <!--   Core JS Files   
  <script src="../User/assets/js/core/jquery.min.js" type="text/javascript"></script>-->
  <script src="../User/assets/js/core/popper.min.js" type="text/javascript"></script>
  <script src="../User/assets/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
  <script src="../User/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chartist JS -->
  <script src="../User/assets/js/plugins/chartist.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="../User/assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../User/assets/js/material-dashboard.min.js?v=2.1.0" type="text/javascript"></script>
  <!-- Material Dashboard DEMO methods, don't include it in your project! -->
  <script src="../User/assets/demo/demo.js"></script>
  <script>
    $(document).ready(function() {
      // Javascript method's body can be found in assets/js/demos.js
      md.initDashboardPageCharts();

    });
  </script>  
  <script src="https://unpkg.com/babel-polyfill@6.2.0/dist/polyfill.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.17.1/moment.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/rome/2.1.22/rome.standalone.js"></script>
   <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/gijgo@1.9.10/js/gijgo.min.js" type="text/javascript"></script>
    <script src="assets/dist/material-datetime-picker.js"></script>

<script>
    const el = document.querySelector('.c-datepicker-input');
    const picker = new MaterialDatetimePicker({})
 
      .on('submit', (d) => {
    
          el.value = d.format("DD/MM/YYYY");
      
      });
    el.addEventListener('focus', () => {
        
        picker.open();
        
    }, false);

    const ele = document.querySelector('.c-datepicker-input-to');
    const picker_chk = new MaterialDatetimePicker({})
 
      .on('submit', (d) => {
    
          ele.value = d.format("DD/MM/YYYY");
      
      });
    ele.addEventListener('focus', () => {
        
        picker_chk.open();
        
    }, false);

</script>
<script>
   
    $('#timepicker_txt').timepicker();
    $('#timepicker_to_txt').timepicker();
    </script>

</body>
</html>
