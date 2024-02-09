<%@ Page Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="Loginreg.aspx.cs" Inherits="admin_Loginreg" Title="LOGIN REGISTER" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <center>
      <h2>User Register Form</h2>
  <div class="input-container">
    <i class="fa fa-user icon"></i>
    <asp:TextBox ID="UserName" runat="server" Font-Names="Times New Roman" Font-Size="Large" Width="300px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required.">*</asp:RequiredFieldValidator>
  </div>

  <div class="input-container">
 	<i class="fa fa-key icon"></i>
 	<asp:TextBox ID="Password" runat="server" Font-Names="Times New Roman" Font-Size="Large" TextMode="Password" Width="300px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required.">*</asp:RequiredFieldValidator>
  </div>
  
  <div class="input-container">
    <i class="fa fa-phone icon"></i>
    <asp:TextBox ID="Mobile" runat="server" Font-Names="Times New Roman" Font-Size="Large" Width="175px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Mobile" ErrorMessage="required" ToolTip="required" >*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Mobile" ErrorMessage="Invalid Mobile No" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
  </div>	
  
  <div class="input-container">
 	<i class="fa fa-user icon"></i>
 	&nbsp;<asp:DropDownList ID="DropDownList1" 
            runat="server" Height="25px" Width="308px">
            <asp:ListItem>admin</asp:ListItem>
            <asp:ListItem>user</asp:ListItem>
        </asp:DropDownList>
  </div>
    <table>
		<tr>
			<td><asp:Button ID="Submit" CssClass="icon" runat="server" CommandName="Login" 
                    Font-Names="Times New Roman" Font-Size="X-Large" Text="Submit" Width="100px" 
                    Height="60px" onclick="Submit_Click" />
                 <asp:Button ID="Reset" CssClass="icon" 
                    runat="server" CommandName="Reset" Font-Names="Times New Roman" 
                    Font-Size="X-Large" Text="Reset" Width="100px" CausesValidation="False" 
                    onclick="Reset_Click" Height="60px" /></td>
		</tr>
	</table>
 	<div class="container signin">
    <p>Already have an account?<br><a href="../login.aspx">Sign in</a>.</p>
  </div>
</asp:Content>

