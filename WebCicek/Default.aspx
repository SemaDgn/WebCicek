<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebCicek.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <asp:DataList ID="dlstCicekler" runat="server" OnItemCommand="dlstCicekler_ItemCommand" RepeatColumns="4" DataKeyField="id">
        <ItemTemplate>            
            <div style="font-family:Verdana; width:180px; margin-left:60px">
              
                <asp:ImageButton ID="ImageButton1" ImageUrl='<%#Eval("resimyolu1") %>' AlternateText='<%#Eval("urunad") %>' runat="server" BorderColor="#FE980F" Width="130px" Height="150px" BorderWidth="2" /><br />
                 <asp:Label ID="lblUrunAd" runat="server" Text='<%#Eval("urunad") %>' Width="150px"></asp:Label><br />
              <asp:Label ID="lblUrunFiyat" runat="server" BorderColor="#FE980F" Text='<%#Eval("fiyat") %>'></asp:Label>
              &nbsp;&nbsp;&nbsp;  <asp:TextBox ID="txtAdet" runat="server" Text="1" Width="20px"></asp:TextBox><br /><br />
                 &nbsp;&nbsp;<asp:Button ID="btnSepet" runat="server" BorderStyle="Double" Text="Sepete Ekle" Width="105px" CommandName="sepet"  BackColor="#FE980F" ForeColor="White" Font-Bold="true"/>
                <br />
                <br />
            </div>
        </ItemTemplate>
    </asp:DataList>
      </center>
</asp:Content>
