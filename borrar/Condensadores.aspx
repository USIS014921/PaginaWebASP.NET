<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Condensadores.aspx.cs" Inherits="borrar.Condensadores" %>

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
            Condensadores En Venta<br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Idcondensadores" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="Idcondensadores" HeaderText="Idcondensadores" ReadOnly="True" SortExpression="Idcondensadores" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                    <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            <br />
            Ingresar Condensadores<br />
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Idcondensadores" DataSourceID="SqlDataSource2" DefaultMode="Insert" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="Idcondensadores" HeaderText="Idcondensadores" ReadOnly="True" SortExpression="Idcondensadores" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                    <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Condensadores] WHERE [Idcondensadores] = @original_Idcondensadores AND [Nombre] = @original_Nombre AND [Precio] = @original_Precio AND [Categoria] = @original_Categoria" InsertCommand="INSERT INTO [Condensadores] ([Idcondensadores], [Nombre], [Precio], [Categoria]) VALUES (@Idcondensadores, @Nombre, @Precio, @Categoria)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Condensadores]" UpdateCommand="UPDATE [Condensadores] SET [Nombre] = @Nombre, [Precio] = @Precio, [Categoria] = @Categoria WHERE [Idcondensadores] = @original_Idcondensadores AND [Nombre] = @original_Nombre AND [Precio] = @original_Precio AND [Categoria] = @original_Categoria">
                <DeleteParameters>
                    <asp:Parameter Name="original_Idcondensadores" Type="Int32" />
                    <asp:Parameter Name="original_Nombre" Type="String" />
                    <asp:Parameter Name="original_Precio" Type="String" />
                    <asp:Parameter Name="original_Categoria" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Idcondensadores" Type="Int32" />
                    <asp:Parameter Name="Nombre" Type="String" />
                    <asp:Parameter Name="Precio" Type="String" />
                    <asp:Parameter Name="Categoria" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Nombre" Type="String" />
                    <asp:Parameter Name="Precio" Type="String" />
                    <asp:Parameter Name="Categoria" Type="String" />
                    <asp:Parameter Name="original_Idcondensadores" Type="Int32" />
                    <asp:Parameter Name="original_Nombre" Type="String" />
                    <asp:Parameter Name="original_Precio" Type="String" />
                    <asp:Parameter Name="original_Categoria" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
