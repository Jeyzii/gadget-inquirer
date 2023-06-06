<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formAddCategory.aspx.cs" Inherits="webProg6Ils.formAddCategory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add</title>
    <link rel="stylesheet" type="text/css" href="css/Add.css" />
    <script src="Javascript/Navbar.js"></script>
</head>
<body>
    <a href="#" onclick="openSlideMenu()" class="opener">
    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="30px" height="40px" viewBox="0 0 50 80" xml:space="preserve">
        <polyline fill="none" stroke="#FFFFFF" stroke-width="1" stroke-linecap="round" stroke-linejoin="round" points="
        0.375,0.375 45.63,38.087 0.375,75.8 "/>
    </svg>
    </a>
    <div id="sidesidenav" class="sidenav">
        <a href="#" class="btn-Close" onclick="closeSlideMenu()">&times;</a><br /><br />
        <a href="formAdmin.aspx">Admin</a>
        <a href="formAdd.aspx" >Add Data</a>
        <a href="formEdit.aspx">Update</a>
        <a href="formEditImage.aspx">Update Image</a>
        <a href="formAddCategory.aspx" class="active">Add Category</a>
    </div>
    <div id="main">
        <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>NEW CATEGORY</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </form>
    </div>
</body>
</html>
