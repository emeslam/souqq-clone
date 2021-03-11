<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CategoryHome.ascx.cs" Inherits="UC_Category_CategoryHome" %>

<link href="../../Design/MYCSS/STYLE.css" rel="stylesheet" />

<asp:DataList ID="DataList1" runat="server" DataKeyField="CatId" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal">
    <ItemTemplate>
        &nbsp;<asp:Label ID="CatNameLabel" runat="server" Text='<%# Eval("CatName") %>'  CssClass="lblcat"/>
        <br />
        <asp:Image ID="Image1" runat="server" Height="212px" ImageUrl='<%# "..//..//CategoryPhoto//"+Eval("CatName")+".jpg" %>' Width="168px"  CssClass="catphoto"/>
        <br />
        &nbsp;<asp:Label ID="CatDescriptionLabel" runat="server" Text='<%# Eval("CatDescription") %>' CssClass="lblcat" />
        <br />
<br />
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SouqNewConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>

