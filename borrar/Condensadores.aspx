<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Condensadores.aspx.cs" Inherits="borrar.Condensadores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <span style="font-size: x-large">Condensadores En Venta</span></p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Idcondensadores" DataSourceID="SqlDataSource1" Height="166px" Width="335px">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="Idcondensadores" HeaderText="Idcondensadores" ReadOnly="True" SortExpression="Idcondensadores" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <span style="font-size: x-large">Ingresar Condensadores</span></p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Idcondensadores" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="86px" Width="183px">
            <Fields>
                <asp:BoundField DataField="Idcondensadores" HeaderText="Idcondensadores" ReadOnly="True" SortExpression="Idcondensadores" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Condensadores] WHERE [Idcondensadores] = @original_Idcondensadores AND [Nombre] = @original_Nombre AND [Precio] = @original_Precio AND [Categoria] = @original_Categoria" InsertCommand="INSERT INTO [Condensadores] ([Idcondensadores], [Nombre], [Precio], [Categoria]) VALUES (@Idcondensadores, @Nombre, @Precio, @Categoria)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Condensadores]" UpdateCommand="UPDATE [Condensadores] SET [Nombre] = @Nombre, [Precio] = @Precio, [Categoria] = @Categoria WHERE [Idcondensadores] = @original_Idcondensadores AND [Nombre] = @original_Nombre AND [Precio] = @original_Precio AND [Categoria] = @original_Categoria">
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
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
