<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formEditImage.aspx.cs" Inherits="webProg6Ils.formEditImage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Image</title>
    <link rel="stylesheet" type="text/css" href="css/Edit.css" />
    </head>
<body>
    <!--navbar -->
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
        <a href="formEdit.aspx">Update</a>
        <a href="formEditImage.aspx" class="active">Update Image</a>
        <a href="formAddCategory.aspx">Add Category</a>
    </div>
    <!--end-->

    <form id="form1" runat="server">
        <div id="main">
            <table class="auto-style1">
                <tr>
                    <td colspan="2">UPDATE IMAGE</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>SELECT IMAGE</td>
                    <td><asp:FileUpload ID="FileUpload1" runat="server" /></td>
                </tr>
                <tr>
                    <td>ID</td>
                    <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="IMAGE UPDATE" />
                    </td>
                </tr>
            </table>

        </div>
    </form>
    <script src="Javascript/Navbar.js"></script>
</body>
</html>
