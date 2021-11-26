<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="borrar._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>
            &nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img alt="" src="fonts/Imagen/download.png" style="width: 325px; height: 225px" /></h1>
        <h1>&nbsp;<span>Electronic Components.</span></h1>
        <p class="lead">La mejor distribuidora de componentes electronicos de la mejor calidad y al mejor precio, calidad garantizada por los especialistas.</p>
        <p><a class="btn btn-primary btn-lg" href="http://www.asp.net">Leer mas »</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>&nbsp;</h2>
            <h2>Componentes</h2>
            <p>
                Le mostramos los componentes mas buscados y los mas comprados en este apartado.</p>
            <p>
                &nbsp;<asp:Button ID="Button1" runat="server" Height="28px" OnClick="Button1_Click" Text="Leer mas »" Width="91px" />
            </p>
        </div>
        <div class="col-md-4">
            <h2>Distribucion</h2>
            <p>
                Te mostramos en que parte podemos entregas los diferentes componentes que nos pidan.</p>
            <p>
                <asp:Button ID="Button2" runat="server" Height="28px" OnClick="Button1_Click" Text="Leer mas »" Width="91px" />
&nbsp;</p>
        </div>
        <div class="col-md-4">
            <h2>Problemas</h2>
            <p>
                En este apartado puede encontrar ayuda con algun problema que tenga ya sea con la pagina o con los componentes.</p>
            <p>
                <asp:Button ID="Button3" runat="server" Height="28px" OnClick="Button1_Click" Text="Leer mas »" Width="91px" />
&nbsp;</p>
        </div>
    </div>

</asp:Content>
