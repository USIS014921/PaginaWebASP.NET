<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="borrar.WebForm1" %>

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
        <div>
            <span class="auto-style1">Componentes Expuestos</span><br class="auto-style1" />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="IdComponentes" DataSourceID="SqlDataSource1" Width="411px">
                <Columns>
                    <asp:BoundField DataField="IdComponentes" HeaderText="IdComponentes" ReadOnly="True" SortExpression="IdComponentes" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                    <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
                </Columns>
            </asp:GridView>
            <br class="auto-style1" />
            <br class="auto-style1" />
            <span class="auto-style1">Ingresar</span> <span class="auto-style1">Componentes</span></div>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="IdComponentes" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="124px" Width="273px">
            <Fields>
                <asp:BoundField DataField="IdComponentes" HeaderText="IdComponentes" ReadOnly="True" SortExpression="IdComponentes" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
                <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Componentes] WHERE [IdComponentes] = @original_IdComponentes AND [Nombre] = @original_Nombre AND [Precio] = @original_Precio AND [Categoria] = @original_Categoria" InsertCommand="INSERT INTO [Componentes] ([IdComponentes], [Nombre], [Precio], [Categoria]) VALUES (@IdComponentes, @Nombre, @Precio, @Categoria)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Componentes]" UpdateCommand="UPDATE [Componentes] SET [Nombre] = @Nombre, [Precio] = @Precio, [Categoria] = @Categoria WHERE [IdComponentes] = @original_IdComponentes AND [Nombre] = @original_Nombre AND [Precio] = @original_Precio AND [Categoria] = @original_Categoria">
            <DeleteParameters>
                <asp:Parameter Name="original_IdComponentes" Type="Int32" />
                <asp:Parameter Name="original_Nombre" Type="String" />
                <asp:Parameter Name="original_Precio" Type="String" />
                <asp:Parameter Name="original_Categoria" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="IdComponentes" Type="Int32" />
                <asp:Parameter Name="Nombre" Type="String" />
                <asp:Parameter Name="Precio" Type="String" />
                <asp:Parameter Name="Categoria" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Nombre" Type="String" />
                <asp:Parameter Name="Precio" Type="String" />
                <asp:Parameter Name="Categoria" Type="String" />
                <asp:Parameter Name="original_IdComponentes" Type="Int32" />
                <asp:Parameter Name="original_Nombre" Type="String" />
                <asp:Parameter Name="original_Precio" Type="String" />
                <asp:Parameter Name="original_Categoria" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
