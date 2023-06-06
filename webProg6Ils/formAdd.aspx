<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formAdd.aspx.cs" Inherits="webProg6Ils.formAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add</title>
    <link rel="stylesheet" type="text/css" href="css/Add.css" />
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
        <a href="formAdd.aspx" class="active">Add Item</a>
        <a href="formEdit.aspx">Update</a>
        <a href="formEditImage.aspx">Update Image</a>
        <a href="formAddCategory.aspx">Add Category</a>
    </div>
    <div id="main">
        <form id="form1" runat="server">
            <div>
                <table class="auto-style1">
                    <tr>
                        <td colspan ="2" class="auto-style2">ADD GADGET INFO</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">PRODUCT ID</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">PRODUCT NAME</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">PRICE</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="TextBox3" runat="server" TextMode="Number"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">BRAND</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">CATEGORY</td>
                        <td class="auto-style3">
                            <asp:DropDownList ID="DropDownList1" AppendDataBoundItems="True" runat="server" CssClass="DList" DataSourceID="SqlDataSource1" DataTextField="Category" DataValueField="Category">
                       
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">DESCRIPTION</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">STATUS</td>
                        <td class="auto-style3">
                            <asp:DropDownList ID="DropDownList2" AppendDataBoundItems="True" runat="server" CssClass="DList">
                                <asp:ListItem Value="AVAILABLE">AVAILABLE</asp:ListItem>
                                <asp:ListItem Value="UNAVAILABLE">UNAVAILABLE</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">IMAGE</td>
                        <td class="auto-style3">
                          <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td class="auto-style3">
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="ADD" />
                        </td>
                    </tr>
                </table>
            </div>
        </form>
    </div>

    <script>
        function openSlideMenu() {
            document.getElementById('sidesidenav').style.width = '17%';
            document.getElementById('main').style.marginLeft = '305px';
        }

        function closeSlideMenu() {
            document.getElementById('sidesidenav').style.width = '0';
            document.getElementById('main').style.marginLeft = '60px';
        }
    </script>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_Category]"></asp:SqlDataSource>
    </body>
</html>
