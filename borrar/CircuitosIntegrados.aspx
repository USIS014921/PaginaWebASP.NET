<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CircuitosIntegrados.aspx.cs" Inherits="borrar.CircuitosIntegrados" %>

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
        <div class="auto-style1">
            Circuitos En Venta<br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Idcircuitos" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="Idcircuitos" HeaderText="Idcircuitos" ReadOnly="True" SortExpression="Idcircuitos" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                    <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
            Ingresar Circuitos <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Idcircuitos" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="191px">
                <Fields>
                    <asp:BoundField DataField="Idcircuitos" HeaderText="Idcircuitos" ReadOnly="True" SortExpression="Idcircuitos" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                    <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Circuitosintegrados] WHERE [Idcircuitos] = @original_Idcircuitos AND [Nombre] = @original_Nombre AND [Precio] = @original_Precio AND [Categoria] = @original_Categoria" InsertCommand="INSERT INTO [Circuitosintegrados] ([Idcircuitos], [Nombre], [Precio], [Categoria]) VALUES (@Idcircuitos, @Nombre, @Precio, @Categoria)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Circuitosintegrados]" UpdateCommand="UPDATE [Circuitosintegrados] SET [Nombre] = @Nombre, [Precio] = @Precio, [Categoria] = @Categoria WHERE [Idcircuitos] = @original_Idcircuitos AND [Nombre] = @original_Nombre AND [Precio] = @original_Precio AND [Categoria] = @original_Categoria">
                <DeleteParameters>
                    <asp:Parameter Name="original_Idcircuitos" Type="Int32" />
                    <asp:Parameter Name="original_Nombre" Type="String" />
                    <asp:Parameter Name="original_Precio" Type="String" />
                    <asp:Parameter Name="original_Categoria" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Idcircuitos" Type="Int32" />
                    <asp:Parameter Name="Nombre" Type="String" />
                    <asp:Parameter Name="Precio" Type="String" />
                    <asp:Parameter Name="Categoria" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Nombre" Type="String" />
                    <asp:Parameter Name="Precio" Type="String" />
                    <asp:Parameter Name="Categoria" Type="String" />
                    <asp:Parameter Name="original_Idcircuitos" Type="Int32" />
                    <asp:Parameter Name="original_Nombre" Type="String" />
                    <asp:Parameter Name="original_Precio" Type="String" />
                    <asp:Parameter Name="original_Categoria" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
