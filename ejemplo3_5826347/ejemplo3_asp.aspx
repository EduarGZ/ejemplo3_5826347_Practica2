<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ejemplo3_asp.aspx.cs" Inherits="ejemplo3_5826347.ejemplo3_asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" Font-Bold="true" Text="Customer"></asp:Label> <br />
            <asp:Table runat="server">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label runat="server" Text="Zip Code"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox runat="server" ID="txtZipCode"></asp:TextBox>
                        <asp:RegularExpressionValidator runat="server" ControlToValidate="txtZipCode" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" Text=" * Zip code is invalid. Please enter a zip code of the form: ###." ValidationExpression="\d{5}"></asp:RegularExpressionValidator>
                    </asp:TableCell>
                </asp:TableRow>
                  <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label runat="server" Text="Phone"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox runat="server" ID="txtPhone"></asp:TextBox>
                        <asp:RegularExpressionValidator runat="server" ControlToValidate="txtPhone" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" Text=" * Phone number is invalid. Please enter a phone number of the form: ###-###-###." ValidationExpression="\d{3}\-\d{3}\-\d{4}"></asp:RegularExpressionValidator>
                    </asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label runat="server" Text="Email Address"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox runat="server" ID="txtEmailAddress"></asp:TextBox>
                        <asp:RegularExpressionValidator runat="server" ControlToValidate="txtEmailAddress" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" Text=" * Email address id invalid. Please enter an email address of the form: xxx@yyy.zzz." ValidationExpression="\S+\@\S+\.\S+"></asp:RegularExpressionValidator>
                    </asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label runat="server" Text="Password"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox runat="server" ID="txtPassword"></asp:TextBox>
                        <asp:RegularExpressionValidator runat="server" ControlToValidate="txtPassword" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" Text=" * Password id invalid. Please enter a password between 5 and 10 characters in length." ValidationExpression="\S{5,10}"></asp:RegularExpressionValidator>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Button runat="server" ID="btnSave" OnClick="btnSave_Click" Text="Save" />
        </div>
    </form>
</body>
</html>
