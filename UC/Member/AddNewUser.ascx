<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AddNewUser.ascx.cs" Inherits="UC_Member_AddNewUser" %>
<asp:Label ID="lblHeader" runat="server" Font-Bold="True" Font-Size="20pt" Text="Sign Up For your Free new Account"></asp:Label>
<p>
    <asp:Label ID="lblMsg" runat="server" Text="lblMsg"></asp:Label>
</p>
<p>
    <asp:Label ID="lblusername" runat="server" Text="User Name"></asp:Label>
    <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
    &nbsp;</p>
<p>
    <asp:Label ID="lblpassword" runat="server" Text="password"></asp:Label>
    &nbsp;<asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
</p>
<p>
    <asp:Label ID="lblConfirmpassword" runat="server" Text="Confirm  password "></asp:Label>
    &nbsp;<asp:TextBox ID="txtConfirmpassword" runat="server" TextMode="Password"></asp:TextBox>
    &nbsp;&nbsp;</p>
<p>
    <asp:Label ID="lblfullname" runat="server" Text="Full Name"></asp:Label>
&nbsp;
    <asp:TextBox ID="txtfullname" runat="server"></asp:TextBox>
&nbsp;&nbsp;
</p>
<p>
    <asp:Label ID="lblemail" runat="server" Text="Email"></asp:Label>
    &nbsp;<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
&nbsp; &nbsp;</p>
<p>
    <asp:Label ID="lblphone" runat="server" Text="Phone"></asp:Label>
    &nbsp;<asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
    &nbsp;</p>
<p>
    <asp:Label ID="lblcompany" runat="server" Text="Company"></asp:Label>
    &nbsp;<asp:TextBox ID="txtcompany" runat="server"></asp:TextBox>
</p>
<p style="direction: ltr">
    <asp:Label ID="Label11" runat="server" Text="Gender"></asp:Label>
    &nbsp;<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="154px">
        <asp:ListItem Value="M">Male</asp:ListItem>
        <asp:ListItem Value="F">Female</asp:ListItem>
    </asp:RadioButtonList>
</p>
<p>
    <asp:Label ID="lblbirthdate" runat="server" Text="Birth Date"></asp:Label>
    &nbsp;&nbsp;<asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/ProductPhoto/Calendar-icon.png" OnClick="ImageButton1_Click" Width="30px" />
    <asp:Calendar ID="Calendar1" runat="server" Height="129px" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False" Width="118px"></asp:Calendar>
</p>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
<p>
    <asp:Label ID="lblsecurityNumber" runat="server" Text="Security Naumber"></asp:Label>
    &nbsp;<asp:TextBox ID="txtquestion" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Label ID="lblanswer" runat="server" Text="Answer"></asp:Label>
&nbsp;
    <asp:TextBox ID="txtanswer" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Button ID="btnregister" runat="server" Height="47px" OnClick="btnregister_Click" Text="register" Width="128px" />
</p>

