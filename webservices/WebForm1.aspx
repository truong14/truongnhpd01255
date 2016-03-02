<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="webservices.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
       <div style="color: #FF0000; font-size: 21px; font-weight: bold; text-decoration: underline">Khách hàng</div> <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaKH" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="MaKH" HeaderText="MaKH" InsertVisible="False" ReadOnly="True" SortExpression="MaKH" />
                <asp:BoundField DataField="Ho" HeaderText="Ho" SortExpression="Ho" />
                <asp:BoundField DataField="Ten" HeaderText="Ten" SortExpression="Ten" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
                <asp:BoundField DataField="DienThoai" HeaderText="DienThoai" SortExpression="DienThoai" />
                <asp:BoundField DataField="CongTy" HeaderText="CongTy" SortExpression="CongTy" />
                <asp:BoundField DataField="GioiTinh" HeaderText="GioiTinh" SortExpression="GioiTinh" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuanlibanhangConnectionString %>" DeleteCommand="DELETE FROM [KhachHang] WHERE [MaKH] = @MaKH" InsertCommand="INSERT INTO [KhachHang] ([Ho], [Ten], [Email], [DiaChi], [DienThoai], [CongTy], [GioiTinh]) VALUES (@Ho, @Ten, @Email, @DiaChi, @DienThoai, @CongTy, @GioiTinh)" SelectCommand="SELECT * FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [Ho] = @Ho, [Ten] = @Ten, [Email] = @Email, [DiaChi] = @DiaChi, [DienThoai] = @DienThoai, [CongTy] = @CongTy, [GioiTinh] = @GioiTinh WHERE [MaKH] = @MaKH">
            <DeleteParameters>
                <asp:Parameter Name="MaKH" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ho" Type="String" />
                <asp:Parameter Name="Ten" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="DienThoai" Type="Int32" />
                <asp:Parameter Name="CongTy" Type="String" />
                <asp:Parameter Name="GioiTinh" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ho" Type="String" />
                <asp:Parameter Name="Ten" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="DienThoai" Type="Int32" />
                <asp:Parameter Name="CongTy" Type="String" />
                <asp:Parameter Name="GioiTinh" Type="String" />
                <asp:Parameter Name="MaKH" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
