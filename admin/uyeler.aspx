<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uyeler.aspx.cs" Inherits="bakkal.admin.uyeler" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Corona Admin</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="assets/vendors/jvectormap/jquery-jvectormap.css">
    <link rel="stylesheet" href="assets/vendors/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/vendors/owl-carousel-2/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/vendors/owl-carousel-2/owl.theme.default.min.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="assets/images/favicon.png" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-scroller">
  <!-- partial:partials/_sidebar.html -->
  <nav class="sidebar sidebar-offcanvas" id="sidebar">
  <div class="sidebar-brand-wrapper d-none d-lg-flex align-items-center justify-content-center fixed-top">
    <a class="sidebar-brand brand-logo" href="admin.aspx"><img src="assets/images/logo.svg" alt="logo" /></a>
    <a class="sidebar-brand brand-logo-mini" href="admin.aspx"><img src="assets/images/logo-mini.svg" alt="logo" /></a>
  </div>
  <ul class="nav">
    <li class="nav-item nav-category">
      <span class="nav-link">Navigation</span>
    </li>
    <li class="nav-item menu-items">
      <a class="nav-link" href="admin.aspx">
        <span class="menu-icon">
          <i class="mdi mdi-speedometer"></i>
        </span>
        <span class="menu-title">Dashboard</span>
      </a>
    </li>
    <li class="nav-item menu-items">
      <a class="nav-link" href="uyeler.aspx">
        <span class="menu-icon">
          <i class="mdi mdi-table-large"></i>
        </span>
        <span class="menu-title">Üyeler</span>
      </a>
    </li>
    <li class="nav-item menu-items">
      <a class="nav-link" href="kategoriler.aspx">
        <span class="menu-icon">
          <i class="mdi mdi-chart-bar"></i>
        </span>
        <span class="menu-title">Kategoriler</span>
      </a>
    </li>
    <li class="nav-item menu-items">
      <a class="nav-link" href="programlar.aspx">
        <span class="menu-icon">
          <i class="mdi mdi-contacts"></i>
        </span>
        <span class="menu-title">Programlar</span>
      </a>
    </li>
  </ul>
