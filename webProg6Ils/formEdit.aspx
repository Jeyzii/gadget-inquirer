<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formEdit.aspx.cs" Inherits="webProg6Ils.formEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit</title>
    <link rel="stylesheet" type="text/css" href="css/Edit.css" />
    <style type="text/css">
        .auto-style5 {
            padding: 15px 5px 15px 20px;
            height: 53px;
        }
        .auto-style6 {
            height: 53px;
        }
    </style>
</head>
<body>
    <a href="#" onclick="openSlideMenu()" class="opener">
        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="30px" height="40px" viewBox="0 0 50 80" xml:space="preserve">
            <polyline fill="#FFFFFF" stroke="#FFFFFF" stroke-width="1" stroke-linecap="round" stroke-linejoin="round" points="
	        0.375,0.375 45.63,38.087 0.375,75.8 "/>
        </svg>
    </a>
    <div id="sidesidenav" class="sidenav">
        <a href="#" class="btn-Close" onclick="closeSlideMenu()">&times;</a><br /><br />
        <a href="formAdmin.aspx">Admin</a>
        <a href="formAdd.aspx">Add Item</a>
        <a href="formEdit.aspx" class="active">Update</a>
        <a href="formEditImage.aspx">Update Image</a>
        <a href="formAddCategory.aspx">Add Category</a>
    </div>
    <div id="main">
        <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan ="2" class="auto-style4">UPDATE GADGET INFO</td>
                </tr>
                <tr>
                    <td class="auto-style4">COLUMN</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" AppendDataBoundItems="True" runat="server" CssClass="DList">
                            <asp:ListItem Value="0">Select a Column</asp:ListItem>
                            <asp:ListItem>Product_ID</asp:ListItem>
                            <asp:ListItem>Product_Name</asp:ListItem>
                            <asp:ListItem>Product_Price</asp:ListItem>
                            <asp:ListItem>Product_Brand</asp:ListItem>
                            <asp:ListItem>Product_Category</asp:ListItem>
                            <asp:ListItem>Product_Description</asp:ListItem>
                            <asp:ListItem>Product_Status</asp:ListItem>
                            <asp:ListItem>img_Name</asp:ListItem>
                            
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">NEW VALUE</td>
                    <td>
                        <asp:TextBox ID="TextBox2" class="texterbox" runat="server"></asp:TextBox>
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">ID</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
            <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="UPDATE" />
                    </td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        </div>
    </form>
    </div>
    <script src="Javascript/Navbar.js"></script>
</body>
</html>
