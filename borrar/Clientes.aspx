<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="borrar.Clientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
    </p>
    <p>
        &nbsp;</p>
    <p style="font-size: x-large">
        Clientes Ingresados</p>
    <p style="font-size: x-large">
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Idcliente" DataSourceID="SqlDataSource1" style="font-size: medium" Width="763px">
            <Columns>
                <asp:BoundField DataField="Idcliente" HeaderText="Idcliente" ReadOnly="True" SortExpression="Idcliente" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                <asp:BoundField DataField="Clave" HeaderText="Clave" SortExpression="Clave" />
                <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                <asp:BoundField DataField="Sexo" HeaderText="Sexo" SortExpression="Sexo" />
                <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
            </Columns>
        </asp:GridView>
    </p>
    <p style="font-size: x-large">
        Ingresar Clientes</p>
    <p>
        <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="Idcliente" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="114px" Width="278px">
            <Fields>
                <asp:BoundField DataField="Idcliente" HeaderText="Idcliente" ReadOnly="True" SortExpression="Idcliente" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                <asp:BoundField DataField="Clave" HeaderText="Clave" SortExpression="Clave" />
                <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                <asp:BoundField DataField="Sexo" HeaderText="Sexo" SortExpression="Sexo" />
                <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Clientes] WHERE [Idcliente] = @original_Idcliente AND [Nombre] = @original_Nombre AND [Apellido] = @original_Apellido AND [Clave] = @original_Clave AND [Fecha] = @original_Fecha AND [Sexo] = @original_Sexo AND [Telefono] = @original_Telefono AND [Correo] = @original_Correo" InsertCommand="INSERT INTO [Clientes] ([Idcliente], [Nombre], [Apellido], [Clave], [Fecha], [Sexo], [Telefono], [Correo]) VALUES (@Idcliente, @Nombre, @Apellido, @Clave, @Fecha, @Sexo, @Telefono, @Correo)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Clientes]" UpdateCommand="UPDATE [Clientes] SET [Nombre] = @Nombre, [Apellido] = @Apellido, [Clave] = @Clave, [Fecha] = @Fecha, [Sexo] = @Sexo, [Telefono] = @Telefono, [Correo] = @Correo WHERE [Idcliente] = @original_Idcliente AND [Nombre] = @original_Nombre AND [Apellido] = @original_Apellido AND [Clave] = @original_Clave AND [Fecha] = @original_Fecha AND [Sexo] = @original_Sexo AND [Telefono] = @original_Telefono AND [Correo] = @original_Correo">
            <DeleteParameters>
                <asp:Parameter Name="original_Idcliente" Type="Int32" />
                <asp:Parameter Name="original_Nombre" Type="String" />
                <asp:Parameter Name="original_Apellido" Type="String" />
                <asp:Parameter Name="original_Clave" Type="String" />
                <asp:Parameter Name="original_Fecha" Type="String" />
                <asp:Parameter Name="original_Sexo" Type="String" />
                <asp:Parameter Name="original_Telefono" Type="Decimal" />
                <asp:Parameter Name="original_Correo" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Idcliente" Type="Int32" />
                <asp:Parameter Name="Nombre" Type="String" />
                <asp:Parameter Name="Apellido" Type="String" />
                <asp:Parameter Name="Clave" Type="String" />
                <asp:Parameter Name="Fecha" Type="String" />
                <asp:Parameter Name="Sexo" Type="String" />
                <asp:Parameter Name="Telefono" Type="Decimal" />
                <asp:Parameter Name="Correo" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Nombre" Type="String" />
                <asp:Parameter Name="Apellido" Type="String" />
                <asp:Parameter Name="Clave" Type="String" />
                <asp:Parameter Name="Fecha" Type="String" />
                <asp:Parameter Name="Sexo" Type="String" />
                <asp:Parameter Name="Telefono" Type="Decimal" />
                <asp:Parameter Name="Correo" Type="String" />
                <asp:Parameter Name="original_Idcliente" Type="Int32" />
                <asp:Parameter Name="original_Nombre" Type="String" />
                <asp:Parameter Name="original_Apellido" Type="String" />
                <asp:Parameter Name="original_Clave" Type="String" />
                <asp:Parameter Name="original_Fecha" Type="String" />
                <asp:Parameter Name="original_Sexo" Type="String" />
                <asp:Parameter Name="original_Telefono" Type="Decimal" />
                <asp:Parameter Name="original_Correo" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
