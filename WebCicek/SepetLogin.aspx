<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="SepetLogin.aspx.cs" Inherits="WebCicek.SepetLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>

        <div class="mainmenu pull-left">
            <ul class="nav navbar-nav collapse navbar-collapse">
                <li><a href="Sepet.aspx">Sepetim
                    <img src="images/ok.png" width="40px" height="40px" /></a></li>
                <li><a href="SepetLogin.aspx" class="active">Kullanıcı Girişi
                    <img src="images/ok.png" width="40px" height="40px" /></a></li>
                <li><a href="SepetAlici.aspx">Alıcı Bilgiler
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
            <div style="margin-left: 400px; margin-right: 460px">
                <div style="font-family: Verdana; color: #FE980F">
                    <!--login form-->
                    <p style="font-size: 17px; text-align: center">Üye Girişi</p>
                    <div style="float: left">
                        <asp:Label ID="Label1" runat="server" Text="E-Mail :" Font-Bold="False" ForeColor="#696763" Font-Names="Verdana"></asp:Label>
                    </div>
                    <div style="text-align: right">
                        &nbsp;&nbsp;<asp:TextBox ID="txtEmail" runat="server" BorderColor="#FE980F" BorderStyle="Solid"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="E-Mail alanı boş geçilemez!" ControlToValidate="txtEmail">*</asp:RequiredFieldValidator>

                    </div>

                    <br />

                    <div style="float: left">
                        <asp:Label ID="Label2" runat="server" Text="Şifre:" Font-Bold="False" ForeColor="#696763" Font-Names="Verdana"></asp:Label>
                    </div>
                    <div style="text-align: right">&nbsp;  &nbsp;<asp:TextBox ID="txtSifre" runat="server" BorderColor="#FE980F" BorderStyle="Solid" TextMode="Password"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Şifre alanı boş geçilemez!" ControlToValidate="txtSifre">*</asp:RequiredFieldValidator>

                    </div>
                    <br />
                    <div></div>

                    <div style="text-align: right">
                        <asp:Button ID="btnGiris" runat="server" Text="Giriş" BackColor="#FE980F" ForeColor="White" BorderColor="White" BorderStyle="Solid" Font-Bold="False" Width="83px" Font-Names="Verdana" OnClick="btnGiris_Click" /><br /><br />

                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="50px" />
                        <asp:Label ID="lbMesaj" runat="server"></asp:Label>

                    </div>

                </div>

            </div>
        </div>
    </div>
</asp:Content>
