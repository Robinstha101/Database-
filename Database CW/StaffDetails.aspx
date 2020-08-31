<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffDetails.aspx.cs" Inherits="Database_CW.StaffDetails" %>

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
                    <a class="nav-link js-scroll-trigger" href="#mapping">Staff Details</a>
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
                    <a class="nav-link js-scroll-trigger" href="Customer packaging.aspx">Customer packaging</a>
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
        <div class="subheading mb-5">KATHMANDU
          <a href="mailto:name@email.com">Nepal@email.com</a>
        </div>
        <p class="lead mb-5">Nepal Travel company is here to make your travel fun and easy.</p>
      </div>
    </section>
      </div>
      
    <hr class="m-0"/>

   

    <section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="mapping">
      <div class="w-100">
        <h2 class="mb-5">Staff Details</h2>
    <form id="form1" runat="server">
        <asp:FormView ID="FormView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataKeyNames="STAFF_ID,STAFF_NAME,STAFF_ADDRESS,STAFF_CONTACT,ROLE_ID" DataSourceID="SqlDataSource1" GridLines="Both" CellSpacing="2" DefaultMode="Insert" ForeColor="Black">
            <EditItemTemplate>
                STAFF_ID:
                <asp:Label ID="STAFF_IDLabel1" runat="server" Text='<%# Eval("STAFF_ID") %>' />
                <br />
                STAFF_NAME:
                <asp:TextBox ID="STAFF_NAMETextBox" runat="server" Text='<%# Bind("STAFF_NAME") %>' />
                <br />
                STAFF_ADDRESS:
                <asp:TextBox ID="STAFF_ADDRESSTextBox" runat="server" Text='<%# Bind("STAFF_ADDRESS") %>' />
                <br />
                STAFF_CONTACT:
                <asp:TextBox ID="STAFF_CONTACTTextBox" runat="server" Text='<%# Bind("STAFF_CONTACT") %>' />
                <br />
                ROLE_ID:
                <asp:TextBox ID="ROLE_IDTextBox" runat="server" Text='<%# Bind("ROLE_ID") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                STAFF_ID:
                <asp:TextBox ID="STAFF_IDTextBox" runat="server" Text='<%# Bind("STAFF_ID") %>' />
                <br />
                STAFF_NAME:
                <asp:TextBox ID="STAFF_NAMETextBox" runat="server" Text='<%# Bind("STAFF_NAME") %>' />
                <br />
                STAFF_ADDRESS:
                <asp:TextBox ID="STAFF_ADDRESSTextBox" runat="server" Text='<%# Bind("STAFF_ADDRESS") %>' />
                <br />
                STAFF_CONTACT:
                <asp:TextBox ID="STAFF_CONTACTTextBox" runat="server" Text='<%# Bind("STAFF_CONTACT") %>' />
                <br />
                ROLE_ID:
                <asp:TextBox ID="ROLE_IDTextBox" runat="server" Text='<%# Bind("ROLE_ID") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                STAFF_ID:
                <asp:Label ID="STAFF_IDLabel" runat="server" Text='<%# Eval("STAFF_ID") %>' />
                <br />
                STAFF_NAME:
                <asp:Label ID="STAFF_NAMELabel" runat="server" Text='<%# Bind("STAFF_NAME") %>' />
                <br />
                STAFF_ADDRESS:
                <asp:Label ID="STAFF_ADDRESSLabel" runat="server" Text='<%# Bind("STAFF_ADDRESS") %>' />
                <br />
                STAFF_CONTACT:
                <asp:Label ID="STAFF_CONTACTLabel" runat="server" Text='<%# Bind("STAFF_CONTACT") %>' />
                <br />
                ROLE_ID:
                <asp:Label ID="ROLE_IDLabel" runat="server" Text='<%# Bind("ROLE_ID") %>' />
                <br />

            </ItemTemplate>
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
        </asp:FormView>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="173px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;STAFF&quot;" DeleteCommand="DELETE FROM &quot;STAFF&quot; WHERE &quot;STAFF_ID&quot; = :STAFF_ID" InsertCommand="INSERT INTO &quot;STAFF&quot; (&quot;STAFF_ID&quot;, &quot;STAFF_NAME&quot;, &quot;STAFF_ADDRESS&quot;, &quot;STAFF_CONTACT&quot;, &quot;ROLE_ID&quot;) VALUES (:STAFF_ID, :STAFF_NAME, :STAFF_ADDRESS, :STAFF_CONTACT, :ROLE_ID)" UpdateCommand="UPDATE &quot;STAFF&quot; SET &quot;STAFF_NAME&quot; = :STAFF_NAME, &quot;STAFF_ADDRESS&quot; = :STAFF_ADDRESS, &quot;STAFF_CONTACT&quot; = :STAFF_CONTACT, &quot;ROLE_ID&quot; = :ROLE_ID WHERE &quot;STAFF_ID&quot; = :STAFF_ID">
            <DeleteParameters>
                <asp:Parameter Name="STAFF_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="STAFF_ID" Type="Decimal" />
                <asp:Parameter Name="STAFF_NAME" Type="String" />
                <asp:Parameter Name="STAFF_ADDRESS" Type="String" />
                <asp:Parameter Name="STAFF_CONTACT" Type="String" />
                <asp:Parameter Name="ROLE_ID" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="STAFF_NAME" Type="String" />
                <asp:Parameter Name="STAFF_ADDRESS" Type="String" />
                <asp:Parameter Name="STAFF_CONTACT" Type="String" />
                <asp:Parameter Name="ROLE_ID" Type="String" />
                <asp:Parameter Name="STAFF_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
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
