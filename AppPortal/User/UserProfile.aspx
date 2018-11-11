<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="AppPortal.User.UserProfile" %>

<!DOCTYPE html>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

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
<!--  jQuery -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />
  <link href="../User/bootstrap-datepicker/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="../User/bootstrap-datepicker/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
  	<link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="assets/dist/material-datetime-picker.css?version=1" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/gijgo@1.9.10/css/gijgo.min.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
    function openModal() {
        $('#exampleModalCenter').modal('show');
    }
</script>
</head>


<body class="">
<form runat="server">
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
              <p>View Current Applications</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="acceptedApplications.aspx">
              <i class="material-icons">library_books</i>
              <p>View Rejected Applications</p>
            </a>
          </li>
         
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
         
            <ul class="navbar-nav">
            
              <li class="nav-item dropdown">
                <a class="nav-link" href="#" id="navbarDropdownMenuLink_sec" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="material-icons" style="float:right;">person</i>
                  <p class="d-lg-none d-md-block">
                      User
                  </p>
                </a>
                  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                  <!--<a class="dropdown-item" href="#">Profile</a>
                  <a class="dropdown-item" href="#">Log Out</a>-->
                      <asp:Button ID="profile_btn" CssClass="dropdown-item" runat="server" Text="Profile" href="UserProfile.aspx"/>
                  
                      <asp:Button ID="logout_btn" OnClick="logout_btn_Click" CssClass="dropdown-item" runat="server" Text="Log Out" />
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
                  <h4 class="card-title">Your Profile&nbsp;( <span>* Year of Study and Email are only allowed to be Updated.</span>)</h4>
               
                </div>
               <div class="card-body">
                 
                   
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">Name</label>
                          <asp:TextBox ID="UserName" runat="server" Enabled="false" CssClass="form-control" AutoComplete="off"></asp:TextBox>
                        </div>
                      </div>
                    
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">Registration no.</label>
                          <asp:TextBox ID="UserReg" runat="server" Enabled="false" CssClass="form-control" AutoComplete="off"></asp:TextBox>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">Department</label>
                           <asp:TextBox ID="UserDept" runat="server" Enabled="false" CssClass="form-control" AutoComplete="off" ></asp:TextBox>
                        </div>
                      </div>
                        
                     
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">Course</label>
                           <asp:TextBox ID="UserCourse" runat="server" Enabled="false" CssClass="form-control" AutoComplete="off"></asp:TextBox>
                        </div>
                      </div>
                        </div>
                      <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">Year of Study</label>
                           <asp:TextBox ID="YearOfStudy" runat="server" Enabled="true" CssClass="form-control" AutoComplete="off"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="Year_vld" runat="server" ControlToValidate="YearOfStudy" ErrorMessage="*year cannot be empty." Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationGroup="Update"></asp:RequiredFieldValidator>
                        </div>
                      </div>
                  
                  
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">Email</label>
                          <asp:TextBox ID="UserEmail" runat="server" Enabled="true" CssClass="form-control" AutoComplete="off"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="Email_vld" runat="server" ControlToValidate="UserEmail" ErrorMessage="*Email cannot be empty." Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationGroup="Update"></asp:RequiredFieldValidator>
                          <asp:RegularExpressionValidator ID="EmailPatternValidator" runat="server" ControlToValidate="UserEmail" ErrorMessage="*E-mail address must be in the format of name@domain.xyz." SetFocusOnError="true" ValidationGroup="Update" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                        </div>
                      </div>
                       
                    </div>
                    <div class="row" style="align-content:center">
                      <div class="col-md-4">
                       
                      </div>
                       <div class="col-md-4">
                        <div class="form-group">
                         <label class="bmd-label-floating">Signature</label>
                          <img id="UserSign" runat="server" style="height:50px;width:100px" />
                        </div>
                      </div>
                   
                    </div>
                     <div class="row" style="align-content:center">
                      <div class="col-md-4">
                       
                      </div>
                       <div class="col-md-4">
                        <div class="form-group">
                         <asp:Button ID="Update_btn" OnClick="update_btn_Click" runat="server" ValidationGroup="Update" Text="Update" class="btn btn-primary " />
                         
                         
                        </div>
                      </div>
                   
                    </div>
                    
                 
                    <div class="clearfix"></div>
                  
                </div>
              </div>
            </div>
         
          </div>
        </div>
      </div>
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
                        
                       <h5><asp:Label ID="error_lbl" class="text-center mb-4" runat="server" Text=""></asp:Label></h5>
                            <!--<iframe id="urIframe" style="width:100%; height:500px" runat="server"></iframe>-->

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
  
</form>
  

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
    

</body>
</html>




