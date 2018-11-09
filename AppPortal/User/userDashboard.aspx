﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userDashboard.aspx.cs" EnableEventValidation="false" Inherits="AppPortal.User.userDashboard" %>

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
 <script type="text/javascript">
    function openModalApp() {
        $('#ApplicationModal').modal('show');
    }
</script>
<style type="text/css">
.modalBackground 
{
    height:100%;
    background-color:#EBEBEB;
    filter:alpha(opacity=70);
    opacity:0.8;
}


 </style> 
<script type="text/javascript">
function pageLoad() {
            var mpe = $find("MPE");
            mpe.add_shown(onShown);
        }
        function onShown() {
            var background = $find("MPE")._backgroundElement;
            background.onclick = function () { $find("MPE").hide(); }
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
                    Notifications
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
                  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                  <!--<a class="dropdown-item" href="#">Profile</a>
                  <a class="dropdown-item" href="#">Log Out</a>-->
                      <asp:Button ID="profile_btn" CssClass="dropdown-item" runat="server" Text="Profile" />
                  
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
                  <h4 class="card-title">New Application</h4>
                  <p class="card-category">Complete the below details</p>
                </div>
                <div class="card-body">
                  
                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group">
                          <label class="bmd-label-floating">Purpose of Application</label>
                          <asp:Textbox ID="purpose_txt" runat="server" class="form-control"></asp:Textbox>
                        </div>
                       
                        </div>
                      </div>
                      <div class="row">
                      <div class="col-md-12">
                        <div class="form-group">
                          <label class="bmd-label-floating">Select Venue</label>
                            <asp:DropDownList ID="venue_ddl" runat="server" CssClass="form-control">
                             
                          </asp:DropDownList>
                        </div>
                      </div>
                      </div>
                   
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="control-label" for="date">From</label>
                          <asp:TextBox ID="date1" runat="server" class="form-control c-datepicker-input"></asp:TextBox>
                            <asp:CustomValidator ID="cstvalid" ControlToValidate="date1" OnServerValidate="cstvalid_ServerValidate" ForeColor="Red" ValidationGroup="Error" runat="server" ErrorMessage="* Date cannot be before current date"></asp:CustomValidator>
                        </div>
                      </div>
                        <div class="col-md-6">
                        <div class="form-group">
                          <label class="control-label" for="date">To</label>
                          <asp:TextBox ID="date2" runat="server" class="form-control c-datepicker-input-to"></asp:TextBox>
                        <asp:CustomValidator ID="cstvalidto" ControlToValidate="date2" OnServerValidate="cstvalidto_ServerValidate" ForeColor="Red" ValidationGroup="Error" runat="server" ErrorMessage="* Date cannot be before current date"></asp:CustomValidator>

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
                     
                    <asp:Button ID="generate_btn" runat="server" class="btn btn-primary pull-right" Text="Generate Application" ValidationGroup="Error" CausesValidation="true" OnClick="generate_btn_Click" />
                        
                      <!--<script type="text/javascript">
                          function pdf() {
                              var pdf = new PDFObject({
                                  url: "https://something.com/HTC_One_XL_User_Guide.pdf",
                                  id: "pdfRendered",
                                  pdfOpenParams: {
                                    view: "FitH"
                                  }
                                }).embed("pdfRenderer");
                          }
                      </script>-->
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

      <div class="modal fade" id="ApplicationModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
            
                <div class="modal-header text-center">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        
                    </button>
                     
                </div>
                <div class="modal-body" >

                    <div class="login px-4 mx-auto mw-100" style="border:solid;padding:5px">
                       <h5 class="text-center mb-4"><b><u>Generated Application</u></b></h5>
                       <br /><br />
                     
                        <asp:Panel ID="App_pnl" style="font-size:13px" runat="server">
                        <div class="row">
                        To,
                        </div>
                        <div class="row">
                            <asp:Label ID="dept_lbl" runat="server" Text=""></asp:Label>&nbsp;Department
                        </div>
                        <div class="row">
                        MNNIT, Allahabad.
                        </div>
                        <br />
                        <div class="row">
                        Date:&nbsp;&nbsp;
                        <asp:Label ID="date_lbl" runat="server" Text=""></asp:Label>
                        </div>
                        <br />
                        <div class="row">
                        Subject: Requesting Permission for &nbsp; <asp:Label ID="subdept_lbl" runat="server" Text=""></asp:Label>
                        </div>
                        <br /><br />
                        <div class="row">
                        Sir/Mam,
                        </div>
                        <br />
                        <div class="row">
                          
                         <asp:Label ID="container_lbl" runat="server" Text="">
                        <asp:label ID="body_lbl" runat="server">My name is&nbsp;<asp:Label ID="appname_lbl" runat="server" Text=""></asp:Label>,&nbsp;
                        Registration Number:&nbsp;<b><asp:Label ID="reg_lbl" runat="server" Text=""></asp:Label></b> 
                        of <asp:Label ID="course_yr_lbl" runat="server" Text=""></asp:Label>. I request you to provide me with 
                        permission for the venue, i.e&nbsp;<b><asp:Label ID="venue_lbl" runat="server" Text=""></asp:Label></b>&nbsp;from 
                        <asp:Label ID="dateapp_lbl" runat="server" Text=""></asp:Label>,&nbsp;<asp:Label ID="time_lbl" runat="server" Text=""></asp:Label>
                        for&nbsp;<b><asp:Label ID="reason_lbl" runat="server" Text=""></asp:Label>.</b></asp:Label>
                        
                        <br />
                        Kindly grant the permission for the same. I would be grateful to you.
                        <br /><br />
                        Thanking You,<br /><br />
                        Yours Sincerely,
                        <br /><br />
                                <asp:Label ID="Nameapp_lbl" runat="server" Text=""></asp:Label><br />
                                 <asp:Label ID="RegNo_lbl" runat="server" Text=""></asp:Label><br />
                                <asp:Image ID="Sign_lbl" runat="server" style="width:10%;height:10%" />
                        </asp:Label>
                        </div>
                        </asp:Panel>
                        
                         </div>
                        <div class="row" style="color:red;font-size:small;margin-left:10px;margin-right:10px;">
                            *Please go through the application carefully. If wrong information found, application will be rejected straightforward.
                        </div>
                          <div class="row" id="btn" style="justify-content:flex-end">
                         <button ID="save_btn" class="btn btn-primary" style="visibility:hidden;" onclick="save()">Save</button>
                         <button ID="editapp_btn" class="btn btn-primary" OnClick="gen()">Edit</button> &nbsp;&nbsp;&nbsp;
                         <asp:Button ID="submitapp_btn" runat="server" Text="Submit" class="btn btn-primary "/>
                         </div> 
                    </div>
                </div>
         </div>
    </div>
   <!-- <script type="text/javascript">
        function gen() {
            var txt = document.getElementById('<%=container_lbl.ClientID%>').innerText;
            alert(txt);
        }
    </script>-->
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
<div id="modalbackground" style=" position: absolute; height:100%; width:100%; display:none; z-index:10000; background-color: #7F7F7F; opacity: 0.5;"></div>
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
    <!--
<script type="text/javascript">
$(function () {
    //Loop through all Labels with class 'editable'.
    $(".editable").each(function () {
        //Reference the Label.
        var label = $(this);
 
        //Add a TextBox next to the Label.
        label.after("<textarea style = 'display:none;width:100%;' columns='150' rows='8' />");
 
        //Reference the TextBox.
        var textarea = $(this).next();
 
        //Set the name attribute of the TextBox.
        var id = this.id.split('_')[this.id.split('_').length - 1];
        textarea[0].name = id.replace("lbl", "txt");
 
        //Assign the value of Label to TextBox.
      
        textarea.val(document.getElementById('<%=body_lbl.ClientID%>').innerText);
 
        //When Label is clicked, hide Label and show TextBox.
        label.click(function () {
            $(this).hide();
            $(this).next().show();
        });
 
        //When focus is lost from TextBox, hide TextBox and show Label.
        textarea.focusout(function () {
             var reg =/<(script)*?>/g; 
            if (reg.test($(this).val()) == true) {
                alert('Script Tag is not allowed !');
                preventDefault();
            }
            
            $(this).hide();
            $(this).prev().html($(this).val());
            $(this).prev().show();
        });
    });
});
</script>-->
<script type="text/javascript">
    function gen() {
        save_btn.disabled = false;
        editapp_btn.disabled = true;
        document.getElementById('editapp_btn').style.visibility = 'hidden';
        document.getElementById('submitapp_btn').style.visibility = 'hidden';
        document.getElementById('save_btn').style.visibility='visible';
        //Reference the Label.
        var label = $(body_lbl);
 
        //Add a TextBox next to the Label.
        label.after("<textarea  id='t' style = 'display:none;width:100%;' columns='150' rows='8' />");
 
        //Reference the TextBox.
        var textarea = $(body_lbl).next();
 
        //Set the name attribute of the TextBox.
        var id = body_lbl.id.split('_')[body_lbl.id.split('_').length - 1];
        textarea[0].name = id.replace("lbl", "txt");
 
        //Assign the value of Label to TextBox.
      
        textarea.val(document.getElementById('<%=body_lbl.ClientID%>').innerText);

        $(body_lbl).hide();
        $(body_lbl).next().show();

        //When focus is lost from TextBox, hide TextBox and show Label.
       /* textarea.focusout(function () {
             var reg =/<(script)*?>/g; 
            if (reg.test($(this).val()) == true) {
                alert('Script Tag is not allowed !');
                preventDefault();
            }
            
            $(this).hide();
            $(this).prev().html($(this).val());
            $(this).prev().show();
            editapp_btn.disabled = false;
        });*/
       
        
       
    }
    function save() {
         var reg =/<(script)*?>/g; 
            if (reg.test($(t).val()) == true) {
                alert('Script Tag is not allowed !');
                preventDefault();
            }
            
        $(t).hide();
        $(body_lbl).html($(t).val());
        $(body_lbl).show();
        editapp_btn.disabled = false;
        save_btn.disabled = true;
        document.getElementById('editapp_btn').style.visibility = 'visible';
        document.getElementById('submitapp_btn').style.visibility = 'visible';
        document.getElementById('save_btn').style.visibility='hidden';
    }
</script>
</body>
</html>
