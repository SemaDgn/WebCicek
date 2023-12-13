<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="SepetKartMesaj.aspx.cs" Inherits="WebCicek.SepetKartMesaj" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                <li><a href="SepetKartMesaj.aspx" class="active" >Kart Mesajı
                    <img src="images/ok.png" width="40px" height="40px" /></a></li>
                <li><a href="SepetFatura.aspx">Fatura Bilgisi
                    <img src="images/ok.png" width="40px" height="40px" /></a></li>
               
            </ul>
        </div>
    </div>

    <div>

        <div class="container">
       <div class="row">
                <div  style="margin-left: 400px; margin-right: 460px">
                    <div style="font-family: Verdana; color:#FE980F">
                    <!--login form-->
                    <p style="font-size: 17px; text-align: center">Kart Mesajı</p>
                        
                    <div style="float: left">
                        <asp:Label ID="Label1" runat="server" Text="Kart Mesajı :" Font-Bold="False" ForeColor="#696763" Font-Names="Verdana"></asp:Label><br />
                    </div>
                    <div style="text-align: left">
                        <br />
                      <asp:TextBox ID="txtMesaj" runat="server" BorderColor="#FE980F" BorderStyle="Solid" Height="105px" TextMode="MultiLine" Width="240px"></asp:TextBox>

                    </div>

                    <br />

                    <div style="float: left">
                        <asp:Label ID="Label2" runat="server" Text="Karta Yazılacak İsim :" Font-Bold="False" ForeColor="#696763" Font-Names="Verdana"></asp:Label><br />
                    </div>
                       
               <asp:TextBox ID="txtName" runat="server" BorderColor="#FE980F" BorderStyle="Solid" Width="240px"></asp:TextBox>

                    &nbsp;<div style="text-align: right">&nbsp;  &nbsp;</div>
                    <br />
                    <div></div>

                    <div style="text-align: center">
                        <asp:Button ID="btnNext" runat="server" Text="İlerle" BackColor="#FE980F" ForeColor="White" BorderColor="White" BorderStyle="Solid" Font-Bold="False" Width="83px" Font-Names="Verdana" OnClick="btnGiris_Click" /><br /><br /></div>
                    <div>

                        <asp:Label ID="lbMesaj" runat="server">Bu alanları boş bıraktığınız takdirde siparişiniz isimsiz teslim edilecektir !</asp:Label>
                        </div>
                        <br />
                        <br />
                         <div style="margin-left: 350px; margin-right: 460px">
                        <table align="right" class="nav-justified">
                            <tr style="text-align:center">
                                <td>
                                    <asp:Image ID="Image1" runat="server" Height="122px" Width="140px" ImageUrl="~/images/Kartlar/kt160.jpg" />
                                    <asp:CheckBox ID="CheckBox1" runat="server" BorderColor="#FE980F" style="text-align: center" />
                                </td>
                                <td>
                                    <asp:Image ID="Image2" runat="server" Height="122px" Width="140px" ImageUrl="~/images/Kartlar/kt161.jpg" />
                                    <asp:CheckBox ID="CheckBox2" runat="server" BorderColor="#FE980F" style="text-align: center" />
                                </td>
                                <td><asp:Image ID="Image3" runat="server" Height="122px" Width="140px" ImageUrl="~/images/Kartlar/kt162.jpg" />
                                    <asp:CheckBox ID="CheckBox3" runat="server" BorderColor="#FE980F" style="text-align: center" /></td>
                            </tr>
                            <tr style="text-align:center">
                                <td><asp:Image ID="Image4" runat="server" Height="122px" Width="140px" ImageUrl="~/images/Kartlar/kt163.jpg" />
                                    <asp:CheckBox ID="CheckBox4" runat="server" BorderColor="#FE980F" style="text-align: center" /></td>
                                <td><asp:Image ID="Image5" runat="server" Height="122px" Width="140px" ImageUrl="~/images/Kartlar/kt164.jpg" />
                                    <asp:CheckBox ID="CheckBox5" runat="server" BorderColor="#FE980F" style="text-align: center" /></td>
                                <td><asp:Image ID="Image6" runat="server" Height="122px" Width="140px" ImageUrl="~/images/Kartlar/kt170.jpg" />
                                    <asp:CheckBox ID="CheckBox6" runat="server" BorderColor="#FE980bF" style="text-align: center" /></td>
                            </tr>
                                                   </table>
                             <br />
                             <br />                                              

                           

                    <br />
                            </div>
                        <asp:Label ID="Label3" runat="server">Yukarıdaki bölüme yazacağınız mesaj, ücretsiz kart üzerine basılacaktır. Dilerseniz aşağıdaki hazır metinli kutlama kartlarından da seçebilirsiniz!</asp:Label>

                    </div>

                </div>

            </div>
                    <!--/login form-->
                </div>
                <div class="col-sm-1">
                  
                </div>
      
      
        </div>
        
 
</asp:Content>
