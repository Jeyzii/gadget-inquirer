<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formUserM.aspx.cs" Inherits="webProg6Ils.formUserM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mouse</title>
    <link rel="stylesheet" type="text/css" href="css/User.css" />
</head>
<body style="overflow:scroll">
<!--Navigation bar -->
        <div class="navbar">
            <a href="formUser.aspx">Home</a>
            <a href="formSM.aspx">Smartphone</a>
            <a href="formUserKB.aspx">Keyboard</a>
            <a href="formUserM.aspx" class="active">Mouse</a>
            <a href="formUserHS.aspx">Headset</a>
            <a href="formP.aspx">Peripherals</a
        </div>
        <br />
        <br />
        <br />
        <br />
    <!-- end of navigation bar -->
    <div class="main">
        <form id="form1" runat="server">

            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:DropDownList ID="DropDownList1" AppendDataBoundItems="True"  runat="server" CssClass="DList" DataSourceID="SqlDataSource3" DataTextField="Product_Brand" DataValueField="Product_Brand">
                        <asp:ListItem Value="0">Select a brand</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Button ID="Button1" AppendDataBoundItems="True"  runat="server" Text="SEARCH" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                    <asp:GridView ID="GridView1" cssClass="grivdiew"  EmptyDataText="No records Found" runat="server" ForeColor="White" Width="100%" AutoGenerateColumns="False" DataKeyNames="Id" GridLines="Horizontal" AllowPaging="True" DataSourceID="SqlDataSource2" Visible="False" AllowSorting="True">
                        <Columns>
                            <asp:ImageField DataImageUrlField="img_Path" HeaderText="Image" SortExpression="img_Path" />
                            <asp:BoundField DataField="Product_Name" HeaderText="Name" SortExpression="Product_Name" />
                            <asp:BoundField DataField="Product_Price" HeaderText="Price(PhP)" SortExpression="Product_Price" />
                            <asp:BoundField DataField="Product_Brand" HeaderText="Brand" SortExpression="Product_Brand" />
                            <asp:BoundField DataField="Product_Category" HeaderText="Category" SortExpression="Product_Category" />
                            <asp:BoundField DataField="Product_Description" HeaderText="Product Description" SortExpression="Product_Description" />
                        </Columns>
                <PagerSettings Position="Top" />
                <PagerStyle BackColor="Black" Height="15px" HorizontalAlign="Center" />
                </asp:GridView>
                        <asp:GridView ID="GridView2" cssClass="grivdiew"  EmptyDataText="No records Found" runat="server" ForeColor="White" Width="100%" AutoGenerateColumns="False" DataKeyNames="Id" GridLines="Horizontal" AllowPaging="True" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:ImageField DataImageUrlField="img_Path" HeaderText="Image" SortExpression="img_Path" />
                            <asp:BoundField DataField="Product_Name" HeaderText="Name" SortExpression="Product_Name" />
                            <asp:BoundField DataField="Product_Price" HeaderText="Price(PhP)" SortExpression="Product_Price" />
                            <asp:BoundField DataField="Product_Brand" HeaderText="Brand" SortExpression="Product_Brand" />
                            <asp:BoundField DataField="Product_Category" HeaderText="Category" SortExpression="Product_Category" />
                            <asp:BoundField DataField="Product_Description" HeaderText="Product Description" SortExpression="Product_Description" />
                        </Columns>
                <PagerSettings Position="Top" />
                <PagerStyle BackColor="Black" Height="15px" HorizontalAlign="Center" />
                </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_Gadget] WHERE (([Product_Category] = @Product_Category) AND ([Product_Status] = @Product_Status))">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="GridView2" DefaultValue="MOUSE" Name="Product_Category" PropertyName="SelectedValue" Type="String" />
                                <asp:ControlParameter ControlID="GridView2" DefaultValue="AVAILABLE" Name="Product_Status" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_Gadget] WHERE (([Product_Category] = @Product_Category) AND ([Product_Status] = @Product_Status) AND ([Product_Brand] = @Product_Brand))">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="GridView1" DefaultValue="MOUSE" Name="Product_Category" PropertyName="SelectedValue" Type="String" />
                                <asp:ControlParameter ControlID="GridView1" DefaultValue="AVAILABLE" Name="Product_Status" PropertyName="SelectedValue" Type="String" />
                                <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="Product_Brand" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [Product_Brand] FROM [tbl_Gadget] WHERE (([Product_Category] = @Product_Category) AND ([Product_Status] = @Product_Status))">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="GridView1" DefaultValue="MOUSE" Name="Product_Category" PropertyName="SelectedValue" Type="String" />
                                <asp:ControlParameter ControlID="GridView1" DefaultValue="AVAILABLE" Name="Product_Status" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
