<%@ Page Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="Pan.aspx.cs" Inherits="admin_Pan" Title="PAN CARD DETAILS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table>
    <tr>
		<td><font face="DigifaceWide" color="#003399"><h1>Pan Card Detail</h1></font></td>
	</tr>
	<tr>
	</table>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
        GridLines="None">
        <RowStyle BackColor="#EFF3FB" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="fnm" HeaderText="fnm" SortExpression="fnm" />
            <asp:BoundField DataField="mnm" HeaderText="mnm" SortExpression="mnm" />
            <asp:BoundField DataField="lnm" HeaderText="lnm" SortExpression="lnm" />
            <asp:BoundField DataField="ffnm" HeaderText="ffnm" SortExpression="ffnm" />
            <asp:BoundField DataField="fmnm" HeaderText="fmnm" SortExpression="fmnm" />
            <asp:BoundField DataField="flnm" HeaderText="flnm" SortExpression="flnm" />
            <asp:BoundField DataField="mob" HeaderText="mob" SortExpression="mob" />
            <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
            <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />
            <asp:BoundField DataField="bprof" HeaderText="bprof" SortExpression="bprof" />
            <asp:BoundField DataField="pn" HeaderText="pn" SortExpression="pn" />
        </Columns>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs %>" 
        SelectCommand="SELECT * FROM [Pan]"></asp:SqlDataSource>
    </center>
</asp:Content>

