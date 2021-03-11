<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddProducts.aspx.cs" Inherits="Admin_AddProducts" %>

<%@ Register Src="~/UC/Products/AddNewProducts.ascx" TagPrefix="uc1" TagName="AddNewProducts" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <uc1:AddNewProducts runat="server" ID="AddNewProducts" />
</asp:Content>

