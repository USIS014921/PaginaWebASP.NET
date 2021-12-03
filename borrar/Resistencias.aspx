<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Resistencias.aspx.cs" Inherits="borrar.Resistencias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    <br />
</p>
<p>
    &nbsp;</p>
<p>
    <span style="font-size: x-large">Resistencias En Venta</span></p>
<p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Idresistencias" DataSourceID="SqlDataSource1" Height="171px" Width="341px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Idresistencias" HeaderText="Idresistencias" ReadOnly="True" SortExpression="Idresistencias" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
            <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
        </Columns>
    </asp:GridView>
    <img src="fonts/Imagen/r2.jpg" style="width: 225px; height: 225px" />
    <img src="fonts/Imagen/r1.jpg" style="width: 225px; height: 225px" /></p>
    <p>
        &nbsp;</p>
<span style="font-size: x-large">Ingresar Resistencias<br />
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Idresistencias" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" style="font-size: medium" Width="255px">
    <Fields>
        <asp:BoundField DataField="Idresistencias" HeaderText="Idresistencias" ReadOnly="True" SortExpression="Idresistencias" />
        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
        <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
        <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
        <asp:CommandField ShowInsertButton="True" />
    </Fields>
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Resistencias] WHERE [Idresistencias] = @original_Idresistencias AND [Nombre] = @original_Nombre AND [Precio] = @original_Precio AND [Categoria] = @original_Categoria" InsertCommand="INSERT INTO [Resistencias] ([Idresistencias], [Nombre], [Precio], [Categoria]) VALUES (@Idresistencias, @Nombre, @Precio, @Categoria)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Resistencias]" UpdateCommand="UPDATE [Resistencias] SET [Nombre] = @Nombre, [Precio] = @Precio, [Categoria] = @Categoria WHERE [Idresistencias] = @original_Idresistencias AND [Nombre] = @original_Nombre AND [Precio] = @original_Precio AND [Categoria] = @original_Categoria">
    <DeleteParameters>
        <asp:Parameter Name="original_Idresistencias" Type="Int32" />
        <asp:Parameter Name="original_Nombre" Type="String" />
        <asp:Parameter Name="original_Precio" Type="String" />
        <asp:Parameter Name="original_Categoria" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Idresistencias" Type="Int32" />
        <asp:Parameter Name="Nombre" Type="String" />
        <asp:Parameter Name="Precio" Type="String" />
        <asp:Parameter Name="Categoria" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Nombre" Type="String" />
        <asp:Parameter Name="Precio" Type="String" />
        <asp:Parameter Name="Categoria" Type="String" />
        <asp:Parameter Name="original_Idresistencias" Type="Int32" />
        <asp:Parameter Name="original_Nombre" Type="String" />
        <asp:Parameter Name="original_Precio" Type="String" />
        <asp:Parameter Name="original_Categoria" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</span>
</asp:Content>