</nav>
  <!-- partial -->
  <div class="container-fluid page-body-wrapper">
    <!-- partial:partials/_navbar.html -->
           <nav class="navbar p-0 fixed-top d-flex flex-row">
      <div class="navbar-brand-wrapper d-flex d-lg-none align-items-center justify-content-center">
        <a class="navbar-brand brand-logo-mini" href="admin.aspx"><img src="assets/images/logo-mini.svg" alt="logo" /></a>
      </div>
      <div class="navbar-menu-wrapper flex-grow d-flex align-items-stretch">
        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
          <span class="mdi mdi-menu"></span>
        </button>
        <ul class="navbar-nav w-100">
          <li class="nav-item w-100">
            <form class="nav-link mt-2 mt-md-0 d-none d-lg-flex search">
              <input type="text" class="form-control" placeholder="Search products">
            </form>
          </li>
        </ul>
        <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item dropdown d-none d-lg-block">
            <a class="nav-link btn btn-success create-new-button" id="createbuttonDropdown" data-toggle="dropdown" aria-expanded="false" href="#">+ Create New Project</a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="createbuttonDropdown">
              <h6 class="p-3 mb-0">Projects</h6>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <div class="preview-icon bg-dark rounded-circle">
                    <i class="mdi mdi-file-outline text-primary"></i>
                  </div>
                </div>
                <div class="preview-item-content">
                  <p class="preview-subject ellipsis mb-1">Software Development</p>
                </div>
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <div class="preview-icon bg-dark rounded-circle">
                    <i class="mdi mdi-web text-info"></i>
                  </div>
                </div>
                <div class="preview-item-content">
                  <p class="preview-subject ellipsis mb-1">UI Development</p>
                </div>
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <div class="preview-icon bg-dark rounded-circle">
                    <i class="mdi mdi-layers text-danger"></i>
                  </div>
                </div>
                <div class="preview-item-content">
                  <p class="preview-subject ellipsis mb-1">Software Testing</p>
                </div>
              </a>
              <div class="dropdown-divider"></div>
              <p class="p-3 mb-0 text-center">See all projects</p>
            </div>
          </li>
          <li class="nav-item nav-settings d-none d-lg-block">
            <a class="nav-link" href="#">
              <i class="mdi mdi-view-grid"></i>
            </a>
          </li>
          <li class="nav-item dropdown border-left">
            <a class="nav-link count-indicator dropdown-toggle" id="messageDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
              <i class="mdi mdi-email"></i>
              <span class="count bg-success"></span>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="messageDropdown">
              <h6 class="p-3 mb-0">Messages</h6>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <img src="assets/images/faces/face4.jpg" alt="image" class="rounded-circle profile-pic">
                </div>
                <div class="preview-item-content">
                  <p class="preview-subject ellipsis mb-1">Mark send you a message</p>
                  <p class="text-muted mb-0"> 1 Minutes ago </p>
                </div>
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <img src="assets/images/faces/face2.jpg" alt="image" class="rounded-circle profile-pic">
                </div>
                <div class="preview-item-content">
                  <p class="preview-subject ellipsis mb-1">Cregh send you a message</p>
                  <p class="text-muted mb-0"> 15 Minutes ago </p>
                </div>
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <img src="assets/images/faces/face3.jpg" alt="image" class="rounded-circle profile-pic">
                </div>
                <div class="preview-item-content">
                  <p class="preview-subject ellipsis mb-1">Profile picture updated</p>
                  <p class="text-muted mb-0"> 18 Minutes ago </p>
                </div>
              </a>
              <div class="dropdown-divider"></div>
              <p class="p-3 mb-0 text-center">4 new messages</p>
            </div>
          </li>
          <li class="nav-item dropdown border-left">
            <a class="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#" data-toggle="dropdown">
              <i class="mdi mdi-bell"></i>
              <span class="count bg-danger"></span>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
              <h6 class="p-3 mb-0">Notifications</h6>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <div class="preview-icon bg-dark rounded-circle">
                    <i class="mdi mdi-calendar text-success"></i>
                  </div>
                </div>
                <div class="preview-item-content">
                  <p class="preview-subject mb-1">Event today</p>
                  <p class="text-muted ellipsis mb-0"> Just a reminder that you have an event today </p>
                </div>
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <div class="preview-icon bg-dark rounded-circle">
                    <i class="mdi mdi-settings text-danger"></i>
                  </div>
                </div>
                <div class="preview-item-content">
                  <p class="preview-subject mb-1">Settings</p>
                  <p class="text-muted ellipsis mb-0"> Update dashboard </p>
                </div>
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <div class="preview-icon bg-dark rounded-circle">
                    <i class="mdi mdi-link-variant text-warning"></i>
                  </div>
                </div>
                <div class="preview-item-content">
                  <p class="preview-subject mb-1">Launch Admin</p>
                  <p class="text-muted ellipsis mb-0"> New admin wow! </p>
                </div>
              </a>
              <div class="dropdown-divider"></div>
              <p class="p-3 mb-0 text-center">See all notifications</p>
            </div>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link" id="profileDropdown" href="#" data-toggle="dropdown">
              <div class="navbar-profile">
                &nbsp;<p class="mb-0 d-none d-sm-block navbar-profile-name">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></p>
                <i class="mdi mdi-menu-down d-none d-sm-block"></i>
              </div>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="profileDropdown">
              <h6 class="p-3 mb-0">Profile</h6>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <div class="preview-icon bg-dark rounded-circle">
                    <i class="mdi mdi-settings text-success"></i>
                  </div>
                </div>
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <div class="preview-icon bg-dark rounded-circle">
                    <i class="mdi mdi-logout text-danger"></i>
                  </div>
                </div>
                <div class="preview-item-content">
