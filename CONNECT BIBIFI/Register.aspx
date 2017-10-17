<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Account_Register" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <table style="width: 100%; background-color: #CCCCCC">
        <tr>
            <td class="text-left" style="font-size: 11pt; height: 36px"><span style="text-decoration: underline"><strong><em>C</em></strong></span><span style="font-size: 11pt; text-decoration: underline"><strong><em>reate Account</em></strong></span></td>
            <td style="width: 313px; height: 36px"></td>
            <td class="text-left" style="height: 36px"></td>
        </tr>
        <tr>
            <td class="text-center" style="font-size: 11pt">User Name </td>
            <td style="width: 313px">
                <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="280px"></asp:TextBox>
            </td>
            <td class="text-left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox1" ErrorMessage="User Name Is required." ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-center" style="font-size: 11pt">E<span style="font-size: 11pt">mail </span></td>
            <td style="width: 313px">
                <asp:TextBox ID="TextBox2" runat="server" Height="34px" TextMode="Email" Width="280px"></asp:TextBox>
            </td>
            <td class="text-left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox2" ErrorMessage="Emai is required." ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter a valid email id " ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="text-center" style="font-size: 11pt">P<span style="font-size: 11pt">assword</span></td>
            <td style="width: 313px">
                <asp:TextBox ID="TextBox3" runat="server" Height="34px" TextMode="Password" Width="280px"></asp:TextBox>
            </td>
            <td class="text-left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox3" ErrorMessage="Password  Is required." ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-center" style="font-size: 11pt; height: 22px">C<span style="font-size: 11pt">onfirm Password</span></td>
            <td style="height: 22px; width: 313px">
                <asp:TextBox ID="TextBox4" runat="server" Height="34px" TextMode="Password" Width="280px"></asp:TextBox>
            </td>
            <td class="text-left" style="height: 22px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox4" ErrorMessage="Confirm Password  Is required." ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="Both password must be identical" ForeColor="#CC0000"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="text-center" style="font-size: 11pt; height: 23px">Country</td>
            <td class="text-left" style="height: 23px; width: 313px">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="146px">
                    <asp:ListItem Selected="True">Select Country</asp:ListItem>
                    <asp:ListItem>EGYPT</asp:ListItem>
                    <asp:ListItem>USA</asp:ListItem>
                    <asp:ListItem>PORTUGAL</asp:ListItem>
                    <asp:ListItem>BRAZIL</asp:ListItem>
                    <asp:ListItem>FRANCE</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="text-left" style="height: 23px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select a country" ForeColor="#CC0000" InitialValue="Select Country"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-center" style="font-size: 11pt">G<span style="font-size: 11pt">endre</span></td>
            <td class="text-left" style="width: 313px">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="20px" Width="140px">
                    <asp:ListItem Selected="True" Value="Select ">Select</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="text-left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Select a Gendre" ForeColor="#CC0000" InitialValue="Select"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 24px"></td>
            <td style="height: 24px; width: 313px">
                <asp:Button ID="Button1" runat="server" BackColor="#999999" Font-Bold="True" Font-Italic="True" ForeColor="#000066" Height="24px" OnClick="Button1_Click" Text="Register" Width="99px" />
            &nbsp; <strong><em><span style="font-size: xx-large; color: #CC0000">o</span><span style="font-size: xx-large; color: #0000CC">R&nbsp; </span>
                </em></strong>
                <asp:HyperLink ID="HyperLink1" runat="server" BackColor="#CCCCCC" BorderColor="White" BorderStyle="None" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#0000CC" Height="23px" NavigateUrl="~/Login.aspx" Width="79px" Font-Underline="True">LOG IN </asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td style="height: 24px"></td>
        </tr>
        <tr>
            <td class="text-center" style="height: 22px"></td>
            <td class="text-center" style="width: 313px; height: 22px;"></td>
            <td class="text-center" style="height: 22px"></td>
        </tr>
        <tr>
            <td class="text-center">&nbsp;</td>
            <td class="text-center" style="width: 313px">&nbsp;</td>
            <td class="text-center">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center">&nbsp;</td>
            <td class="text-center" style="width: 313px">&nbsp;</td>
            <td class="text-center">&nbsp;</td>
        </tr>
    </table>
</asp:Content>


