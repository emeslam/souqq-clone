<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ProductsByCategory.ascx.cs" Inherits="UC_Category_ProductsByCategory" %>
<link href="../../Design/MYCSS/STYLE.css" rel="stylesheet" />


<asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal">
    <ItemTemplate>
        <asp:Label ID="Label1" runat="server" CssClass="lblcat" Text='<%# Eval("ProName") %>'></asp:Label>
        <br />


            <%--     <a href="ProductDetails.aspx?CatNo=<%#Eval("CatId") %>&ProID=<%#Eval("ProductId") %>">--%>


        <a href='http://localhost:49159/ProdcutDetails.aspx?CatNo=<%#Eval("CatId") %>&amp;ProID=<%#Eval("ProductId")%>'>
        <asp:Image ID="Image1" runat="server" CssClass="catphoto" Height="267px" ImageUrl='<%# string.Format("..//..//ProductPhoto//{0}.jpg",Eval("ProName")) %>' Width="200px" />
        </a>
            
            <br />
        <asp:Label ID="Label2" runat="server" CssClass="lblcat" Text='<%# Eval("Price") %>'></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" CssClass="lblcat" Text='<%# Eval("QTY") %>'></asp:Label>
        <br />
        <br />
    </ItemTemplate>
</asp:DataList>

