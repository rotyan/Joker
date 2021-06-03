<%@ Control Language="vb" AutoEventWireup="false" Codebehind="DepartmentsList.ascx.vb" Inherits="JokePoint.DepartmentsList" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<asp:DataList id="list" runat="server" CellPadding="0">
	
	<HeaderTemplate>
		<IMG alt="" src="../img/DeptHeader.gif" border="0">
	</HeaderTemplate>

	<ItemTemplate>
		&nbsp;&raquo;
		<asp:HyperLink id="HyperLink1" runat="server" NavigateUrl='<%# "../default.aspx?DepartmentID=" & amp; DataBinder.Eval(Container.DataItem, "departmentID") &amp; "&amp;DepartmentIndex=" &amp; Container.ItemIndex  %>' Text='<%# DataBinder.Eval(Container.DataItem, "Name") %>' CssClass="DepartmentUnselected">
		</asp:HyperLink>
	</ItemTemplate>

	<SelectedItemTemplate>
		&nbsp;&raquo; 
		<asp:HyperLink id="HyperLink2" runat="server" NavigateUrl='<%# "../default.aspx?DepartmentID=" & amp; DataBinder.Eval(Container.DataItem, "departmentID") &amp; "&amp;DepartmentIndex=" &amp; Container.ItemIndex %>' Text='<%# DataBinder.Eval(Container.DataItem, "Name") %>' CssClass="DepartmentSelected">
		</asp:HyperLink>
	</SelectedItemTemplate>

	<FooterTemplate>
		<IMG alt="" src="../img/DeptFooter.gif" border="0">
	</FooterTemplate>
	<ItemStyle BackColor="Yellow"></ItemStyle>

	<HeaderStyle BackColor="Yellow"></HeaderStyle>
</asp:DataList>
