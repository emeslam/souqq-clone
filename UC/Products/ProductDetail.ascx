<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ProductDetail.ascx.cs" Inherits="UC_Products_ProductDetail" %>
<style type="text/css">



    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 235px;
    }
    .auto-style5 {
        width: 607px;
    }
    .auto-style3 {
        height: 32px;
        width: 607px;
    }
    .auto-style4 {
        height: 65px;
        direction: ltr;
        width: 607px;
    }
    </style>

<asp:Label ID="lblHeader" runat="server" Font-Bold="True" Font-Size="Larger" Text="Product Details"></asp:Label>
<table class="auto-style1">
    <tr>
        <td class="auto-style2" rowspan="10" style="text-align: left">
            <asp:Image ID="Image1" runat="server" Height="299px" Width="200px" />
        </td>
        <td class="auto-style5">
            <asp:Label ID="Label1" runat="server" Text="Category : "></asp:Label>
            <asp:Label ID="lblCategory" runat="server" Text="[Category]"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Label ID="Label3" runat="server" Text="Product Id :"></asp:Label>
            &nbsp;<asp:Label ID="lblProductId" runat="server" Text="[Prodcut ID]"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Label ID="Label5" runat="server" Text="Product Name : "></asp:Label>
            <asp:Label ID="lblProductName" runat="server" Text="[Product Name]"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="Label7" runat="server" Text="Price : "></asp:Label>
            <asp:Label ID="lblProductPrice" runat="server" Text="[Price]"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Label ID="Label9" runat="server" Text="Max Quantity : "></asp:Label>
            <asp:Label ID="lblMaxQty" runat="server" Text="[Max Quantity]"></asp:Label>
            <asp:TextBox ID="txtMaxQty" runat="server" Visible="False" Width="82px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Label ID="Label13" runat="server" Text="Quantity You Want : "></asp:Label>
            <asp:TextBox ID="txtQty" runat="server">1</asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtMaxQty" ControlToValidate="txtQty" ErrorMessage="your Qunity greeater than Max quantity" Operator="LessThanEqual" Type="Integer"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:ImageButton ID="ImageButton1" runat="server" Height="83px" ImageUrl="~/Design/images/ADDToCart.png" OnClick="ImageButton1_Click" Width="202px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            <%--<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtMaxQty" ControlToValidate="txtQty" ErrorMessage="This Quantity Higher Max Quantity Avilable" Operator="LessThanEqual"></asp:CompareValidator>--%>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ProCategory.aspx">Continue Shopping</asp:HyperLink>
        </td>
    </tr>
</table>

