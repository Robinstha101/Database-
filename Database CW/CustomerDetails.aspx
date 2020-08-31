<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerDetails.aspx.cs" Inherits="Database_CW.CustomerDetails" %>

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
        <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="assets/img/faces/face-01.jpg" alt=""/>
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
          <a class="nav-link js-scroll-trigger" href="#experience">Customer</a>
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
          <a class="nav-link js-scroll-trigger" href="RoleDetails.aspx">Designation Details</a>
        </li>
           <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="Customer Packaging.aspx">Customer-Package Schedule Form</a>
        </li>
           <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="Staff_Role Mapping Schedule.aspx">Staff-Role Mapping Schedule Form</a>
        </li>
           
           <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="Package-Activity Schedule.aspx">Package_Activity Schedule Form</a>
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

    <section class="resume-section p-3 p-lg-5 d-flex justify-content-center" id="experience">
      <div class="w-100">
        <h2 class="mb-5">Customer</h2>
    <form id="form1" runat="server">
        <div style="height: 520px; width: 929px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="CUSTOMER_ID,CUSTOMER_NAME,CUSTOMER_ADDRESS,CUSTOMER_CONTACT" DataSourceID="SqlDataSource1" DefaultMode="Insert" GridLines="Horizontal">
                <EditItemTemplate>
                    CUSTOMER_ID:
                    <asp:Label ID="CUSTOMER_IDLabel1" runat="server" Text='<%# Eval("CUSTOMER_ID") %>' />
                    <br />
                    CUSTOMER_NAME:
                    <asp:TextBox ID="CUSTOMER_NAMETextBox" runat="server" Text='<%# Bind("CUSTOMER_NAME") %>' />
                    <br />
                    CUSTOMER_ADDRESS:
                    <asp:TextBox ID="CUSTOMER_ADDRESSTextBox" runat="server" Text='<%# Bind("CUSTOMER_ADDRESS") %>' />
                    <br />
                    CUSTOMER_CONTACT:
                    <asp:TextBox ID="CUSTOMER_CONTACTTextBox" runat="server" Text='<%# Bind("CUSTOMER_CONTACT") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    CUSTOMER_ID:
                    <asp:TextBox ID="CUSTOMER_IDTextBox" runat="server" Text='<%# Bind("CUSTOMER_ID") %>' />
                    <br />
                    CUSTOMER_NAME:
                    <asp:TextBox ID="CUSTOMER_NAMETextBox" runat="server" Text='<%# Bind("CUSTOMER_NAME") %>' />
                    <br />
                    CUSTOMER_ADDRESS:
                    <asp:TextBox ID="CUSTOMER_ADDRESSTextBox" runat="server" Text='<%# Bind("CUSTOMER_ADDRESS") %>' />
                    <br />
                    CUSTOMER_CONTACT:
                    <asp:TextBox ID="CUSTOMER_CONTACTTextBox" runat="server" Text='<%# Bind("CUSTOMER_CONTACT") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    CUSTOMER_ID:
                    <asp:Label ID="CUSTOMER_IDLabel" runat="server" Text='<%# Eval("CUSTOMER_ID") %>' />
                    <br />
                    CUSTOMER_NAME:
                    <asp:Label ID="CUSTOMER_NAMELabel" runat="server" Text='<%# Bind("CUSTOMER_NAME") %>' />
                    <br />
                    CUSTOMER_ADDRESS:
                    <asp:Label ID="CUSTOMER_ADDRESSLabel" runat="server" Text='<%# Bind("CUSTOMER_ADDRESS") %>' />
                    <br />
                    CUSTOMER_CONTACT:
                    <asp:Label ID="CUSTOMER_CONTACTLabel" runat="server" Text='<%# Bind("CUSTOMER_CONTACT") %>' />
                    <br />

                </ItemTemplate>
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
            </asp:FormView>
            <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="162px" Width="665px" style="margin-right: 0px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="CUSTOMER_ID" HeaderText="CUSTOMER_ID" ReadOnly="True" SortExpression="CUSTOMER_ID" />
                <asp:BoundField DataField="CUSTOMER_NAME" HeaderText="CUSTOMER_NAME" SortExpression="CUSTOMER_NAME" />
                <asp:BoundField DataField="CUSTOMER_ADDRESS" HeaderText="CUSTOMER_ADDRESS" SortExpression="CUSTOMER_ADDRESS" />
                <asp:BoundField DataField="CUSTOMER_CONTACT" HeaderText="CUSTOMER_CONTACT" SortExpression="CUSTOMER_CONTACT" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;CUSTOMER&quot;" DeleteCommand="DELETE FROM &quot;CUSTOMER&quot; WHERE &quot;CUSTOMER_ID&quot; = :CUSTOMER_ID" InsertCommand="INSERT INTO &quot;CUSTOMER&quot; (&quot;CUSTOMER_ID&quot;, &quot;CUSTOMER_NAME&quot;, &quot;CUSTOMER_ADDRESS&quot;, &quot;CUSTOMER_CONTACT&quot;) VALUES (:CUSTOMER_ID, :CUSTOMER_NAME, :CUSTOMER_ADDRESS, :CUSTOMER_CONTACT)" UpdateCommand="UPDATE &quot;CUSTOMER&quot; SET &quot;CUSTOMER_NAME&quot; = :CUSTOMER_NAME, &quot;CUSTOMER_ADDRESS&quot; = :CUSTOMER_ADDRESS, &quot;CUSTOMER_CONTACT&quot; = :CUSTOMER_CONTACT WHERE &quot;CUSTOMER_ID&quot; = :CUSTOMER_ID">
            <DeleteParameters>
                <asp:Parameter Name="CUSTOMER_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CUSTOMER_ID" Type="Decimal" />
                <asp:Parameter Name="CUSTOMER_NAME" Type="String" />
                <asp:Parameter Name="CUSTOMER_ADDRESS" Type="String" />
                <asp:Parameter Name="CUSTOMER_CONTACT" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CUSTOMER_NAME" Type="String" />
                <asp:Parameter Name="CUSTOMER_ADDRESS" Type="String" />
                <asp:Parameter Name="CUSTOMER_CONTACT" Type="String" />
                <asp:Parameter Name="CUSTOMER_ID" Type="Decimal" />
            </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
          </div>   

    </section>

    

   

  </div>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="js/resume.min.js"></script>
</body>
</html>
