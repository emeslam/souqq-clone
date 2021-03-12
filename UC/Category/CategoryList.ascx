<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CategoryList.ascx.cs" Inherits="UC_Category_CategoryList" %>
<asp:DataList ID="DataList1" runat="server" DataKeyField="CatId" DataSourceID="SqlDataSource1">
    <ItemTemplate>
        <ul class="nav nav-list bs-docs-sidenav" style="display: block;">
            <li><a href='http://localhost:49159/proByCategory.aspx?CatNo=<%#Eval("CatId")%>'>
                <asp:Label ID="CatNameLabel" runat="server" Text='<%# Eval("CatName") %>' />
                </a></li>
        </ul>
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SouqNewConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT [CatId], [CatName] FROM [Category]"></asp:SqlDataSource>

