<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePassward.aspx.cs" Inherits="SEGP_PRROJECT1.Theme.unify.assets.ChangePassward" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 410px">
    <form id="form1" runat="server">
        <div style="height: 439px; z-index: 1; left: 18px; top: 12px; position: absolute; width: 1083px">
            <br />
            <asp:Panel ID="Panel1" runat="server" Height="229px"
                Style="z-index: 1; left: 0px; top: 19px; position: absolute; height: 229px; width: 1083px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="UserName"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="295px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ControlToValidate="TextBox1" ErrorMessage="Enter your UserName" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                &nbsp;
            <asp:Label ID="Label1" runat="server" Text="Email Id"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtEmail" runat="server" AutoPostBack="True" Width="298px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ControlToValidate="txtEmail" ErrorMessage="Enter your Email Id."
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="SendEmail" Text="Send" />
                &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server"  Text="LogIn"
                Width="75px" />
            </asp:Panel>
            <br />
        </div>

    </form>
</body>
</html>

