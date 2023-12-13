<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebCicek.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
        <div>

          
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-4 col-sm-offset-1">
                                <div style="font-family: Verdana; color: #FE980F">
                                    <!--login form-->
                                    <p style="font-size: 17px; text-align: center">Üye Girişi</p>
                                    <div style="float: left">
                                        <asp:Label ID="Label1" runat="server" Text="E-Mail :" Font-Bold="False" ForeColor="#696763" Font-Names="Verdana"></asp:Label>
                                    </div>
                                    <div style="text-align: right">
                                        &nbsp;&nbsp;<asp:TextBox ID="txtEMail" runat="server" BorderColor="#FE980F" BorderStyle="Solid" Width="150px"></asp:TextBox>
                                    </div>
                                    <br />

                                    <div style="float: left">
                                        <asp:Label ID="Label2" runat="server" Text="Şifre:" Font-Bold="False" ForeColor="#696763" Font-Names="Verdana"></asp:Label>
                                    </div>
                                    <div style="text-align: right">
                                        &nbsp;  &nbsp;<asp:TextBox ID="txtSifre" runat="server" BorderColor="#FE980F" BorderStyle="Solid" TextMode="Password" Width="150px"></asp:TextBox>
                                    </div>
                                    <br />
                                    <div></div>

                                    <div style="text-align: right">
                                        <asp:Button ID="btnGiris" runat="server" Text="Giriş" BackColor="#FE980F" ForeColor="White" BorderColor="White" BorderStyle="Solid" Font-Bold="False" Width="83px" Font-Names="Verdana" OnClick="btnGiris_Click" /><br />
                                        <asp:Label ID="lblMesaj" runat="server"></asp:Label>

                                    </div>

                                </div>
                                <!--/login form-->
                            </div>
          

            <div class="col-sm-1">
                <h2 class="or">VEYA</h2>
            </div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel runat="server">
                <ContentTemplate>
                    <div class="col-sm-4">
                        <div style="font-family: Verdana; color: #FE980F">
                            <!--login form-->

                            <p style="font-size: 17px; text-align: center">Yeni Üye Kayıt Formu</p>
                            <div style="float: left">
                                <asp:Label ID="Label3" runat="server" Text="Adınız :" Font-Bold="False" ForeColor="#696763" Font-Names="Verdana"></asp:Label>
                            </div>
                            <div style="text-align: right">&nbsp;&nbsp;<asp:TextBox ID="txtYeniAd" runat="server" BorderColor="#FE980F" BorderStyle="Solid" Width="150px"></asp:TextBox></div>
                            <br />

                            <div style="float: left">
                                <asp:Label ID="Label4" runat="server" Text="Soyadınız :" Font-Bold="False" ForeColor="#696763" Font-Names="Verdana"></asp:Label>
                            </div>
                            <div style="text-align: right">&nbsp;  &nbsp;<asp:TextBox ID="txtYeniSoyad" runat="server" BorderColor="#FE980F" BorderStyle="Solid" Width="150px"></asp:TextBox></div>
                            <br />
                            <div></div>

                        </div>
                        <br />
                        <div style="float: left">
                            <asp:Label ID="Label6" runat="server" Text="E-Mail :" Font-Bold="False" ForeColor="#696763" Font-Names="Verdana">

                            </asp:Label>
                        </div>
                        <div style="text-align: right">
                            &nbsp;  &nbsp;<asp:TextBox ID="txtYeniEmail" runat="server" BorderColor="#FE980F" BorderStyle="Solid" Width="150px"></asp:TextBox>
                        </div>
                        <br />
                        <div style="float: left">
                            <asp:Label ID="Label7" runat="server" Text="Şifre :" Font-Bold="False" ForeColor="#696763" Font-Names="Verdana">

                            </asp:Label>
                        </div>
                        <div style="text-align: right">
                            &nbsp;  &nbsp;<asp:TextBox ID="txtYeniSifre" runat="server" BorderColor="#FE980F" BorderStyle="Solid" Width="150px"></asp:TextBox>
                        </div>
                        <br />
                        <div style="float: left">
                            <asp:Label ID="Label8" runat="server" Text="Şifre Tekrar :" Font-Bold="False" ForeColor="#696763" Font-Names="Verdana"></asp:Label>
                        </div>
                        <div style="text-align: right">
                            &nbsp;  &nbsp;<asp:TextBox ID="txtTekrarSifre" runat="server" BorderColor="#FE980F" BorderStyle="Solid" Width="150px"></asp:TextBox>
                        </div>
                        <br />

                        <div></div>
                        <div style="text-align: right; margin-right: 0px;">
                            <asp:Button ID="btnKayit" runat="server" Text="Kayıt Ol" BackColor="#FE980F" ForeColor="White" BorderColor="White" BorderStyle="Solid" Font-Bold="False" Width="83px" Font-Names="Verdana" OnClick="btnKayit_Click" /><br /><br />
                            <asp:Label ID="lblYeniMesaj" runat="server" ></asp:Label>
                        </div>
                 
                    </div>
                    <!--/sign up form-->
                    </div>
            </div>  

                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
   
</asp:Content>
