<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="SepetAlici.aspx.cs" Inherits="WebCicek.SepetAlici" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>

        <div class="mainmenu pull-left">
            <ul class="nav navbar-nav collapse navbar-collapse">
                <li><a href="Sepet.aspx">Sepetim
                    <img src="images/ok.png" width="40px" height="40px" /></a></li>
                <li><a href="SepetLogin.aspx">Kullanıcı Girişi
                    <img src="images/ok.png" width="40px" height="40px" /></a></li>
                <li><a href="SepetAlici.aspx" class="active">Alıcı Bilgiler
                    <img src="images/ok.png" width="40px" height="40px" /></a></li>
                <li><a href="SepetKartMesaj.aspx">Kart Mesajı
                    <img src="images/ok.png" width="40px" height="40px" /></a></li>
                <li><a href="SepetFatura.aspx">Fatura Bilgisi
                    
                    <img src="images/beyaz.PNG" width="50px" height="50px" /></a></li>
            </ul>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-sm-4 col-sm-offset-1">

                <div style="float: left">
                    <asp:Label ID="Label1" runat="server" Text="Alıcının Adı:" Font-Bold="False" ForeColor="#696763" Font-Names="Verdana"></asp:Label>
                </div>
                <div style="text-align: right">&nbsp;&nbsp;<asp:TextBox ID="txtAliciAdi" runat="server" Width="210px" BorderColor="#FE980F" BorderStyle="Solid"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Alıcı Adı Boş Geçilemez!" ControlToValidate="txtAliciAdi">*</asp:RequiredFieldValidator></div>
                <br />
                <div style="float: left">
                    <asp:Label ID="Label4" runat="server" Text="Alıcının Soyadı:" Font-Bold="False" ForeColor="#696763" Font-Names="Verdana"></asp:Label>
                </div>
                <div style="text-align: right">&nbsp;&nbsp;<asp:TextBox ID="txtAkiciSoyadi" runat="server" Width="210px" BorderColor="#FE980F" BorderStyle="Solid"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Alıcı Soyadı Boş Geçilemez." ControlToValidate="txtAkiciSoyadi">*</asp:RequiredFieldValidator></div>
                <br />

                <div style="float: left">
                    <asp:Label ID="Label2" runat="server" Text="Telefon Numarası :" Font-Bold="False" ForeColor="#696763" Font-Names="Verdana"></asp:Label>
                </div>
                <div style="text-align: right">&nbsp;  &nbsp;<asp:TextBox ID="txtTelefon" runat="server" Width="210px" BorderColor="#FE980F" BorderStyle="Solid"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Telefon Bilgisi Boş Geçilemez." ControlToValidate="txtTelefon">*</asp:RequiredFieldValidator>

               
                </div>
                <br />
                <div style="float: left">
                    <asp:Label ID="Label9" runat="server" Text="Gönderim Nedeni :" Font-Bold="False" ForeColor="#696763" Font-Names="Verdana"></asp:Label>
                </div>
                <div style="text-align: right">&nbsp;  &nbsp<asp:DropDownList ID="ddlGonderimAmaci"  Width="210px" runat="server" BackColor="#FE980F" ForeColor="White"></asp:DropDownList></div>
                <br />

            </div>
            <!--/login form-->

            <div class="col-sm-1">
            </div>
            <div class="col-sm-4">
                <div style="float: left">
                    <asp:Label ID="Label3" runat="server" Text="Gönderilecek Yer :" Font-Bold="False" ForeColor="#696763" Font-Names="Verdana"></asp:Label>
                </div>
                <div style="text-align: right">&nbsp;  &nbsp<asp:DropDownList ID="ddlYer" runat="server" Width="220px" BackColor="#FE980F" ForeColor="White">
                    </asp:DropDownList></div>
                <br />

                <div style="float: left">
                    <asp:Label ID="Label8" runat="server" Text="Adres Bilgisi :" Font-Bold="False" ForeColor="#696763" Font-Names="Verdana"></asp:Label>
                </div>
                <div style="text-align: right">
                    &nbsp;  &nbsp;<asp:TextBox ID="txtAdres" runat="server" BorderColor="#FE980F" BorderStyle="Solid" Height="113px" TextMode="MultiLine" Width="220px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Adres Bilgisi Boş Geçilemez." ControlToValidate="txtAdres">*</asp:RequiredFieldValidator>
                </div>
                <br />

                <div></div>
                <div style="text-align: right">

                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    <asp:Button ID="btnNext" runat="server" Text="İlerle" BackColor="#FE980F" ForeColor="White" BorderColor="White" BorderStyle="Solid" Font-Bold="False" Width="83px" Font-Names="Verdana" OnClick="btnNext_Click" />
                </div>
            </div>
            <!--/sign up form-->
        </div>
    </div>


</asp:Content>
