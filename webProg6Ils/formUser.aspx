<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formUser.aspx.cs" Inherits="webProg6Ils.formUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User</title>
    <link rel="stylesheet" type="text/css" href="css/User.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="navbar">
        <a href="formUser.aspx" class="active">Home</a>
        <a href="formSM.aspx">Smartphone</a>
        <a href="formUserKB.aspx">Keyboard</a>
        <a href="formUserM.aspx">Mouse</a>
        <a href="formUserHS.aspx">Headset</a>
        <a href="formP.aspx">Peripherals</a>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="main">
<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="Slideshow/slideshow1.png" style="width:100%" />
  <div class="text">We already knew that Apple is working on AR glasses but, today, the most reliable Apple analyst has confirmed that its arrival may be a matter of months. Who has always been accurate with Apple predictions, thanks to his contacts deep into the Cupertino company’s supply chain — said today in a note to investors that manufacturing may start as soon as October 2019 and no later than the second quarter of 2020. 9to5Mac first reported on the news.

</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="Slideshow/slideshow2.jpg" style="width:100%" />
  <div class="text">Black Shark 2 – the next gaming smartphone from the eponymous Xiaomi-backed company – is all set to be officially unveiled on March 18, 2019. Ahead of the launch, the company has released a pair of teaser posters which confirm that the Black Shark 2 will be powered by the Qualcomm Snapdragon 855 SoC, ticking alongside a hefty 12GB of RAM. Moreover, registrations for the Black Shark 2 have gone live in China and they indicate that the upcoming smartphone will be available in three storage configurations.</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="Slideshow/slideshow3.jpg" style="width:100%" />
  <div class="text">Vivo X27 key specifications have been announced officially just days ahead of its formal launch that is scheduled in China for March 19. Vivo on Wednesday posted a couple of teasers on Weibo to confirm the camera, storage, and battery of the upcoming phone. Separately, a listing on TENAA surfaced with model number V1838A that is believed to detail the specifications of an inferior Vivo X27 version. The phone is even rumoured to come in at least three variants, including a version with the moniker Vivo X27 Pro.</div>
</div>

</div>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>
<br />
<br />
<br />
<br />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="20%"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server"  Text="SEARCH" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" cssClass="grivdiew"  EmptyDataText="No records Found" runat="server"  Width="100%" AutoGenerateColumns="False" DataKeyNames="Id" GridLines="Horizontal" AllowPaging="True" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:ImageField DataImageUrlField="img_Path" ControlStyle-Width="150" ControlStyle-Height = "150" HeaderText="Image" SortExpression="img_Path" >
                                <ControlStyle Height="150px" Width="150px"></ControlStyle>
                                </asp:ImageField>
                                <asp:BoundField DataField="Product_Name" HeaderText="Name" SortExpression="Product_Name" />
                                <asp:BoundField DataField="Product_Price" HeaderText="Price(PhP)" SortExpression="Product_Price" />
                                <asp:BoundField DataField="Product_Brand" HeaderText="Brand" SortExpression="Product_Brand" />
                                <asp:BoundField DataField="Product_Category" HeaderText="Category" SortExpression="Product_Category" />
                                <asp:BoundField DataField="Product_Description" HeaderText="Description" SortExpression="Product_Description" />
                            </Columns>
                            <PagerSettings Position="Top" />
                            <PagerStyle Height="15px" HorizontalAlign="Center" />
                            </asp:GridView>
                                <asp:GridView ID="GridView2" cssClass="grivdiew"  EmptyDataText="No records Found" runat="server" ForeColor="White" Width="100%" AutoGenerateColumns="False" DataKeyNames="Id" GridLines="Horizontal" AllowPaging="True">
                                    <Columns>
                                      <asp:ImageField DataImageUrlField="img_Path" ControlStyle-Width="150" ControlStyle-Height = "150" HeaderText="Image" SortExpression="img_Path" >
                                        <ControlStyle Height="150px" Width="150px"></ControlStyle>
                                        </asp:ImageField>
                                        <asp:BoundField DataField="Product_Name" HeaderText="Name" SortExpression="Product_Name" />
                                        <asp:BoundField DataField="Product_Price" HeaderText="Price(PhP)" SortExpression="Product_Price" />
                                        <asp:BoundField DataField="Product_Brand" HeaderText="Brand" SortExpression="Product_Brand" />
                                        <asp:BoundField DataField="Product_Category" HeaderText="Category" SortExpression="Product_Category" />
                                        <asp:BoundField DataField="Product_Description" HeaderText="Description" SortExpression="Product_Description" />
                                    </Columns>
                            <PagerSettings Position="Top" />
                            <PagerStyle BackColor="Black" Height="15px" HorizontalAlign="Center" />
                         </asp:GridView>
                        <div id="dialog" style="display: none">
                    </div>
                    </td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_Gadget] WHERE ([Product_Status] = @Product_Status)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" DefaultValue="available" Name="Product_Status" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            </div>
        </form>
    <script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
    </script>
</body>
</html>
