<%@ Page Language="C#" MasterPageFile="~/visitor.master" AutoEventWireup="true" CodeFile="login.aspx.cs"
    Inherits="login" Title="LOGIN" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%">
        <tr style="width: 100%" align="center">
            <td style="width: 30%">
                <asp:Login ID="Login1" runat="server" BackColor="#FFFBD6" BorderColor="#FFDFAD" BorderPadding="15"
                    BorderStyle="Groove" BorderWidth="2px" Font-Names="Times New Roman" Font-Size="X-Large"
                    ForeColor="#333333" TextLayout="TextOnTop" DisplayRememberMe="False" Height="250px"
                    OnAuthenticate="Login1_Authenticate">
                    <TextBoxStyle Font-Size="Large" Width="300px" Font-Names="Times New Roman" />
                    <LoginButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px"
                        Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#990000" Width="150px" />
                    <LayoutTemplate>
                        <table border="0" cellpadding="15" cellspacing="0" 
                            style="border-collapse:collapse;">
                            <tr>
                                <td>
                                    <table border="0" cellpadding="0" style="height:250px;">
                                        <tr>
                                            <td align="center" class="icon" style="font-family:Times New Roman;font-size:XX-Large;font-weight:bold;width:300px;">
                                                Log In</td>
                                        </tr>
                                        <tr>
                                            <td class="fa fa-user icon">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="UserName" runat="server" Font-Names="Times New Roman" 
                                                    Font-Size="Large" Width="300px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                                    ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                                    ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                           <td class="fa fa-key icon">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="Password" runat="server" Font-Names="Times New Roman" 
                                                    Font-Size="Large" TextMode="Password" Width="300px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                                    ControlToValidate="Password" ErrorMessage="Password is required." 
                                                    ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Button ID="LoginButton" CssClass="icon" runat="server" CommandName="Login" 
                                                    Font-Names="Times New Roman" Font-Size="X-Large" 
                                                    Text="Log In" ValidationGroup="Login1" Width="150px" />
                                                    <asp:Button ID="Reset" CssClass="icon" runat="server" CommandName="Reset" 
                                                    Font-Names="Times New Roman" Font-Size="X-Large" 
                                                    Text="Reset" Width="150px" 
                                                    CausesValidation="False" onclick="Reset_Click" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                    <LabelStyle Font-Bold="True" Font-Size="Large" Width="300px" Wrap="True" Font-Names="Times New Roman" />
                    <TitleTextStyle BackColor="#990000" Font-Bold="True" Font-Size="XX-Large" ForeColor="White"
                        Width="300px" Font-Names="Times New Roman" />
                    <HyperLinkStyle Font-Bold="True" />
                </asp:Login>
                
            </td>
        </tr>
    </table>
</asp:Content>
