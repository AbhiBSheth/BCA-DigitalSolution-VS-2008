<%@ Page Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="Pan.aspx.cs" Inherits="user_Pan" Title="Pan Card Registeration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #TextBox8
        {
            width: 184px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<table>
    <tr>
		<td><font face="DigifaceWide" color="#003399"><h1>Pan Card Registeration</h1></font></td>
	</tr>
	<tr>
		<td><asp:Label ID="Label1" CssClass="icon" runat="server" Text="Applycant Name"></asp:Label></td>
	</tr>
	<tr>
		<td>
		    <br />
           	<i class="fa fa-user icon"></i>
            <asp:TextBox ID="TextBox1" placeholder="First Name" runat="server"></asp:TextBox>
		    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="required" ToolTip="required" >*</asp:RequiredFieldValidator>
		</td>
	</tr>
	<tr>
		<td>
             <asp:TextBox ID="TextBox2" placeholder="Middle Name" runat="server" 
                 Width="187px"></asp:TextBox>
		     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="required" ToolTip="required" >*</asp:RequiredFieldValidator>
		</td>
	</tr>
	<tr>
		<td>
            <asp:TextBox ID="TextBox3" placeholder="Last Name" runat="server" Width="186px"></asp:TextBox>
		    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="required" ToolTip="required" >*</asp:RequiredFieldValidator>
		</td>
	</tr>
	<tr>
		<td><asp:Label ID="Label2" runat="server" Text="Father Name"></asp:Label></td>
	</tr>
		<td>
    		<i class="fa fa-user icon"></i>
                <asp:TextBox ID="TextBox4" placeholder="First Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="required" ToolTip="required" >*</asp:RequiredFieldValidator>
		</td>
	</tr>
	<tr>
		<td>
            <asp:TextBox ID="TextBox5" placeholder="Middle Name" runat="server" 
                Width="187px"></asp:TextBox>
		    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="required" ToolTip="required" >*</asp:RequiredFieldValidator>
		</td>
	</tr>
	<tr>
		<td>
        	<asp:TextBox ID="TextBox6" placeholder="Last Name" runat="server" Width="187px"></asp:TextBox>
		    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="required" ToolTip="required" >*</asp:RequiredFieldValidator>
		</td>
	</tr>
	<tr>
		<td>
			<i class="fa fa-mobile icon"></i>
    		<asp:TextBox ID="TextBox7" placeholder="Mobile no" runat="server" Width="126px"></asp:TextBox>
		    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="required" ToolTip="required" >*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox7" ErrorMessage="Invalid Mobile No" 
                ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
		</td>
	</tr>
	<tr>
		<td>
			<input class="input-field" type="date" <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
		    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="required" ToolTip="required" >*</asp:RequiredFieldValidator>
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
                        Text="Submit" Width="150px" onclick="SubmitButton_Click" />
				</td>
				<td>
					<asp:Button ID="ResetButton" CssClass="icon" runat="server" CommandName="Reset" 
                        Font-Names="Times New Roman" Font-Size="X-Large" Text="Reset" 
                        CausesValidation="False" Width="150px" onclick="ResetButton_Click"/>
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

