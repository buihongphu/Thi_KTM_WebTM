<%@ Page Title="" Language="C#" MasterPageFile="~/Mater/Management .Master" AutoEventWireup="true" CodeBehind="Tintuc.aspx.cs" Inherits="ASP.NET.tintuc.Tintuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <nav style="width: 1302px; float:left;">
                <a id="A1" href="../tintuc/Trangchu.aspx" runat="server">Trang chủ</a>&nbsp;&nbsp;&nbsp;&nbsp;
               <a id="A2" href="~/tintuc/Chude.aspx" runat="server">Chủ đề</a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a id="A3" href="~/tintuc/Tacgia.aspx" runat="server">Tác giả</a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a id="A4" href="~/tintuc/Tintuc.aspx" runat="server">Tin tức</a>
        </nav>
    <center style="height: 387px; width: 1338px">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TINID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="TINID" HeaderText="TINID" ReadOnly="True" SortExpression="TINID" />
            <asp:BoundField DataField="NOIDUNG" HeaderText="NOIDUNG" SortExpression="NOIDUNG" />
            <asp:BoundField DataField="NGAYGUI" HeaderText="NGAYGUI" SortExpression="NGAYGUI" />
            <asp:BoundField DataField="TGIAID" HeaderText="TGIAID" SortExpression="TGIAID" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    </center>
    <center style="height: 124px; width: 1352px">
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="TENCD" DataValueField="CHUDEID" AppendDataBoundItems="True">
        <asp:ListItem Value="">Chọn chủ đề</asp:ListItem>
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:laptop-f40v6e8f.Webtintuc.dbo %>" SelectCommand="SELECT [CHUDEID], [TENCD] FROM [CHUDE]"></asp:SqlDataSource>
    </center>
    <center style="height: 130px; width: 1348px">
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="TINID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="363px" BackColor="White" BorderColor="#CC9966" BorderWidth="1px" CellPadding="4" BorderStyle="None">
        <EditRowStyle BackColor="#FFCC66" ForeColor="#663399" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="TINID" HeaderText="TINID" ReadOnly="True" SortExpression="TINID" />
            <asp:BoundField DataField="NOIDUNG" HeaderText="NOIDUNG" SortExpression="NOIDUNG" />
            <asp:BoundField DataField="NGAYGUI" HeaderText="NGAYGUI" SortExpression="NGAYGUI" />
            <asp:BoundField DataField="TGIAID" HeaderText="TGIAID" SortExpression="TGIAID" />
            <asp:CommandField ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
    </asp:DetailsView>
    </center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:laptop-f40v6e8f.Webtintuc.dbo %>" DeleteCommand="DELETE FROM [TINTUC] WHERE [TINID] = @TINID" InsertCommand="INSERT INTO [TINTUC] ([TINID], [NOIDUNG], [NGAYGUI], [TGIAID]) VALUES (@TINID, @NOIDUNG, @NGAYGUI, @TGIAID)" ProviderName="<%$ ConnectionStrings:laptop-f40v6e8f.Webtintuc.dbo.ProviderName %>" SelectCommand="SELECT [TINID], [NOIDUNG], [NGAYGUI], [TGIAID] FROM [TINTUC]" UpdateCommand="UPDATE [TINTUC] SET [NOIDUNG] = @NOIDUNG, [NGAYGUI] = @NGAYGUI, [TGIAID] = @TGIAID WHERE [TINID] = @TINID">
        <DeleteParameters>
            <asp:Parameter Name="TINID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TINID" Type="String" />
            <asp:Parameter Name="NOIDUNG" Type="String" />
            <asp:Parameter DbType="Date" Name="NGAYGUI" />
            <asp:Parameter Name="TGIAID" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NOIDUNG" Type="String" />
            <asp:Parameter DbType="Date" Name="NGAYGUI" />
            <asp:Parameter Name="TGIAID" Type="String" />
            <asp:Parameter Name="TINID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
