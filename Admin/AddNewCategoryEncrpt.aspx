<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/Admin.master" CodeFile="AddNewCategoryEncrpt.aspx.cs" Inherits="Admin_AddNewCategoryEncrpt" %>

<%@ Register Src="~/UC/Category/AddNewCategoryBYENCRYID.ascx" TagPrefix="uc1" TagName="AddNewCategoryBYENCRYID" %>


<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <uc1:AddNewCategoryBYENCRYID runat="server" ID="AddNewCategoryBYENCRYID" />

    </asp:Content>

