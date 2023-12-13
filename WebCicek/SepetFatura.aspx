<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="SepetFatura.aspx.cs" Inherits="WebCicek.SepetFatura" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 425px;
            height: 235px;
        }

        .auto-style4 {
        }

        .auto-style6 {
            height: 22px;
        }

        .auto-style8 {
            width: 100%;
        }

        .auto-style9 {
            width: 166px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div>

        <div class="mainmenu pull-left">
            <ul class="nav navbar-nav collapse navbar-collapse">
                <li><a href="Sepet.aspx">Sepetim
                    <img src="images/ok.png" width="40px" height="40px" /></a></li>
                <li><a href="SepetLogin.aspx" >Kullanıcı Girişi
                    <img src="images/ok.png" width="40px" height="40px" /></a></li>
                <li><a href="SepetAlici.aspx">Alıcı Bilgiler
                    <img src="images/ok.png" width" height="40px" /></a></li>
                <li><a href="SepetKartMesaj.aspx"  >Kart Mesajı
                    <img src="images/ok.png" width="40px" height="40px" /></a></li>
                <li><a href="SepetFatura.aspx" class="active">Fatura Bilgisi
                    <img src="images/ok.png" width="40px" height="40px" /></a></li>
               
            </ul>
        </div>
    </div>

    <div>
    <div class="container">
        <div class="row">
            <div style="margin-left: 400px; margin-right: 460px">
                <div style="font-family: Verdana; color: #FE980F">
                    <!--login form-->
                    <p style="font-size: 17px; text-align: center">Fatura Bilgileri</p>
                    <div style="float: left">
                        <asp:Label ID="Label1" runat="server" Text="Ad Soyad" Font-Bold="False" ForeColor="#696763" Font-Names="Verdana"></asp:Label>
                    </div>
                    <div style="text-align: right">
                        &nbsp;&nbsp;<asp:TextBox ID="txtAdSoyad" runat="server" BorderColor="#FE980F" BorderStyle="Solid"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="E-Mail alanı boş geçilemez!" ControlToValidate="txtAdSoyad">*</asp:RequiredFieldValidator>

                    </div>

                    <br />

                    <div style="float: left; height: 20px; width: 58px;">
                        <asp:Label ID="Label2" runat="server" Text="Telefon :" Font-Bold="False" ForeColor="#696763" Font-Names="Verdana" Width="75px"></asp:Label>
                    </div>
                    <div style="text-align: right">
                        &nbsp;  &nbsp;<asp:TextBox ID="txttelefon" runat="server" BorderColor="#FE980F" BorderStyle="Solid"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Şifre alanı boş geçilemez!" ControlToValidate="txttelefon">*</asp:RequiredFieldValidator>

                    </div>
                    <br />
                    <div style="text-align: right">
                        <asp:Button ID="btnDuzenle" runat="server" Text="Fatura Düzenle" BackColor="#FE980F" ForeColor="White" BorderColor="White" BorderStyle="Solid" Font-Bold="False" Width="121px" Font-Names="Verdana" OnClick="btnDuzenle_Click" />


                    </div>

                    <div style="text-align: right">
                        <br />
                        <br />

                    </div>
                    <div>
                        <asp:Panel ID="Panel1" runat="server" Visible="False" Height="424px">
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style4">
                                        <asp:RadioButton ID="rbKisi" runat="server" ForeColor="#696763" Text="Kişi Adına Fatura Almak İstiyorum." OnCheckedChanged="rbKisi_CheckedChanged" AutoPostBack="True" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">
                                        <asp:RadioButton ID="rbSirket" runat="server" ForeColor="#696763" Text="Şirket Adına Fatura Almak İstiyorum." OnCheckedChanged="rbSirket_CheckedChanged" AutoPostBack="True" />
                                        <br />
                                        <div style="float: left">

                                            <asp:Label ID="lblSirket" runat="server" ForeColor="#696763" Text="Şirket Adı :" Visible="False"></asp:Label>


                                            &nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtSirketAdi" runat="server" BorderColor="#FE980F" BorderStyle="Solid" Visible="False"></asp:TextBox>
                                        </div>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="auto-style6">
                                        <asp:Label ID="Label3" runat="server" ForeColor="#696763" Text="Adres :"></asp:Label>
                                    </td>
                                  
                                </tr>
                                <tr>
                                    <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="txtAdres" runat="server" Height="138px" TextMode="MultiLine" Width="234px"></asp:TextBox>
                                    </td>
                                </tr>
                                <td></td>

                               
                                <tr>
                                    <td class="auto-style6">
                                        <table class="auto-style8">
                                            <tr>
                                                <td class="auto-style9">
                                                    <asp:Label ID="Label4" runat="server" ForeColor="#696763" Text="Ödeme Seçenekleri "></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="ddlOdemeSecenek" Width="210px" runat="server" BackColor="#FE980F" ForeColor="White">
                                                        <asp:ListItem>Kredi Kartı</asp:ListItem>
                                                        <asp:ListItem>Banka Kartı</asp:ListItem>
                                                        <asp:ListItem>Havale</asp:ListItem>
                                                        <asp:ListItem>Telefonda Ödeme</asp:ListItem>
                                                    </asp:DropDownList></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            <br />

                            <div style="text-align: center">
                                <asp:Button ID="btnSiparis" runat="server" Text="Sipariş Ver" BackColor="#FE980F" ForeColor="White" BorderColor="White" BorderStyle="Solid" Font-Bold="False" Width="121px" Font-Names="Verdana" OnClick="btnSiparis_Click" /><br />
                                <br />

                            </div>
                            <br />
                            <br />
                            <br />
                            <br />




                        </asp:Panel>


                    </div>

                </div>

            </div>
        </div>
    </div>
</asp:Content>
