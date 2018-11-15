<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Applications.aspx.cs" Inherits="AppPortal.Department.Applications" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../User/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../images/logo.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Applications
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
  <script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <!-- CSS Files -->
  <link href="../User/assets/css/material-dashboard.css?v=2.1.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="../User/assets/demo/demo.css" rel="stylesheet" />
   <script type="text/javascript">
    function openModal() {
        $('#exampleModalCenter').modal('show');
    }
</script>
</head>

<body class="">
<form id="form1" runat="server">
  <div class="wrapper ">
    <div class="sidebar" data-color="purple" data-background-color="white">
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
           <li class="nav-item active">
            <a class="nav-link" href="./Applications.aspx">
              <i class="material-icons">content_paste</i>
              <p>Applications</p>
            </a>
          </li>
		  <li class="nav-item">
            <a class="nav-link" href="./RejectedApplications.aspx">
              <i class="material-icons">content_paste</i>
              <p>Rejected Applications</p>
            </a>
          </li>
		  <li class="nav-item">
            <a class="nav-link" href="./AcceptedApplications.aspx">
              <i class="material-icons">content_paste</i>
              <p>Accepted Applications</p>
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
            <a class="navbar-brand" href="#pablo">Hello, <asp:Label ID="department_txt" runat="server"></asp:Label></a>
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
                  <h4 class="card-title ">Applications Pending</h4>
                  <p class="card-category"> Here is the list of applications pending for approval (* Please disable any download manager for better experience.)</p>
                </div>
                <div class="card-body">
                  <div class="table-responsive">
                     <asp:GridView ID="User_grd" DataKeyNames="AppId, ApplicationPath"  AutoGenerateColumns="false" CellPadding="0" HeaderStyle-CssClass="text-primary" CellSpacing="0" GridLines="None" BorderStyle="None" CssClass="table" runat="server">
                  
                    <Columns>

                 <asp:BoundField DataField="Purpose of Application" HeaderStyle-Font-Size="Medium" HeaderText="Purpose of Application" >
               
                 </asp:BoundField>
                 <asp:BoundField DataField="Submission Date" HeaderStyle-Font-Size="Medium" HeaderText="Submission Date">
                 
                 </asp:BoundField>
                 <asp:BoundField DataField="User Name" HeaderStyle-Font-Size="Medium" HeaderText="User Name">
                 
                 </asp:BoundField>
                  <asp:BoundField DataField="Course Pursuing" HeaderStyle-Font-Size="Medium" HeaderText="Course Pursuing">
                 <ItemStyle Width="20px" />
                 </asp:BoundField>
                  <asp:BoundField DataField="Venue Requested" HeaderStyle-Font-Size="Medium" HeaderText="Venue Requested">
                 
                 </asp:BoundField>
               <asp:TemplateField>
                 <ItemTemplate>
                 
                 <asp:HyperLink ID="view_btn" CssClass="btn btn-primary" NavigateUrl='<%# Eval("ApplicationPath") %>' style="height:30px;padding-top:8px;" runat="server" Text="View" />

                 </ItemTemplate>
                 <ItemStyle Width="20px" />
                 </asp:TemplateField>
                   <asp:TemplateField>
                 <ItemTemplate>
                 
                 <asp:Button ID="Approve_btn" CssClass="btn btn-primary" style="height:30px;padding-top:8px;" OnClick="Approve_btn_Click" Text='<%# CheckStatus(Eval("Column1").ToString()).ToString() %>' runat="server"  />

                 </ItemTemplate>
                 <ItemStyle Width="20px" />
                 </asp:TemplateField>
                   <asp:TemplateField>
                 <ItemTemplate>
                 
                 <asp:Button ID="Reject_btn" CssClass="btn btn-primary" style="height:30px;padding-top:8px;" OnClick="Reject_btn_Click" Text="Reject" runat="server"  />

                 </ItemTemplate>
                 <ItemStyle Width="20px" />
                 </asp:TemplateField>
                
             </Columns>
                    </asp:GridView>
                  </div>
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
  </form>
  <!--   Core JS Files   -->
  <script src="../assets/js/core/jquery.min.js" type="text/javascript"></script>
  <script src="../assets/js/core/popper.min.js" type="text/javascript"></script>
  <script src="../assets/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chartist JS -->
  <script src="../assets/js/plugins/chartist.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="../assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../assets/js/material-dashboard.min.js?v=2.1.0" type="text/javascript"></script>
  <!-- Material Dashboard DEMO methods, don't include it in your project! -->
  <script src="../assets/demo/demo.js"></script>
</body>

</html>