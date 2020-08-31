<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer packaging.aspx.cs" Inherits="Database_CW.Customer_packaging" %>

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
  <link href="vendor/fontawesome-free/css/resume.min.css" rel="stylesheet"/>

</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">
            <span class="d-block d-lg-none">Clarence Taylor</span>
            <span class="d-none d-lg-block">
                <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="assets\img\face-1.jpg" alt="" />
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
                    <a class="nav-link js-scroll-trigger" href="#mapping">Customer packaging</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="Staff_Role Mapping Schedule.aspx">Staff_Role Mapping Schedule</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="Package-Activity.aspx">Package_Activity Schedule Form</a>
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
        <div class="subheading mb-5">Sanothimi, Bhaktaour
          <a href="mailto:name@email.com">Nepal@email.com</a>
        </div>
        <p class="lead mb-5">Nepal Travel company is here to make your travel fun and easy.</p>
      </div>
    </section>
      </div>
      
    <hr class="m-0"/>

   

    <section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="mapping">
      <div class="w-100">
        <h2 class="mb-5">Customer-Packaging Schedule</h2>
    <form id="form1" runat="server">
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="PACKAGE_ID" DataValueField="PACKAGE_ID">
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" Text="Submit" />
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PACKAGE_ID" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="PACKAGE_ID" HeaderText="PACKAGE_ID" ReadOnly="True" SortExpression="PACKAGE_ID" />
                    <asp:BoundField DataField="PACKAGE_NAME" HeaderText="PACKAGE_NAME" SortExpression="PACKAGE_NAME" />
                    <asp:BoundField DataField="START_DATE" HeaderText="START_DATE" SortExpression="START_DATE" />
                    <asp:BoundField DataField="END_DATE" HeaderText="END_DATE" SortExpression="END_DATE" />
                    <asp:BoundField DataField="TOUR_GUIDE" HeaderText="TOUR_GUIDE" SortExpression="TOUR_GUIDE" />
                    <asp:BoundField DataField="TOTAL_DAYS" HeaderText="TOTAL_DAYS" SortExpression="TOTAL_DAYS" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="PACKAGE_ID" HeaderText="PACKAGE_ID" SortExpression="PACKAGE_ID" />
                    <asp:BoundField DataField="CUSTOMER_NAME" HeaderText="CUSTOMER_NAME" SortExpression="CUSTOMER_NAME" />
                    <asp:BoundField DataField="CUSTOMER_ADDRESS" HeaderText="CUSTOMER_ADDRESS" SortExpression="CUSTOMER_ADDRESS" />
                    <asp:BoundField DataField="CUSTOMER_CONTACT" HeaderText="CUSTOMER_CONTACT" SortExpression="CUSTOMER_CONTACT" />
                    <asp:BoundField DataField="CUSTOMER_ID" HeaderText="CUSTOMER_ID" SortExpression="CUSTOMER_ID" />
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;PACKAGE_ID&quot; FROM &quot;PACKAGE&quot;"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT CUSTOMER.CUSTOMER_NAME, CUSTOMER.CUSTOMER_ADDRESS, CUSTOMER.CUSTOMER_CONTACT, PACKAGE_CUSTOMER.PACKAGE_ID, PACKAGE_CUSTOMER.CUSTOMER_ID FROM &quot;PACKAGE&quot;, PACKAGE_CUSTOMER, CUSTOMER WHERE &quot;PACKAGE&quot;.PACKAGE_ID = PACKAGE_CUSTOMER.PACKAGE_ID AND PACKAGE_CUSTOMER.CUSTOMER_ID = CUSTOMER.CUSTOMER_ID"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="select * from package where (package_id= :package_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="package_id" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
          </div>
    </section>
  

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="assets/js/resume.min.js"></script>
</body>
</html>
