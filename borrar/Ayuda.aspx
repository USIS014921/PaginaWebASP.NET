<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ayuda.aspx.cs" Inherits="borrar.Ayuda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    <br />
</p>
<p style="font-size: xx-large">
    <strong>Ayuda.</strong></p>
<p style="font-size: large">
    En este apartado se le brindara apoyo en caso de que lo necesite, si tiene algun problema con alguno de los componentes puede comunicarse con nosotros en el apartado de contactos donde lo estaremos atendiendo a cualquier hora ya se por telefono o por correo electronico.</p>
    <p style="font-size: large">
        &nbsp;</p>
    <p style="font-size: large">
        Si prefiere dejenos su inconveniente o duda en el siguiente apartado:</p>
    <p style="font-size: large">
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" ClientIDMode="AutoID" DataKeyNames="Tema" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="117px" Width="264px">
            <Fields>
                <asp:BoundField DataField="Tema" HeaderText="Tema" ReadOnly="True" SortExpression="Tema" />
                <asp:BoundField DataField="Preguntas" HeaderText="Preguntas" SortExpression="Preguntas" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Preguntas] WHERE [Tema] = @original_Tema AND [Preguntas] = @original_Preguntas" InsertCommand="INSERT INTO [Preguntas] ([Tema], [Preguntas]) VALUES (@Tema, @Preguntas)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Tema], [Preguntas] FROM [Preguntas]" UpdateCommand="UPDATE [Preguntas] SET [Preguntas] = @Preguntas WHERE [Tema] = @original_Tema AND [Preguntas] = @original_Preguntas">
            <DeleteParameters>
                <asp:Parameter Name="original_Tema" Type="String" />
                <asp:Parameter Name="original_Preguntas" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Tema" Type="String" />
                <asp:Parameter Name="Preguntas" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Preguntas" Type="String" />
                <asp:Parameter Name="original_Tema" Type="String" />
                <asp:Parameter Name="original_Preguntas" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p style="font-size: large">
        &nbsp;</p>
    <p style="font-size: large">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Tema" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="726px">
            <Columns>
                <asp:BoundField DataField="Tema" HeaderText="Tema" ReadOnly="True" SortExpression="Tema" />
                <asp:BoundField DataField="Preguntas" HeaderText="Preguntas" SortExpression="Preguntas" />
            </Columns>
        </asp:GridView>
    </p>
    <p style="font-size: large">
        &nbsp;</p>
</asp:Content>
