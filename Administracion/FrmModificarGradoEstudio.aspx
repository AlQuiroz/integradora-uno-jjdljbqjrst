<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion/MasterPage.master" AutoEventWireup="true" CodeFile="FrmModificarGradoEstudio.aspx.cs" Inherits="FrmModificarGradoEstudio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<fieldset id="Formulario" style="border-style:none">
<center>
<table style="border-style:none">
<tr>
<td>Id grado</td>
<td>
    <asp:Label ID="lblIdGrado" runat="server" Text=""></asp:Label>
    <asp:Label ID="lblIdInstructor" runat="server"></asp:Label>
    </td>
</tr>
<tr>
<td>Grado de estudios</td>
<td>
    <asp:TextBox ID="txtGradoEstudios" runat="server"></asp:TextBox></td>
</tr>

<tr>
<td>Número de cédula</td>
<td>
    <asp:TextBox ID="txtNumCedula" runat="server"></asp:TextBox></td>
</tr>

<tr>
<td>Fecha terminación</td>
<td>
    <asp:TextBox ID="txtFechaTerminación" runat="server"></asp:TextBox></td>
</tr>

<tr>
<td colspan="2">
<asp:Button ID="btnModificar" runat="server" Text="Modificar" 
        onclick="btnModificar_Click"  />
<asp:Button ID="btnCancelar" runat="server" Text="Cancelar" 
        onclick="btnCancelar_Click"  />
</td>
    
</tr>

</table>
</center>
</fieldset>
</asp:Content>