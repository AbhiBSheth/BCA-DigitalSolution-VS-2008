﻿<%@ Page Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="Sign1s.aspx.cs" Inherits="user_Sign1s" Title="Digital Signature Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    <table>
        <tr>
            <td>
                <div>
                   <font face="DigifaceWide" color="#003399"><h2>Digital Signature Search</h2></font>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <i class="fa fa-user icon"></i>
                <asp:TextBox ID="TextBox1" placeholder="Mobile no" runat="server"></asp:TextBox>
		        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="required" ToolTip="required" >*</asp:RequiredFieldValidator></div>
            </td>
        </tr>
        <tr>
            <td>
                 <asp:Button ID="SubmitButton" CssClass="icon" runat="server" 
                     CommandName="Submit" Font-Names="Times New Roman" Font-Size="X-Large" 
                     Text="Submit" Width="118px" Height="57px"  />
            </td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="fnm" HeaderText="fnm" SortExpression="fnm" />
            <asp:BoundField DataField="mnm" HeaderText="mnm" SortExpression="mnm" />
            <asp:BoundField DataField="lnm" HeaderText="lnm" SortExpression="lnm" />
            <asp:BoundField DataField="mob" HeaderText="mob" SortExpression="mob" />
            <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
            <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />
            <asp:BoundField DataField="address" HeaderText="address" 
                SortExpression="address" />
            <asp:BoundField DataField="bprof" HeaderText="bprof" SortExpression="bprof" />
            <asp:BoundField DataField="an" HeaderText="an" SortExpression="an" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs %>" 
        SelectCommand="SELECT * FROM [Aadhaar] WHERE ([mob] = @mob)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="mob" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>

