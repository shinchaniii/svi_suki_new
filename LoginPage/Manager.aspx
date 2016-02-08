<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manager.aspx.cs" Inherits="LoginPage.Manager" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 286px; width: 1081px">
    
        <asp:SqlDataSource ID="SqlDataSourceRegistration" runat="server" 
            ConnectionString="<%$ ConnectionStrings:project-testConnectionString %>" 
            SelectCommand="SELECT * FROM [choice]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
            DataKeyNames="id_choice" DataSourceID="SqlDataSourceRegistration" 
            ForeColor="Black" BackColor="#CCCCCC" BorderColor="#999999" 
            BorderStyle="Solid" BorderWidth="3px" CellSpacing="2" Height="514px" 
            Width="624px">
            <Columns>
                <asp:BoundField DataField="id_choice" HeaderText="Materail ID" 
                    InsertVisible="False" ReadOnly="True" SortExpression="id_choice" />
                <asp:BoundField DataField="name_choice" HeaderText="Material" 
                    SortExpression="name_choice" />
                <asp:BoundField DataField="stock_choice" HeaderText="Total" 
                    SortExpression="stock_choice" />
                <asp:BoundField DataField="push_choice" HeaderText="Volume" 
                    SortExpression="push_choice" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    
        <br />
    
    </div>
    <div>
    </div>
    <div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    
    <asp:Button ID="txt_back" runat="server" Text="LOG OUT" onclick="Button1_Click" 
            style="font-weight: 700; font-family: 'TH SarabunPSK'; font-size: large; height: 39px" 
            Width="105px" />
    &nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    </div>
    
    </form>
</body>
</html>
