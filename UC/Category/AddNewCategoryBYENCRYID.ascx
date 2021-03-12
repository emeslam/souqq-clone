<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AddNewCategoryBYENCRYID.ascx.cs" Inherits="UC_Category_AddNewCategoryBYENCRYID" %>
<link href="../../Admin/Design/css/MYSTYLE.css" rel="stylesheet" />
<br />
<asp:Label ID="Label1" runat="server" Text="Add Category Name"></asp:Label>
<asp:TextBox ID="txtCategory" runat="server" CssClass="txtbox"></asp:TextBox>
<asp:Image ID="IMGCatName" runat="server" ImageUrl="~/ADMIN/Design/Image/NullICOn.png" Visible="False" />
<br />
<asp:Label ID="Label2" runat="server" Text="Add Description  Name"></asp:Label>
<asp:TextBox ID="txtDescription" runat="server" CssClass="txtbox"></asp:TextBox>
<asp:Image ID="IMGDESC" runat="server" ImageUrl="~/ADMIN/Design/Image/NullICOn.png" Visible="False" />
<br />
<br />
Category photo :&nbsp;
<asp:FileUpload ID="FileUpload1" runat="server" />
<asp:Image ID="Image1" runat="server" Height="107px" Width="93px" />
<asp:Label ID="lblPhoto" runat="server" Text="Label" Visible="False"></asp:Label>
<br />
<br />
<asp:Button ID="Button1" runat="server" class="btn" Height="71px" OnClick="Button1_Click" Text="Add new Category" Width="233px" />
<br />
<br />
<asp:Label ID="lblResult" runat="server" Text="Label" Visible="False"></asp:Label>
<asp:GridView ID="GridView1" runat="server">
</asp:GridView>


