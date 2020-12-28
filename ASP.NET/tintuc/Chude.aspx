<%@ Page Title="" Language="C#" MasterPageFile="~/Mater/Management .Master" AutoEventWireup="true" CodeBehind="Chude.aspx.cs" Inherits="ASP.NET.tintuc.Chude" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <nav style="width: 1302px; float:left;">
                <a id="A1" href="../tintuc/Trangchu.aspx" runat="server">Trang chủ</a>&nbsp;&nbsp;&nbsp;&nbsp;
               <a id="A2" href="~/tintuc/Chude.aspx" runat="server">Chủ đề</a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a id="A3" href="~/tintuc/Tacgia.aspx" runat="server">Tác giả</a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a id="A4" href="~/tintuc/Tintuc.aspx" runat="server">Tin tức</a>
        </nav>
    <center style="height: 393px; width: 1259px">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="CHUDEID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowSorting="True" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
    <AlternatingRowStyle BackColor="#F7F7F7" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="CHUDEID" HeaderText="CHUDEID" ReadOnly="True" SortExpression="CHUDEID" />
        <asp:BoundField DataField="TENCD" HeaderText="TENCD" SortExpression="TENCD" />
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
<center style="height: 130px; width: 1254px">
    </br>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="CHUDEID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="16px" Width="524px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
    <AlternatingRowStyle BackColor="PaleGoldenrod" />
    <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    <Fields>
        <asp:BoundField DataField="CHUDEID" HeaderText="CHUDEID" ReadOnly="True" SortExpression="CHUDEID" />
        <asp:BoundField DataField="TENCD" HeaderText="TENCD" SortExpression="TENCD" />
        <asp:CommandField ShowInsertButton="True" />
    </Fields>
    <FooterStyle BackColor="Tan" />
    <HeaderStyle BackColor="Tan" Font-Bold="True" />
    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
</asp:DetailsView>
</center>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:laptop-f40v6e8f.Webtintuc.dbo %>" DeleteCommand="DELETE FROM [CHUDE] WHERE [CHUDEID] = @CHUDEID" InsertCommand="INSERT INTO [CHUDE] ([CHUDEID], [TENCD]) VALUES (@CHUDEID, @TENCD)" ProviderName="<%$ ConnectionStrings:laptop-f40v6e8f.Webtintuc.dbo.ProviderName %>" SelectCommand="SELECT [CHUDEID], [TENCD] FROM [CHUDE]" UpdateCommand="UPDATE [CHUDE] SET [TENCD] = @TENCD WHERE [CHUDEID] = @CHUDEID">
    <DeleteParameters>
        <asp:Parameter Name="CHUDEID" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="CHUDEID" Type="String" />
        <asp:Parameter Name="TENCD" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="TENCD" Type="String" />
        <asp:Parameter Name="CHUDEID" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
