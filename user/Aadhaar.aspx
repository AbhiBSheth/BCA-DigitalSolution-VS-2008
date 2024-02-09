<%@ Page Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="Aadhaar.aspx.cs" Inherits="user_Aadhaar" Title="Aadhar Card Registeration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<table>
<tr>
		<td>
		<form method="POST" action="Addhari.php" style="max-width:500px;margin:auto">
			<font face="DigifaceWide" color="#003399"><h2>Aadhar Card Registeration</h2></font>
	<tr>
		<td><asp:Label ID="Label1" CssClass="icon" runat="server" Text="Applycant Name"></asp:Label></td>
	</tr>
	<tr>
		<td>
        	<div class="input-container">
        	<br />
    		<i class="fa fa-user icon"></i>
    		<input class="input-field" type="text" placeholder="First Name" name="fnm" required>
  		</div>
		</td>
	</tr>
	<tr>
		<td>
        	<div class="input-container">
    		<input class="input-field" type="text" placeholder="Middle Name" name="mnm" required>
  		</div>
		</td>
	</tr>
	<tr>
		<td>
        	<div class="input-container">
    		<input class="input-field" type="text" placeholder="Last Name" name="lnm" required>
  		</div>
		</td>
	</tr>
	<tr>
		<td>
        	<div class="input-container">
			<i class="fa fa-mobile icon"></i>
    		<input class="input-field" type="text" maxlength="10" placeholder="Mobile No" name="mob" required>
  		</div>
		</td>
	</tr>
	<tr>
		<td>
			<input class="input-field" type="date" name="dob" required>
		</td>
	</tr>
	<tr>
		<td><asp:Label ID="Label3" runat="server" Text="Photo"></asp:Label></td>
	</tr>
	<tr>
        <td><asp:FileUpload CssClass="icon" ID="FileUpload1" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="FileUpload1" ErrorMessage="required" ToolTip="required" >*</asp:RequiredFieldValidator>
		</td>
	</tr>
	<tr>
		<td>
			<textarea class="input-field"  name="add" placeholder="Address" style="height:150px"></textarea>
		</td>
	</tr>
	<tr>
		<td><asp:Label ID="Label4" runat="server" Text="Birth Proof"></asp:Label></td>
	</tr>
	<tr>
        <td><asp:FileUpload CssClass="icon" ID="FileUpload2" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="FileUpload2" ErrorMessage="required" ToolTip="required" >*</asp:RequiredFieldValidator>
		</td>
	</tr>
	<tr>
		<td>
		  <table>
			<tr>
				<td>
					<asp:Button ID="SubmitButton" CssClass="icon" runat="server" 
                        CommandName="Submit" Font-Names="Times New Roman" Font-Size="X-Large" 
                        Text="Submit" Width="150px" />
				</td>
				<td>
					<asp:Button ID="ResetButton" CssClass="icon" runat="server" CommandName="Reset" 
                        Font-Names="Times New Roman" Font-Size="X-Large" Text="Reset" 
                        CausesValidation="False" Width="150px" />
				</td>
			</tr>
		</table>
		</td>
	</tr>
		</form>
		</td>
	</tr>
</table>
</center>

</asp:Content>

