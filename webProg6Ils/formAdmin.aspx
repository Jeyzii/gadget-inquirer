<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formAdmin.aspx.cs" Inherits="webProg6Ils.formAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin</title>
    <link rel="stylesheet" type="text/css" href="css/Adadmin.css"/>
    <style type="text/css">
        .auto-style1 {
            height: 39px;
        }
    </style>
</head>
<body>

    <!--Navigation bar -->
    <a href="#" onclick="openSlideMenu()" class="opener">
        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="30px" height="40px" viewBox="0 0 50 80" xml:space="preserve">
            <polyline fill="#FFFFFF" stroke="#FFFFFF" stroke-width="1" stroke-linecap="round" stroke-linejoin="round" points="
	        0.375,0.375 45.63,38.087 0.375,75.8 "/>
        </svg>
    </a>
    <div id="sidesidenav" class="sidenav">
        <a href="#" class="btn-Close" onclick="closeSlideMenu()">&times;</a><br /><br />
        <a href="formAdmin.aspx" class="active">Admin</a>
        <a href="formAdd.aspx">Add Item</a>
        <a href="formEdit.aspx">Update</a>
        <a href="formEditImage.aspx">Update Image</a>
        <a href="formAddCategory.aspx">Add Category</a>
    </div>
    <!-- end of navigation bar -->

    <!-- main content -->
    <div id="main">
        <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style1">
                        <asp:DropDownList ID="DropDownList2" AppendDataBoundItems="True" runat="server" CssClass="DList" DataSourceID="SqlDataSource2" 
                            DataTextField="Product_Brand" DataValueField="Product_Brand">
                            <asp:ListItem Value="Select a brand">Select a brand</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList1" AppendDataBoundItems="True" runat="server" CssClass="DList" DataSourceID="SqlDataSource3" 
                            DataTextField="Product_Category" DataValueField="Product_Category">
                            <asp:ListItem Value="Select a category">Select a category</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList3" AppendDataBoundItems="True" runat="server" CssClass="DList" DataSourceID="SqlDataSource5" 
                            DataTextField="Product_Status" DataValueField="Product_Status">
                        </asp:DropDownList>
                        <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
            <asp:GridView ID="GridView1" cssClass="grivdiew" EmptyDataText="No records Found"  runat="server" ForeColor="White" AutoGenerateColumns="False" DataKeyNames="Id" GridLines="None" BackColor="#263049" AllowPaging="True" DataSourceID="SqlDataSource1" Visible="False">
                <Columns>
                    <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" SortExpression="Product_ID" />
                    <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" SortExpression="Product_Name" />
                    <asp:BoundField DataField="Product_Price" HeaderText="Product_Price" SortExpression="Product_Price" />
                    <asp:BoundField DataField="Product_Brand" HeaderText="Product_Brand" SortExpression="Product_Brand" />
                    <asp:BoundField DataField="Product_Category" HeaderText="Product_Category" SortExpression="Product_Category" />
                    <asp:BoundField DataField="Product_Description" HeaderText="Product_Description" SortExpression="Product_Description" />
                    <asp:BoundField DataField="Product_Status" HeaderText="Product_Status" SortExpression="Product_Status" />
                    <asp:ImageField DataImageUrlField="img_Path" ControlStyle-Width="150" ControlStyle-Height = "150" HeaderText="img_Path" SortExpression="img_Path" />
                </Columns>
                <PagerSettings Position="Top" />
                <PagerStyle BackColor="Black" Height="15px" HorizontalAlign="Center" />
                </asp:GridView>
            <asp:GridView ID="GridView2" cssClass="grivdiew"  EmptyDataText="No records Found" runat="server" ForeColor="White" AutoGenerateColumns="False" DataKeyNames="Id" GridLines="None" BackColor="#263049" AllowPaging="True" DataSourceID="SqlDataSource4">
                <Columns>
                    <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" SortExpression="Product_ID" />
                    <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" SortExpression="Product_Name" />
                    <asp:BoundField DataField="Product_Price" HeaderText="Product_Price" SortExpression="Product_Price" />
                    <asp:BoundField DataField="Product_Brand" HeaderText="Product_Brand" SortExpression="Product_Brand" />
                    <asp:BoundField DataField="Product_Category" HeaderText="Product_Category" SortExpression="Product_Category" />
                    <asp:BoundField DataField="Product_Description" HeaderText="Product_Description" SortExpression="Product_Description" />
                    <asp:BoundField DataField="Product_Status" HeaderText="Product_Status" SortExpression="Product_Status" />
                    <asp:ImageField DataImageUrlField="img_Path" ControlStyle-Width="150" ControlStyle-Height = "150" HeaderText="img_Path" SortExpression="img_Path" />
                </Columns>
                <PagerSettings Position="Top" />
                <PagerStyle BackColor="Black" Height="15px" HorizontalAlign="Center" />
                </asp:GridView>
                <asp:GridView ID="GridView3" cssClass="grivdiew"  EmptyDataText="No records Found" runat="server" ForeColor="White" AutoGenerateColumns="False" DataKeyNames="Id" GridLines="None" BackColor="#263049" AllowPaging="True" DataSourceID="SqlDataSource6">
                <Columns>
                    <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" SortExpression="Product_ID" />
                    <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" SortExpression="Product_Name" />
                    <asp:BoundField DataField="Product_Price" HeaderText="Product_Price" SortExpression="Product_Price" />
                    <asp:BoundField DataField="Product_Brand" HeaderText="Product_Brand" SortExpression="Product_Brand" />
                    <asp:BoundField DataField="Product_Category" HeaderText="Product_Category" SortExpression="Product_Category" />
                    <asp:BoundField DataField="Product_Description" HeaderText="Product_Description" SortExpression="Product_Description" />
                    <asp:BoundField DataField="Product_Status" HeaderText="Product_Status" SortExpression="Product_Status" />
                    <asp:ImageField DataImageUrlField="img_Path" ControlStyle-Width="150" ControlStyle-Height = "150" HeaderText="img_Path" SortExpression="img_Path" />
                </Columns>
                <PagerSettings Position="Top" />
                <PagerStyle BackColor="Black" Height="15px" HorizontalAlign="Center" />
                </asp:GridView>
            <asp:GridView ID="GridView4" cssClass="grivdiew"  EmptyDataText="No records Found" runat="server" ForeColor="White" AutoGenerateColumns="False" DataKeyNames="Id" GridLines="None" BackColor="#263049" AllowPaging="True" DataSourceID="SqlDataSource7">
                <Columns>
                    <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" SortExpression="Product_ID" />
                    <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" SortExpression="Product_Name" />
                    <asp:BoundField DataField="Product_Price" HeaderText="Product_Price" SortExpression="Product_Price" />
                    <asp:BoundField DataField="Product_Brand" HeaderText="Product_Brand" SortExpression="Product_Brand" />
                    <asp:BoundField DataField="Product_Category" HeaderText="Product_Category" SortExpression="Product_Category" />
                    <asp:BoundField DataField="Product_Description" HeaderText="Product_Description" SortExpression="Product_Description" />
                    <asp:BoundField DataField="Product_Status" HeaderText="Product_Status" SortExpression="Product_Status" />
                    <asp:ImageField DataImageUrlField="img_Path" ControlStyle-Width="150" ControlStyle-Height = "150" HeaderText="img_Path" SortExpression="img_Path" />
                </Columns>
                <PagerSettings Position="Top" />
                <PagerStyle BackColor="Black" Height="15px" HorizontalAlign="Center" />
                </asp:GridView>
            <asp:GridView ID="GridView5" cssClass="grivdiew"  EmptyDataText="No records Found" runat="server" ForeColor="White" AutoGenerateColumns="False" DataKeyNames="Id" GridLines="None" BackColor="#263049" AllowPaging="True" DataSourceID="SqlDataSource8">
                <Columns>
                    <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" SortExpression="Product_ID" />
                    <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" SortExpression="Product_Name" />
                    <asp:BoundField DataField="Product_Price" HeaderText="Product_Price" SortExpression="Product_Price" />
                    <asp:BoundField DataField="Product_Brand" HeaderText="Product_Brand" SortExpression="Product_Brand" />
                    <asp:BoundField DataField="Product_Category" HeaderText="Product_Category" SortExpression="Product_Category" />
                    <asp:BoundField DataField="Product_Description" HeaderText="Product_Description" SortExpression="Product_Description" />
                    <asp:BoundField DataField="Product_Status" HeaderText="Product_Status" SortExpression="Product_Status" />
                    <asp:ImageField DataImageUrlField="img_Path" ControlStyle-Width="150" ControlStyle-Height = "150" HeaderText="img_Path" SortExpression="img_Path" />
                </Columns>
                <PagerSettings Position="Top" />
                <PagerStyle BackColor="Black" Height="15px" HorizontalAlign="Center" />
                </asp:GridView>
            <br /><br />
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_Gadget] WHERE (([Product_Brand] = @Product_Brand) AND ([Product_Category] = @Product_Category) AND ([Product_Status] = @Product_Status))">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="Product_Brand" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList1" Name="Product_Category" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList3" Name="Product_Status" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [Product_Brand] FROM [tbl_Gadget]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [Product_Category] FROM [tbl_Gadget]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_Gadget]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [Product_Status] FROM [tbl_Gadget]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_Gadget] WHERE (([Product_Brand] = @Product_Brand) AND ([Product_Status] = @Product_Status))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList2" Name="Product_Brand" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList3" Name="Product_Status" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_Gadget] WHERE (([Product_Category] = @Product_Category) AND ([Product_Status] = @Product_Status))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Product_Category" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList3" Name="Product_Status" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_Gadget] WHERE ([Product_Status] = @Product_Status)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList3" Name="Product_Status" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
    </form>
    </div>
    <script src="Javascript/Navbar.js"></script>
</body>
</html>
