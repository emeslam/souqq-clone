<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AddNewProducts.ascx.cs" Inherits="UC_Products_AddNewProducts" %>
<p style="direction: ltr">
    Email :
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</p>
<p style="direction: ltr">
    PassWord :
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
</p>
<p style="direction: ltr">
    <asp:CheckBox ID="CheckBox1" runat="server" Checked="True" Text="Remember ME" />
</p>
<p style="direction: ltr">
    <asp:Button ID="Button1" runat="server" Height="63px" OnClick="Button1_Click" Text="Login" Width="274px" />
</p>
<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

