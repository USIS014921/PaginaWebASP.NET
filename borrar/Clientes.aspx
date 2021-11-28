<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="borrar.Clientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p class="auto-style1">
            Registro de Clientes</p>
        <p class="auto-style1">
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Idcliente" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="355px">
                <Fields>
                    <asp:BoundField DataField="Idcliente" HeaderText="Idcliente" ReadOnly="True" SortExpression="Idcliente" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                    <asp:BoundField DataField="Clave" HeaderText="Clave" SortExpression="Clave" />
                    <asp:BoundField DataField="Fecha de Nacimiento" HeaderText="Fecha de Nacimiento" SortExpression="Fecha de Nacimiento" />
                    <asp:BoundField DataField="Sexo" HeaderText="Sexo" SortExpression="Sexo" />
                    <asp:BoundField DataField="Telefono " HeaderText="Telefono " SortExpression="Telefono " />
                    <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Clientes] WHERE [Idcliente] = @original_Idcliente AND [Nombre] = @original_Nombre AND [Apellido] = @original_Apellido AND [Clave] = @original_Clave AND [Fecha de Nacimiento] = @original_Fecha_de_Nacimiento AND [Sexo] = @original_Sexo AND [Telefono ] = @original_Telefono_ AND [Correo] = @original_Correo" InsertCommand="INSERT INTO [Clientes] ([Idcliente], [Nombre], [Apellido], [Clave], [Fecha de Nacimiento], [Sexo], [Telefono ], [Correo]) VALUES (@Idcliente, @Nombre, @Apellido, @Clave, @Fecha_de_Nacimiento, @Sexo, @Telefono_, @Correo)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Clientes]" UpdateCommand="UPDATE [Clientes] SET [Nombre] = @Nombre, [Apellido] = @Apellido, [Clave] = @Clave, [Fecha de Nacimiento] = @Fecha_de_Nacimiento, [Sexo] = @Sexo, [Telefono ] = @Telefono_, [Correo] = @Correo WHERE [Idcliente] = @original_Idcliente AND [Nombre] = @original_Nombre AND [Apellido] = @original_Apellido AND [Clave] = @original_Clave AND [Fecha de Nacimiento] = @original_Fecha_de_Nacimiento AND [Sexo] = @original_Sexo AND [Telefono ] = @original_Telefono_ AND [Correo] = @original_Correo">
                <DeleteParameters>
                    <asp:Parameter Name="original_Idcliente" Type="Int32" />
                    <asp:Parameter Name="original_Nombre" Type="String" />
                    <asp:Parameter Name="original_Apellido" Type="String" />
                    <asp:Parameter Name="original_Clave" Type="String" />
                    <asp:Parameter Name="original_Fecha_de_Nacimiento" Type="String" />
                    <asp:Parameter Name="original_Sexo" Type="String" />
                    <asp:Parameter Name="original_Telefono_" Type="String" />
                    <asp:Parameter Name="original_Correo" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Idcliente" Type="Int32" />
                    <asp:Parameter Name="Nombre" Type="String" />
                    <asp:Parameter Name="Apellido" Type="String" />
                    <asp:Parameter Name="Clave" Type="String" />
                    <asp:Parameter Name="Fecha_de_Nacimiento" Type="String" />
                    <asp:Parameter Name="Sexo" Type="String" />
                    <asp:Parameter Name="Telefono_" Type="String" />
                    <asp:Parameter Name="Correo" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Nombre" Type="String" />
                    <asp:Parameter Name="Apellido" Type="String" />
                    <asp:Parameter Name="Clave" Type="String" />
                    <asp:Parameter Name="Fecha_de_Nacimiento" Type="String" />
                    <asp:Parameter Name="Sexo" Type="String" />
                    <asp:Parameter Name="Telefono_" Type="String" />
                    <asp:Parameter Name="Correo" Type="String" />
                    <asp:Parameter Name="original_Idcliente" Type="Int32" />
                    <asp:Parameter Name="original_Nombre" Type="String" />
                    <asp:Parameter Name="original_Apellido" Type="String" />
                    <asp:Parameter Name="original_Clave" Type="String" />
                    <asp:Parameter Name="original_Fecha_de_Nacimiento" Type="String" />
                    <asp:Parameter Name="original_Sexo" Type="String" />
                    <asp:Parameter Name="original_Telefono_" Type="String" />
                    <asp:Parameter Name="original_Correo" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p class="auto-style1">
            Clientes Registrados</p>
        <p class="auto-style1">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Idcliente" DataSourceID="SqlDataSource1" Width="934px">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Idcliente" HeaderText="Idcliente" ReadOnly="True" SortExpression="Idcliente" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                    <asp:BoundField DataField="Clave" HeaderText="Clave" SortExpression="Clave" />
                    <asp:BoundField DataField="Fecha de Nacimiento" HeaderText="Fecha de Nacimiento" SortExpression="Fecha de Nacimiento" />
                    <asp:BoundField DataField="Sexo" HeaderText="Sexo" SortExpression="Sexo" />
                    <asp:BoundField DataField="Telefono " HeaderText="Telefono " SortExpression="Telefono " />
                    <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                </Columns>
            </asp:GridView>
        </p>
    </form>
</body>
</html>
