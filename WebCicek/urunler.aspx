<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="urunler.aspx.cs" Inherits="WebCicek.urunler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <center>
    <asp:DataList ID="dlstCicekler" runat="server" OnItemCommand="dlstCicekler_ItemCommand" RepeatColumns="4" DataKeyField="id">
        <ItemTemplate>            
            <div style="font-family:Verdana">

                <asp:Label ID="lblUrunAd" runat="server" Text='<%#Eval("urunad") %>'></asp:Label><br />
                <asp:ImageButton ID="ImageButton1" ImageUrl='<%#Eval("resimyolu1") %>' AlternateText='<%#Eval("urunad") %>' runat="server" Width="100px" Height="120px" /><br />
                <asp:Label ID="lblUrunFiyat" runat="server" Text='<%#Eval("fiyat") %>'></asp:Label>
                <asp:TextBox ID="txtAdet" runat="server" Text="1" Width="20px"></asp:TextBox><br />
                <asp:Button ID="btnSepet" runat="server" Text="Sepete Ekle" Width="105px" BorderStyle="Double" CommandName="sepet"  BackColor="#FE980F" ForeColor="White" Font-Bold="true"/>
                <br />
                <br />
            </div>
        </ItemTemplate>
    </asp:DataList>
      </center>
</asp:Content>