<%--                  <p class="preview-subject mb-1"></p>--%>
                <asp:Button ID="Button2" runat="server" Text="Çıkış yap"/>
                </div>
              </a>
              <div class="dropdown-divider"></div>
              <p class="p-3 mb-0 text-center">Advanced settings</p>
            </div>
          </li>
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="mdi mdi-format-line-spacing"></span>
        </button>
      </div>
    </nav>
    <!-- partial -->
    <div class="main-panel">
      <div class="content-wrapper">
                        <table cellpadding="0" cellspacing="0" style="width: 900px">
        <tr style="width:450"><td style="width: 450px" valign="top" >
    <table cellpadding="0" cellspacing="0" style="width: 450px">
        <tr><td colspan="2" height="30" class="admin_form_baslik">&nbsp; KULLANICI KAYIT FORMU</td></tr>       
<%--        <tr>
            <td style="width:150px; height:30px;" class="admin_form_left">&nbsp;Ad&nbsp;</td>
            <td style="width:300px; height:30px;"><asp:TextBox ID="txt_adi" runat="server" Width="200px" BorderColor="#CCCCCC" 
                    BorderStyle="Solid" BorderWidth="1px" Height="22px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width:150px; height:30px;" class="admin_form_left">&nbsp;Soyad&nbsp;</td>
            <td style="width:300px; height:30px;"><asp:TextBox ID="txt_soyad" runat="server" Width="200px" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Height="22px"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td style="width:150px; height:30px;" class="admin_form_left">&nbsp;Tel</td>
            <td style="width:300px; height:30px;"><asp:TextBox ID="txt_tel" runat="server" 
                    Width="200px" BorderColor="#CCCCCC" 
                    BorderStyle="Solid" BorderWidth="1px" Height="22px"></asp:TextBox>
             </td>
        </tr>
         <tr>
            <td style="width:150px; height:30px;" class="admin_form_left">&nbsp;Email</td>
            <td style="width:300px; height:30px;"><asp:TextBox ID="txt_mail" runat="server" 
                    Width="200px" BorderColor="#CCCCCC" 
                    BorderStyle="Solid" BorderWidth="1px" Height="22px"></asp:TextBox>
             </td>
        </tr>--%>
         <tr>
            <td style="width:150px; height:30px;" class="admin_form_left">&nbsp;Kullanıcı Adı</td>
            <td style="width:300px; height:30px;"><asp:TextBox ID="txt_kAdi" runat="server" Width="200px" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Height="22px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width:150px; height:30px;" class="admin_form_left">&nbsp;Şifre</td>
            <td style="width:300px; height:30px;"><asp:TextBox ID="txt_sifre" runat="server" Width="200px" TextMode="Password" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Height="22px"></asp:TextBox>
            </td>
        </tr>
                <tr>
            <td style="width:150px; height:30px;" class="admin_form_left">&nbsp;Yetki</td>
            <td style="width:300px; height:30px;"><asp:TextBox ID="txt_yetki" runat="server" Width="200px" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Height="22px"></asp:TextBox>
            </td>
        </tr>
        <%--<tr>
            <td style="width:150px; height:30px;" class="admin_form_left">&nbsp;Görev Tanımı</td>
            <td style="width:300px; height:30px;">
                <asp:DropDownList ID="ddl_gorevtanim" runat="server" Width="200px" Height="22px">
                    <asp:ListItem Value="1">Yönetici</asp:ListItem>
                    <asp:ListItem Value="2">Site Yöneticisi</asp:ListItem>  
                    <asp:ListItem Value="3">Emlak Danışmanı</asp:ListItem>                  
                </asp:DropDownList>
            </td>
        </tr>--%>
        <tr>
        </tr>
        <tr>
            <td style="width: 150px" class="admin_form_left">&nbsp;</td>
            <td style="width:300px; height:30px;">&nbsp;</td>
        </tr>
        <tr>
            <td align="left" style="width: 150px"><asp:Label ID="lbl_hata" runat="server" Font-Names="Verdana" Font-Size="X-Small" ForeColor="#C00000" Visible="False"></asp:Label>
            </td>
            <td style="width:300px; height:30px;">
                <asp:Button ID="Button1" runat="server" Text="KAYDET" Width="95px" 
                    onclick="Button1_Click" Font-Bold="True" ForeColor="#990000" />
                <asp:Button ID="Button3" runat="server" Text="SİL" Width="95px" 
                    onclick="Button3_Click" Font-Bold="True" ForeColor="#990000" />
            </td>
        </tr>
        <tr>
            <td style="width: 150px"></td>
            <td style="width:300px; height:30px;"></td>
        </tr>
        </table>
    
            </td>
            <td valign="top" style="width: 450px">
    <table cellpadding="0" cellspacing="0" style="width: 450px">
        <tr><td height="30" class="admin_form_baslik">KULLANICI LİSTESİ</td></tr>       
        <tr>
            <td style="height:30px;" align="left" valign="top">
                <asp:GridView ID="GridView1" runat="server" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
        BorderStyle="Solid" BorderWidth="1px" CellPadding="5" DataKeyNames="id"  PageSize="20" Width="380px">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <RowStyle Font-Names="Verdana" Font-Size="11px" ForeColor="#000066" 
            Height="25px" />
        <Columns>
