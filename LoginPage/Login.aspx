<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LoginPage.Login" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 581px;
        }
        .style3
        {
            width: 581px;
            text-align: right;
            font-size: x-large;
        }
        .style4
        {
            width: 581px;
            text-align: right;
            height: 47px;
            font-size: x-large;
        }
        .style5
        {
            height: 47px;
        }
        .style6
        {
            height: 47px;
            text-align: left;
            width: 475px;
        }
        .style7
        {
            text-align: left;
            width: 475px;
        }
        </style>
</head>
<body style="font-weight: 700; font-family: 'TH SarabunPSK'; font-size: xx-large; text-align: center">
    <form id="form1" runat="server">
    <div>
        LOGIN<br />
        <img src="pic/logo.png" style="max-width:100%"  >

        </div>
        <br />

    <table class="style1">
        <tr>
            <td class="style3">
                <strong>Username :
            </strong>
            </td>
            <center><td class="style7">
                <asp:TextBox ID="txt_Username" class="form-control" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txt_Username" ErrorMessage="* Please enter Username" 
                    ForeColor="Red" style="font-size: x-large; font-weight: 700;"></asp:RequiredFieldValidator>
            </td></center>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                <strong>Password :
            </strong>
            </td>
            <center><td class="style6">
                <asp:TextBox ID="txt_Password" class="form-control" runat="server" TextMode="Password" Width="200px" 
                    ontextchanged="txt_Password_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txt_Password" ErrorMessage="* Please enter Password" 
                    ForeColor="Red" style="font-size: x-large; font-weight: 700;"></asp:RequiredFieldValidator>
            </td></center>
            <td class="style5">
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style7">
                <asp:Button ID="txt_GLogin" runat="server" onclick="txt_GLogin_Click" 
                    style="font-weight: 700; font-family: 'TH SarabunPSK'; font-size: large" 
                    Text="LOGIN" Width="90px" />
            &nbsp;&nbsp;
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
