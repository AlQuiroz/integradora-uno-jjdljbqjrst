<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="inicio.aspx.cs" Inherits="inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<h2>
        Iniciar sesión
    </h2>
    <p>
        Especifique su nombre de usuario y contraseña.<br />
        Nombre de usuario: 
        <asp:TextBox ID="TxtUsuario" runat="server" Width="153px"></asp:TextBox><br />
        Contraseña:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="TxtContraseña" runat="server" TextMode="Password" 
            Width="154px"></asp:TextBox><br />
        <asp:Button ID="btnentrar" runat="server" Text="Entrar" />
        
    </p>
</center>
</asp:Content>

