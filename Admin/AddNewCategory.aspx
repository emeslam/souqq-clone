<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddNewCategory.aspx.cs" Inherits="Admin_AddNewCategory" %>

<%@ Register src="../UC/Category/AddNewCategory.ascx" tagname="AddNewCategory" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <uc1:AddNewCategory ID="AddNewCategory1" runat="server" />
    
    </div>
    </form>
</body>
</html>
