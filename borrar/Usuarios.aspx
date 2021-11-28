<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="borrar.Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    <br />
    <strong><span style="font-size: x-large">Ingresar Empleados</span></strong></p>
<p>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Idusuario" DataSourceID="SqlDataSource1" Height="50px" Width="125px" DefaultMode="Insert" OnPageIndexChanging="DetailsView1_PageIndexChanging">
        <Fields>
            <asp:BoundField DataField="Idusuario" HeaderText="Idusuario" ReadOnly="True" SortExpression="Idusuario" />
            <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
            <asp:BoundField DataField="Clave" HeaderText="Clave" SortExpression="Clave" />
            <asp:BoundField DataField="NIvel" HeaderText="NIvel" SortExpression="NIvel" />
            <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
            <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
            <asp:BoundField DataField="Sexo" HeaderText="Sexo" SortExpression="Sexo" />
            <asp:BoundField DataField="DUI" HeaderText="DUI" SortExpression="DUI" />
            <asp:BoundField DataField="NIT" HeaderText="NIT" SortExpression="NIT" />
            <asp:BoundField DataField="AFP" HeaderText="AFP" SortExpression="AFP" />
            <asp:BoundField DataField="ISSS" HeaderText="ISSS" SortExpression="ISSS" />
            <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
            <asp:BoundField DataField="Puesto" HeaderText="Puesto" SortExpression="Puesto" />
            <asp:BoundField DataField="Sueldo" HeaderText="Sueldo" SortExpression="Sueldo" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Usuarios] WHERE [Idusuario] = @original_Idusuario AND (([Usuario] = @original_Usuario) OR ([Usuario] IS NULL AND @original_Usuario IS NULL)) AND (([Clave] = @original_Clave) OR ([Clave] IS NULL AND @original_Clave IS NULL)) AND (([NIvel] = @original_NIvel) OR ([NIvel] IS NULL AND @original_NIvel IS NULL)) AND (([Correo] = @original_Correo) OR ([Correo] IS NULL AND @original_Correo IS NULL)) AND (([telefono] = @original_telefono) OR ([telefono] IS NULL AND @original_telefono IS NULL)) AND (([Sexo] = @original_Sexo) OR ([Sexo] IS NULL AND @original_Sexo IS NULL)) AND (([DUI] = @original_DUI) OR ([DUI] IS NULL AND @original_DUI IS NULL)) AND (([NIT] = @original_NIT) OR ([NIT] IS NULL AND @original_NIT IS NULL)) AND (([AFP] = @original_AFP) OR ([AFP] IS NULL AND @original_AFP IS NULL)) AND (([ISSS] = @original_ISSS) OR ([ISSS] IS NULL AND @original_ISSS IS NULL)) AND (([Fecha] = @original_Fecha) OR ([Fecha] IS NULL AND @original_Fecha IS NULL)) AND (([Puesto] = @original_Puesto) OR ([Puesto] IS NULL AND @original_Puesto IS NULL)) AND (([Sueldo] = @original_Sueldo) OR ([Sueldo] IS NULL AND @original_Sueldo IS NULL))" InsertCommand="INSERT INTO [Usuarios] ([Idusuario], [Usuario], [Clave], [NIvel], [Correo], [telefono], [Sexo], [DUI], [NIT], [AFP], [ISSS], [Fecha], [Puesto], [Sueldo]) VALUES (@Idusuario, @Usuario, @Clave, @NIvel, @Correo, @telefono, @Sexo, @DUI, @NIT, @AFP, @ISSS, @Fecha, @Puesto, @Sueldo)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Usuarios]" UpdateCommand="UPDATE [Usuarios] SET [Usuario] = @Usuario, [Clave] = @Clave, [NIvel] = @NIvel, [Correo] = @Correo, [telefono] = @telefono, [Sexo] = @Sexo, [DUI] = @DUI, [NIT] = @NIT, [AFP] = @AFP, [ISSS] = @ISSS, [Fecha] = @Fecha, [Puesto] = @Puesto, [Sueldo] = @Sueldo WHERE [Idusuario] = @original_Idusuario AND (([Usuario] = @original_Usuario) OR ([Usuario] IS NULL AND @original_Usuario IS NULL)) AND (([Clave] = @original_Clave) OR ([Clave] IS NULL AND @original_Clave IS NULL)) AND (([NIvel] = @original_NIvel) OR ([NIvel] IS NULL AND @original_NIvel IS NULL)) AND (([Correo] = @original_Correo) OR ([Correo] IS NULL AND @original_Correo IS NULL)) AND (([telefono] = @original_telefono) OR ([telefono] IS NULL AND @original_telefono IS NULL)) AND (([Sexo] = @original_Sexo) OR ([Sexo] IS NULL AND @original_Sexo IS NULL)) AND (([DUI] = @original_DUI) OR ([DUI] IS NULL AND @original_DUI IS NULL)) AND (([NIT] = @original_NIT) OR ([NIT] IS NULL AND @original_NIT IS NULL)) AND (([AFP] = @original_AFP) OR ([AFP] IS NULL AND @original_AFP IS NULL)) AND (([ISSS] = @original_ISSS) OR ([ISSS] IS NULL AND @original_ISSS IS NULL)) AND (([Fecha] = @original_Fecha) OR ([Fecha] IS NULL AND @original_Fecha IS NULL)) AND (([Puesto] = @original_Puesto) OR ([Puesto] IS NULL AND @original_Puesto IS NULL)) AND (([Sueldo] = @original_Sueldo) OR ([Sueldo] IS NULL AND @original_Sueldo IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Idusuario" Type="Int32" />
            <asp:Parameter Name="original_Usuario" Type="String" />
            <asp:Parameter Name="original_Clave" Type="String" />
            <asp:Parameter Name="original_NIvel" Type="String" />
            <asp:Parameter Name="original_Correo" Type="String" />
            <asp:Parameter Name="original_telefono" Type="String" />
            <asp:Parameter Name="original_Sexo" Type="String" />
            <asp:Parameter Name="original_DUI" Type="String" />
            <asp:Parameter Name="original_NIT" Type="String" />
            <asp:Parameter Name="original_AFP" Type="String" />
            <asp:Parameter Name="original_ISSS" Type="String" />
            <asp:Parameter Name="original_Fecha" Type="String" />
            <asp:Parameter Name="original_Puesto" Type="String" />
            <asp:Parameter Name="original_Sueldo" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Idusuario" Type="Int32" />
            <asp:Parameter Name="Usuario" Type="String" />
            <asp:Parameter Name="Clave" Type="String" />
            <asp:Parameter Name="NIvel" Type="String" />
            <asp:Parameter Name="Correo" Type="String" />
            <asp:Parameter Name="telefono" Type="String" />
            <asp:Parameter Name="Sexo" Type="String" />
            <asp:Parameter Name="DUI" Type="String" />
            <asp:Parameter Name="NIT" Type="String" />
            <asp:Parameter Name="AFP" Type="String" />
            <asp:Parameter Name="ISSS" Type="String" />
            <asp:Parameter Name="Fecha" Type="String" />
            <asp:Parameter Name="Puesto" Type="String" />
            <asp:Parameter Name="Sueldo" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Usuario" Type="String" />
            <asp:Parameter Name="Clave" Type="String" />
            <asp:Parameter Name="NIvel" Type="String" />
            <asp:Parameter Name="Correo" Type="String" />
            <asp:Parameter Name="telefono" Type="String" />
            <asp:Parameter Name="Sexo" Type="String" />
            <asp:Parameter Name="DUI" Type="String" />
            <asp:Parameter Name="NIT" Type="String" />
            <asp:Parameter Name="AFP" Type="String" />
            <asp:Parameter Name="ISSS" Type="String" />
            <asp:Parameter Name="Fecha" Type="String" />
            <asp:Parameter Name="Puesto" Type="String" />
            <asp:Parameter Name="Sueldo" Type="String" />
            <asp:Parameter Name="original_Idusuario" Type="Int32" />
            <asp:Parameter Name="original_Usuario" Type="String" />
            <asp:Parameter Name="original_Clave" Type="String" />
            <asp:Parameter Name="original_NIvel" Type="String" />
            <asp:Parameter Name="original_Correo" Type="String" />
            <asp:Parameter Name="original_telefono" Type="String" />
            <asp:Parameter Name="original_Sexo" Type="String" />
            <asp:Parameter Name="original_DUI" Type="String" />
            <asp:Parameter Name="original_NIT" Type="String" />
            <asp:Parameter Name="original_AFP" Type="String" />
            <asp:Parameter Name="original_ISSS" Type="String" />
            <asp:Parameter Name="original_Fecha" Type="String" />
            <asp:Parameter Name="original_Puesto" Type="String" />
            <asp:Parameter Name="original_Sueldo" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
<p>
    &nbsp;</p>
<p style="font-size: x-large">
    E<strong>mpleados Ingresados</strong></p>
<p style="font-size: x-large">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Idusuario" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1263px" style="font-size: medium">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Idusuario" HeaderText="Idusuario" ReadOnly="True" SortExpression="Idusuario" />
            <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
            <asp:BoundField DataField="Clave" HeaderText="Clave" SortExpression="Clave" />
            <asp:BoundField DataField="NIvel" HeaderText="NIvel" SortExpression="NIvel" />
            <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
            <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
            <asp:BoundField DataField="Sexo" HeaderText="Sexo" SortExpression="Sexo" />
            <asp:BoundField DataField="DUI" HeaderText="DUI" SortExpression="DUI" />
            <asp:BoundField DataField="NIT" HeaderText="NIT" SortExpression="NIT" />
            <asp:BoundField DataField="AFP" HeaderText="AFP" SortExpression="AFP" />
            <asp:BoundField DataField="ISSS" HeaderText="ISSS" SortExpression="ISSS" />
            <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
            <asp:BoundField DataField="Puesto" HeaderText="Puesto" SortExpression="Puesto" />
            <asp:BoundField DataField="Sueldo" HeaderText="Sueldo" SortExpression="Sueldo" />
        </Columns>
    </asp:GridView>
</p>
</asp:Content>
