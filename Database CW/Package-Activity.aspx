<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Package-Activity.aspx.cs" Inherits="Database_CW.Package_Activity" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content=""/>
  <meta name="author" content=""/>

  <title>Resume - Start Bootstrap Theme</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>

  <!-- Custom fonts for this template -->
  <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet"/>
  <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet"/>
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"/>

  <!-- Custom styles for this template -->
  <link href="css/resume.min.css" rel="stylesheet"/>

    
</head>
<body>
     <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
    <a class="navbar-brand js-scroll-trigger" href="#page-top">
      <span class="d-block d-lg-none">Clarence Taylor</span>
      <span class="d-none d-lg-block">
        <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="assets/img/face-1.jpg" alt=""/>
      </span>
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav">
       <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="about">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="CustomerDetails.aspx">Customer</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="StaffDetails.aspx">Staff Details</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="TourGuideDetails.aspx">Tour Guide Details</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="PackageDetails.aspx">Package Details</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="RoleDetails.aspx">Role Details</a>
        </li>
           <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="Customer packaging.aspx">Customer-Package Schedule Form</a>
        </li>
           <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="Staff_Role Mapping Schedule Form.aspx">Staff-Role Mapping Schedule Form</a>
        </li>
           <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#last">Package-Activity Form</a>
        </li>
      </ul>
    </div>
  </nav>

    <div class="container-fluid p-0">

    <section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="about">
      <div class="w-100">
        <h1 class="mb-0">Nepal
          <span class="text-primary">Travel Company</span>
        </h1>
        <div class="subheading mb-5">KATHMANDU
          <a href="mailto:name@email.com">Nepal@email.com</a>
        </div>
        <p class="lead mb-5">Nepal Travel company is here to make your travel fun and easy.</p>
      </div>
    </section>

    <hr class="m-0"/>

  

    <hr class="m-0"/>

    <section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="last">
      <div class="w-100">
        <h2 class="mb-5">Package-Activity Schedule Form</h2>
          <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="js/resume.min.js"></script>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="PACKAGE_ID" DataValueField="PACKAGE_ID">
            </asp:DropDownList>
            <asp:Button ID="Button1" runat="server" Text="Button" />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ACTIVITY_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="ACTIVITY_ID" HeaderText="ACTIVITY_ID" ReadOnly="True" SortExpression="ACTIVITY_ID" />
                    <asp:BoundField DataField="TRAVEL_MODE" HeaderText="TRAVEL_MODE" SortExpression="TRAVEL_MODE" />
                    <asp:BoundField DataField="PACKAGE_ID" HeaderText="PACKAGE_ID" SortExpression="PACKAGE_ID" />
                    <asp:BoundField DataField="ACTIVITY" HeaderText="ACTIVITY" SortExpression="ACTIVITY" />
                </Columns>
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;PACKAGE_ID&quot; FROM &quot;PACKAGEDAY_ACTIVITY&quot; WHERE (&quot;PACKAGE_ID&quot; = :PACKAGE_ID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="PACKAGE_ID" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT * FROM &quot;PACKAGE&quot; "></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT ACTIVITY.ACTIVITY_ID, PACKAGEDAY_ACTIVITY.TRAVEL_MODE, PACKAGEDAY_ACTIVITY.PACKAGE_ID, ACTIVITY.ACTIVITY FROM PACKAGEDAY_ACTIVITY, ACTIVITY WHERE PACKAGEDAY_ACTIVITY.ACTIVITY_ID = ACTIVITY.ACTIVITY_ID"></asp:SqlDataSource>
    </form>
          </div>
        </section>
</body>
</html>
