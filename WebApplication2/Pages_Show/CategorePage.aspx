<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CategorePage.aspx.cs" Inherits="WebApplication2.Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="test_database" runat="server" onclick="test_database_Click" 
            Text="Connectin database" />
        <asp:Button ID="dis_conn" runat="server" Text="disconnection" 
            onclick="dis_conn_Click" />
    
        <asp:Label ID="lbl_ins" runat="server" Text="status inserte"></asp:Label>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" CellSpacing="2" DataKeyNames="ID_CATEGORY" 
        DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="ID_CATEGORY" HeaderText="ID_CATEGORY" 
                ReadOnly="True" SortExpression="ID_CATEGORY" />
            <asp:BoundField DataField="NAME_CATEGORY" HeaderText="NAME_CATEGORY" 
                SortExpression="NAME_CATEGORY" />
            <asp:BoundField DataField="PUBLISH_DATE" HeaderText="PUBLISH_DATE" 
                SortExpression="PUBLISH_DATE" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DB_PROJECT1ConnectionString %>" 
        SelectCommand="SELECT * FROM [category_tb]"></asp:SqlDataSource>
    <asp:TextBox ID="txt_cate_id" runat="server"></asp:TextBox>
    <asp:Label ID="lbl_cat" runat="server" Text="ID_Category"></asp:Label>
    <br />
    <asp:TextBox ID="txt_cat_name" runat="server"></asp:TextBox>
    <asp:Label ID="lbl_cat_name" runat="server" Text="categore name"></asp:Label>
    <br />
    <asp:TextBox ID="txt_cat_pub" runat="server"></asp:TextBox>
    <asp:Label ID="lbl_pub_date" runat="server" Text="publish date"></asp:Label>
    <p>
        <asp:Button ID="btn_ins" runat="server" onclick="btn_ins_Click" Text="insert" 
            Width="87px" />
        <asp:Button ID="id_del" runat="server" onclick="id_del_Click" Text="delete" />
    </p>
    </form>
</body>
</html>
