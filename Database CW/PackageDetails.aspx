<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PackageDetails.aspx.cs" Inherits="Database_CW.PackageDetails" %>

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
                    <a class="nav-link js-scroll-trigger" href="#about">About</a>
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
                    <a class="nav-link js-scroll-trigger" href="#mapping">Package Details</a>
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
        <h2 class="mb-5">Package Details</h2>
    <form id="form1" runat="server">
        <div>
            <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="PACKAGE_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" GridLines="Both">
                <EditItemTemplate>
                    PACKAGE_ID:
                    <asp:Label ID="PACKAGE_IDLabel1" runat="server" Text='<%# Eval("PACKAGE_ID") %>' />
                    <br />
                    PACKAGE_NAME:
                    <asp:TextBox ID="PACKAGE_NAMETextBox" runat="server" Text='<%# Bind("PACKAGE_NAME") %>' />
                    <br />
                    START_DATE:
                    <asp:TextBox ID="START_DATETextBox" runat="server" Text='<%# Bind("START_DATE") %>' />
                    <br />
                    END_DATE:
                    <asp:TextBox ID="END_DATETextBox" runat="server" Text='<%# Bind("END_DATE") %>' />
                    <br />
                    TOUR_GUIDE:
                    <asp:TextBox ID="TOUR_GUIDETextBox" runat="server" Text='<%# Bind("TOUR_GUIDE") %>' />
                    <br />
                    TOTAL_DAYS:
                    <asp:TextBox ID="TOTAL_DAYSTextBox" runat="server" Text='<%# Bind("TOTAL_DAYS") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <InsertItemTemplate>
                    PACKAGE_ID:
                    <asp:TextBox ID="PACKAGE_IDTextBox" runat="server" Text='<%# Bind("PACKAGE_ID") %>' />
                    <br />
                    PACKAGE_NAME:
                    <asp:TextBox ID="PACKAGE_NAMETextBox" runat="server" Text='<%# Bind("PACKAGE_NAME") %>' />
                    <br />
                    START_DATE:
                    <asp:TextBox ID="START_DATETextBox" runat="server" Text='<%# Bind("START_DATE") %>' />
                    <br />
                    END_DATE:
                    <asp:TextBox ID="END_DATETextBox" runat="server" Text='<%# Bind("END_DATE") %>' />
                    <br />
                    TOUR_GUIDE:
                    <asp:TextBox ID="TOUR_GUIDETextBox" runat="server" Text='<%# Bind("TOUR_GUIDE") %>' />
                    <br />
                    TOTAL_DAYS:
                    <asp:TextBox ID="TOTAL_DAYSTextBox" runat="server" Text='<%# Bind("TOTAL_DAYS") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    PACKAGE_ID:
                    <asp:Label ID="PACKAGE_IDLabel" runat="server" Text='<%# Eval("PACKAGE_ID") %>' />
                    <br />
                    PACKAGE_NAME:
                    <asp:Label ID="PACKAGE_NAMELabel" runat="server" Text='<%# Bind("PACKAGE_NAME") %>' />
                    <br />
                    START_DATE:
                    <asp:Label ID="START_DATELabel" runat="server" Text='<%# Bind("START_DATE") %>' />
                    <br />
                    END_DATE:
                    <asp:Label ID="END_DATELabel" runat="server" Text='<%# Bind("END_DATE") %>' />
                    <br />
                    TOUR_GUIDE:
                    <asp:Label ID="TOUR_GUIDELabel" runat="server" Text='<%# Bind("TOUR_GUIDE") %>' />
                    <br />
                    TOTAL_DAYS:
                    <asp:Label ID="TOTAL_DAYSLabel" runat="server" Text='<%# Bind("TOTAL_DAYS") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
            </asp:FormView>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="PACKAGE_ID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="PACKAGE_ID" HeaderText="PACKAGE_ID" ReadOnly="True" SortExpression="PACKAGE_ID" />
                    <asp:BoundField DataField="PACKAGE_NAME" HeaderText="PACKAGE_NAME" SortExpression="PACKAGE_NAME" />
                    <asp:BoundField DataField="START_DATE" HeaderText="START_DATE" SortExpression="START_DATE" />
                    <asp:BoundField DataField="END_DATE" HeaderText="END_DATE" SortExpression="END_DATE" />
                    <asp:BoundField DataField="TOUR_GUIDE" HeaderText="TOUR_GUIDE" SortExpression="TOUR_GUIDE" />
                    <asp:BoundField DataField="TOTAL_DAYS" HeaderText="TOTAL_DAYS" SortExpression="TOTAL_DAYS" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;PACKAGE&quot; WHERE &quot;PACKAGE_ID&quot; = :PACKAGE_ID" InsertCommand="INSERT INTO &quot;PACKAGE&quot; (&quot;PACKAGE_ID&quot;, &quot;PACKAGE_NAME&quot;, &quot;START_DATE&quot;, &quot;END_DATE&quot;, &quot;TOUR_GUIDE&quot;, &quot;TOTAL_DAYS&quot;) VALUES (:PACKAGE_ID, :PACKAGE_NAME, :START_DATE, :END_DATE, :TOUR_GUIDE, :TOTAL_DAYS)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;PACKAGE&quot;" UpdateCommand="UPDATE &quot;PACKAGE&quot; SET &quot;PACKAGE_NAME&quot; = :PACKAGE_NAME, &quot;START_DATE&quot; = :START_DATE, &quot;END_DATE&quot; = :END_DATE, &quot;TOUR_GUIDE&quot; = :TOUR_GUIDE, &quot;TOTAL_DAYS&quot; = :TOTAL_DAYS WHERE &quot;PACKAGE_ID&quot; = :PACKAGE_ID">
                <DeleteParameters>
                    <asp:Parameter Name="PACKAGE_ID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PACKAGE_ID" Type="String" />
                    <asp:Parameter Name="PACKAGE_NAME" Type="String" />
                    <asp:Parameter Name="START_DATE" Type="DateTime" />
                    <asp:Parameter Name="END_DATE" Type="DateTime" />
                    <asp:Parameter Name="TOUR_GUIDE" Type="String" />
                    <asp:Parameter Name="TOTAL_DAYS" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PACKAGE_NAME" Type="String" />
                    <asp:Parameter Name="START_DATE" Type="DateTime" />
                    <asp:Parameter Name="END_DATE" Type="DateTime" />
                    <asp:Parameter Name="TOUR_GUIDE" Type="String" />
                    <asp:Parameter Name="TOTAL_DAYS" Type="Decimal" />
                    <asp:Parameter Name="PACKAGE_ID" Type="String" />
                </UpdateParameters>
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
