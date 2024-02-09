<%@ Page Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="Sign1.aspx.cs" Inherits="user_Sign" Title="Digital Signature Registeration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <center>
       <table>
        <tr>
            <td>
		<form method="POST" action="Signi.php" style="max-width:500px;margin:auto">
			<font color="#003399" face="DigifaceWide"><h2>Digital Signature Registeration</h2></font>
                </td>
            </tr>
            <tr>
		        <td><asp:Label ID="Label3" CssClass="icon" runat="server" Text="Applycant Name"></asp:Label></td>
            </tr>
            <tr>
                <td>
                    <div class="input-container">
                    <br />
                        <asp:Label ID="Label2" runat="server" Text="Signature Type"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>CLASS II</asp:ListItem>
                            <asp:ListItem>CLASS III</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="input-container">
                        <i class="fa fa-user icon"></i>
                        <input class="input-field" name="fnm" placeholder="First Name" required="" 
                            type="text" />
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="input-container">
                        <input class="input-field" name="mnm" placeholder="Middle Name" required="" 
                            type="text" />
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="input-container">
                        <input class="input-field" name="lnm" placeholder="Last Name" required="" 
                            type="text" />
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="input-container">
                        <i class="fa fa-mobile icon"></i>
                        <input class="input-field" maxlength="10" name="mob" placeholder="Mobile No" 
                            required="" type="text" />
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="input-container">
                        <i class="fa fa-envelope icon"></i>
                        <input class="input-field" maxlength="10" name="email" placeholder="Email Id" 
                            required="" type="text" />
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="input-container">
                        <input class="input-field" maxlength="10" name="pn" placeholder="Pan Number" 
                            required="" type="text" />
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="input-container">
                        <input class="input-field" maxlength="12" name="an" placeholder="Addhar Number" 
                            required="" type="text" />
                        <input .="II" .="" class="input-field" name="type" type="hidden" value="II" />
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="input-container">
                        <asp:Label ID="Label1" runat="server" Text="With Encript"></asp:Label>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </div>
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
		</table>
	</center>
</asp:Content>

