<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Bilgilendirme.aspx.cs" Inherits="WebCicek.Bilgilendirme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <p>
        <center>
        Sipariş bilgileriniz mail adresinize gönderilmiştir.Bizi tercih ettiğiniz için Teşekkür ederiz.&nbsp;</p>
   
    <p><asp:Button ID="btnGeri" runat="server" Text="Alışverişe Devam" BackColor="#FE980F" ForeColor="White" BorderColor="White" BorderStyle="Solid" Font-Bold="False" Width="137px" Font-Names="Verdana" OnClick="btnGeri_Click" />
        &nbsp;</p>
     </center>

</asp:Content>
