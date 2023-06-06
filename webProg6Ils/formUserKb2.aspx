<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formUserKb2.aspx.cs" Inherits="webProg6Ils.formUserKb2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Keyboards</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">
        <table class="auto-style1">
        <tr>
            <td>
                <asp:DropDownList ID="DropDownList1" AppendDataBoundItems="True"  runat="server" CssClass="DList" DataSourceID="SqlDataSource3" DataTextField="Product_Brand" DataValueField="Product_Brand">
                    <asp:ListItem Value="0">Select a brand</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="Button1" runat="server" Text="SEARCH" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
        </div>
    </form>
</body>
</html>
