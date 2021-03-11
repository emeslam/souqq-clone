<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AddNewProducts.ascx.cs" Inherits="UC_Products_AddNewProducts" %>
<asp:DropDownList ID="ddlCategory" runat="server">
</asp:DropDownList>
<br />
<br />
Product ID :
<asp:TextBox ID="txtProID" runat="server"></asp:TextBox>
<p>
    Products Name :
    <asp:TextBox ID="txtProname" runat="server"></asp:TextBox>
</p>
<p>
    Price :
    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
</p>
<p style="direction: ltr">
    QTY :
    <asp:TextBox ID="txtqty" runat="server"></asp:TextBox>
</p>
<p style="direction: ltr">
    Photo :
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:Image ID="Image1" runat="server" Height="126px" Width="105px" />
    <asp:Label ID="lblPhoto" runat="server" Text="Label" Visible="False"></asp:Label>
</p>
<p style="direction: ltr">
    <asp:Button ID="Button1" runat="server" Height="47px" OnClick="Button1_Click" Text="Add New Products" Width="164px" />
</p>
<p style="direction: ltr">
    <asp:Label ID="lblResult" runat="server" Text="Label" Visible="False"></asp:Label>
</p>
<asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#594B9C" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#33276A" />
</asp:GridView>