<%--            <asp:TemplateField>
                <ItemTemplate >
                    <asp:ImageButton ID="ImageButton3" runat="server"  CommandArgument='<%# Bind("id") %>' CommandName="sil" 
                        ImageUrl="~/DESK/images/delete.jpg" 
                        OnClientClick="return confirm('Silmek istediginize eminmisiniz?')" Visible='<%# btn_kullanici((int) Eval ("id")) %> '  />
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
                <HeaderStyle Width="30px" />
<%--            </asp:TemplateField>--%>
            <asp:BoundField DataField="id" SortExpression="id" Visible="False" />
            <asp:BoundField DataField="kullanici_adi" HeaderText="Kullanıcı Adı"></asp:BoundField>
             <asp:BoundField DataField="yetki" HeaderText="Yetki" Visible="True" />
<%--            <asp:BoundField DataField="soyadi" HeaderText="Yetki"></asp:BoundField>--%>
           <%-- <asp:BoundField DataField="soyadi" HeaderText="TİPİ" SortExpression="soyadi"></asp:BoundField>--%>
            <%--<asp:TemplateField>
                <ItemTemplate>
                   <a href='<%# "kullanici_guncelle.aspx?userID=" + Eval("id") %>'>
                    <img alt="Kullanıcı Guncelle" border="0" src="images/edit.jpg" /></a>
                </ItemTemplate>
                <HeaderStyle Width="30px" />
            </asp:TemplateField>--%>
        </Columns>
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" Font-Names="Verdana" 
            Font-Size="12px" ForeColor="White" Height="30px" />
    </asp:GridView></td>
        </tr>
        </table>
    
            </td>
        </tr>
        <tr style="width:400px" >
            <td style="width: 380px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
      </div>
      <!-- content-wrapper ends -->
      <!-- partial:partials/_footer.html -->
      <footer class="footer">
        <div class="d-sm-flex justify-content-center justify-content-sm-between">
          <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © bootstrapdash.com 2020</span>
          <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center"> Free <a href="https://www.bootstrapdash.com/bootstrap-admin-template/" target="_blank">Bootstrap admin templates</a> from Bootstrapdash.com</span>
        </div>
      </footer>
      <!-- partial -->
    </div>
    <!-- main-panel ends -->
  </div>
  <!-- page-body-wrapper ends -->
</div>
<!-- container-scroller -->
<!-- plugins:js -->
<script src="assets/vendors/js/vendor.bundle.base.js"></script>
<!-- endinject -->
<!-- Plugin js for this page -->
<script src="assets/vendors/chart.js/Chart.min.js"></script>
<script src="assets/vendors/progressbar.js/progressbar.min.js"></script>
<script src="assets/vendors/jvectormap/jquery-jvectormap.min.js"></script>
<script src="assets/vendors/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="assets/vendors/owl-carousel-2/owl.carousel.min.js"></script>
<!-- End plugin js for this page -->
<!-- inject:js -->
<script src="assets/js/off-canvas.js"></script>
<script src="assets/js/hoverable-collapse.js"></script>
<script src="assets/js/misc.js"></script>
<script src="assets/js/settings.js"></script>
<script src="assets/js/todolist.js"></script>
<!-- endinject -->
<!-- Custom js for this page -->
<script src="assets/js/dashboard.js"></script>
<!-- End custom js for this page -->
    </form>
</body>
</html>
