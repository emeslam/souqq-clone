<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Cat.ascx.cs" Inherits="UC_Products_Cat" %>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="311px" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Width="772px">
    <Columns>
        <asp:BoundField DataField="CatNo" HeaderText="Category" ReadOnly="True" />
        <asp:BoundField DataField="ProID" HeaderText="ID" ReadOnly="True" />
        <asp:BoundField DataField="ProName" HeaderText="Product Name" ReadOnly="True" />
        <asp:BoundField DataField="Price" HeaderText="Price" ReadOnly="True" />
        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
        <asp:BoundField DataField="SubTotal" HeaderText="Sub Total" ReadOnly="True" />
        <asp:TemplateField>
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="89px" ImageUrl='<%# string.Format("..//..//ProductPhoto//{0}.jpg",Eval("ProName")) %>' Width="97px" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
    </Columns>
    <EmptyDataTemplate>
        Shopping Cart Is Empty Here
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AllProductPageByQueryString.aspx">Click Here</asp:HyperLink>
        &nbsp;to Add Products To Yout Shopping Cart
    </EmptyDataTemplate>
    <FooterStyle BackColor="White" ForeColor="#000066" />
    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
    <RowStyle ForeColor="#000066" />
    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#007DBB" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#00547E" />
</asp:GridView>
<table>
    <tr>
        <td style="background-color: #006699">
            <asp:Label ID="lblTotal" runat="server" Font-Bold="True" Font-Size="20pt" ForeColor="White"></asp:Label>
        </td>
    </tr>
</table>
<asp:HyperLink ID="hlkCheckout" runat="server" Font-Bold="True" Font-Size="15pt" Font-Underline="False" NavigateUrl="~/CheckOUT.aspx" Visible="False">Go To CheckOut</asp:HyperLink>
<p>
    &nbsp;</p>

