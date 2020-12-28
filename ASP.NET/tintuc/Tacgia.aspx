<%@ Page Title="" Language="C#" MasterPageFile="~/Mater/Management .Master" AutoEventWireup="true" CodeBehind="Tacgia.aspx.cs" Inherits="ASP.NET.tintuc.Tacgia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <nav style="width: 1302px; float:left;">
                <a id="A1" href="../tintuc/Trangchu.aspx" runat="server">Trang chủ</a>&nbsp;&nbsp;&nbsp;&nbsp;
               <a id="A2" href="~/tintuc/Chude.aspx" runat="server">Chủ đề</a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a id="A3" href="~/tintuc/Tacgia.aspx" runat="server">Tác giả</a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a id="A4" href="~/tintuc/Tintuc.aspx" runat="server">Tin tức</a>
        </nav>
   <center style="height: 278px; width: 1348px">
       <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="TGIAID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." GridLines="Horizontal" style="margin-top: 43px">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="TGIAID" HeaderText="TGIAID" ReadOnly="True" SortExpression="TGIAID" />
            <asp:BoundField DataField="TENTG" HeaderText="TENTG" SortExpression="TENTG" />
            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
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
    
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="TGIAID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="164px" Width="365px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <Fields>
            <asp:BoundField DataField="TGIAID" HeaderText="TGIAID" ReadOnly="True" SortExpression="TGIAID" />
            <asp:BoundField DataField="TENTG" HeaderText="TENTG" SortExpression="TENTG" />
            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:laptop-f40v6e8f.Webtintuc.dbo %>" DeleteCommand="DELETE FROM [TACGIA] WHERE [TGIAID] = @TGIAID" InsertCommand="INSERT INTO [TACGIA] ([TGIAID], [TENTG], [EMAIL]) VALUES (@TGIAID, @TENTG, @EMAIL)" ProviderName="<%$ ConnectionStrings:laptop-f40v6e8f.Webtintuc.dbo.ProviderName %>" SelectCommand="SELECT [TGIAID], [TENTG], [EMAIL] FROM [TACGIA]" UpdateCommand="UPDATE [TACGIA] SET [TENTG] = @TENTG, [EMAIL] = @EMAIL WHERE [TGIAID] = @TGIAID">
        <DeleteParameters>
            <asp:Parameter Name="TGIAID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TGIAID" Type="String" />
            <asp:Parameter Name="TENTG" Type="String" />
            <asp:Parameter Name="EMAIL" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TENTG" Type="String" />
            <asp:Parameter Name="EMAIL" Type="String" />
            <asp:Parameter Name="TGIAID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
