<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Sepet.aspx.cs" Inherits="WebCicek.Sepet" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>

        <div class="mainmenu pull-left">
            <ul class="nav navbar-nav collapse navbar-collapse">
                <li><a href="Sepet.aspx" class="active">Sepetim
                    <img src="images/ok.png" width="40px" height="40px" /></a></li>
                <li><a href="SepetLogin.aspx">Kullanıcı Girişi
                    <img src="images/ok.png" width="40px" height="40px" /></a></li>
                <li><a href="SepetAlici.aspx">Alıcı Bilgiler
                    <img src="images/ok.png" width="40px" height="40px" /></a></li>
                <li><a href="SepetKartMesaj.aspx">Kart Mesajı
                    <img src="images/ok.png" width="40px" height="40px" /></a></li>
                <li><a href="SepetFatura.aspx">Fatura Bilgisi               
                                    <img src="images/beyaz.PNG" width="50px" height="50px" /></a></li>
            </ul>
        </div>
        <div>
            <center>
            <asp:GridView ID="gvSepet" runat="server" BackColor="Moccasin" BorderColor="#FE980F" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="White" GridLines="Horizontal" AutoGenerateColumns="False" Width="571px" OnRowDeleting="gvSepet_RowDeleting" ShowFooter="True">
                <Columns>
                    <asp:BoundField DataField="urunad" HeaderText="Ürün Adı" />
                    <asp:BoundField DataField="fiyat" HeaderText="Fiyat" />
                    <asp:BoundField DataField="adet" HeaderText="Adet" />
                    <asp:BoundField DataField="tutar" HeaderText="Tutar" />
                    <asp:CommandField ButtonType="Image" DeleteText="" ShowDeleteButton="True" DeleteImageUrl="~/images/cancel.png">
                        <ControlStyle Height="35px" Width="35px" />
                    </asp:CommandField>
                </Columns>
                <FooterStyle BackColor="#FE980F" ForeColor="white" Font-Bold="True" Width="200px" />
                <HeaderStyle BackColor="#FE980F" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFE4B5" ForeColor="#696763" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            </center>
        </div>
        <br />
        <br />
        <div>
            <center>
             <asp:Button ID="btnBosalt" runat="server" Text="Sepeti Boşalt" BackColor="#FE980F" ForeColor="White" BorderColor="White" BorderStyle="Solid" Font-Bold="False" Width="111px" Font-Names="Verdana" OnClick="btnBosalt_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="btnDevam" runat="server" Text="Alışverişe Devam" BackColor="#FE980F" ForeColor="White" BorderColor="White" BorderStyle="Solid" Font-Bold="False" Width="134px" Font-Names="Verdana" OnClick="btnDevam_Click" />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="btnNext" runat="server" Text="Satın Al" BackColor="#FE980F" ForeColor="White" BorderColor="White" BorderStyle="Solid" Font-Bold="False" Width="76px" Font-Names="Verdana" OnClick="btnNext_Click" />
                </center>




        </div>
    </div>

</asp:Content>
