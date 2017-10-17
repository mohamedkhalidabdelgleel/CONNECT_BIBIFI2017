<%@ Page Language="C#" AutoEventWireup="true" CodeFile="inbox.aspx.cs" Inherits="inbox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 131%;
            border-color: #000066;
            background-color: #666699;
            height: 658px;
        }
        .auto-style4 {
            width: 723px;
            height: 26px;
        }
        .auto-style6 {
            width: 723px;
            height: 46px;
        }
        .auto-style7 {
            width: 723px;
            text-align: center;
        }
        .auto-style8 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" ForeColor="White" Text="Hello , "></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" BackColor="#0099FF" BorderColor="#3333CC" BorderStyle="Inset" ForeColor="#000066" Height="33px" Text="Send message " Width="120px" OnClick="Button1_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="Red" NavigateUrl="~/Login.aspx">LOGOUT</asp:HyperLink>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        &nbsp;
                        <div class="auto-style8">
                            <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Outset" BorderWidth="3px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" Height="355px" Width="753px" ForeColor="Black">
                                <AlternatingItemStyle BackColor="#CCCCCC" />
                                <FooterStyle BackColor="#CCCCCC" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                <ItemTemplate>
                                    Sender:
                                    <asp:Label ID="SenderLabel" runat="server" Text='<%# Eval("Sender") %>' />
                                    <br />
                                    Receive:
                                    <asp:Label ID="ReceiveLabel" runat="server" Text='<%# Eval("Receive") %>' />
                                    <br />
                                    Message:
                                    <asp:Label ID="MessageLabel" runat="server" Text='<%# Eval("Message") %>' />
<br />
                                    <br />
                                </ItemTemplate>
                                <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            </asp:DataList>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
