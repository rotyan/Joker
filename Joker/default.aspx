<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="Joker._default" %>

<%@ Register TagPrefix="uc1" TagName="DepartmentsList" Src="UserControls/DepartmentsList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CategoriesList" Src="UserControls/CategoriesList.ascx" %>

<%@ Register TagPrefix="uc1" TagName="Header" Src="UserControls/Header.ascx" %>

<!DOCTYPE html>
<script runat="server">

    Protected Sub Page_Load(sender As Object, e As EventArgs)

    End Sub
</script>


<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Joker</title>
    <link href="JokePoint.css" type ="text/css" rel ="stylesheet" />
    <link href="Basic.css" type ="text/css" rel ="stylesheet" />
</head>

<body>
    <div id="header">
        <uc1:Header ID="Header1" runat="server"></uc1:Header>
        <div id="name">
            <h1>毕业季主题书店</h1><h3>——by菁华摄影工作室</h3></div>
        <div class="QR">
            <img src="/img/qrcode_for_gh_4cbdf979c0e7_258.jpg "style="width: 96px ;height: 96px" alt="QR"></div>
    </div>
    <div id="banner">
        <asp:TextBox ID="TextBox1" runat="server">（输入商品名称）</asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="搜索" />
    </div>
    <div id="contect">
        <div id="newsad">
			<uc1:departmentslist id="DepartmentsList1" runat="server"></uc1:departmentslist>
			<uc1:categorieslist id="CategoriesList1" runat="server"></uc1:categorieslist>
        </div>
        <div id="news">商品展示(图片+详细描述+购买链接)
            <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
        </div>
    </div>
</body>

</html>
