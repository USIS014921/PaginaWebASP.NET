<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CircuitosIntegrados.aspx.cs" Inherits="borrar.CircuitosIntegrados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <span style="font-size: x-large">
    <br />
    <br />
            Circuitos En Venta</span><br />
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Idcircuitos" DataSourceID="SqlDataSource1" Height="172px" Width="489px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Idcircuitos" HeaderText="Idcircuitos" ReadOnly="True" SortExpression="Idcircuitos" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
            <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
        </Columns>
    </asp:GridView>
    <img alt="" src="fonts/Imagen/cir1.jpg" style="width: 323px; height: 156px" /><img alt="" src="fonts/Imagen/cir2.jpg" style="width: 311px; height: 162px" /><br />
    <br /><span style="font-size: x-large">Ingresar Circuitos</span>
    <br />
    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="Idcircuitos" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="109px" Width="208px">
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
</asp:Content>
