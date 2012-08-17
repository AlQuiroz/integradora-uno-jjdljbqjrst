<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion/MasterPage.master" AutoEventWireup="true" CodeFile="FrmEliminarGradoEstudio.aspx.cs" Inherits="FrmEliminarGradoEstudio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<fieldset id="Formulario" style="border-style:none">
<center>
<table style="border-style:none">
<tr>
<td>Id grado</td>
<td>
    <asp:Label ID="lblIdGrado" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lblIdInstructor" runat="server" Visible="False"></asp:Label>
    </td>
</tr>
<tr>
<td>Grado de estudios</td>
<td>
    <asp:TextBox ID="txtGradoEstudios" runat="server" ReadOnly="True"></asp:TextBox></td>
</tr>

<tr>
<td>Número de cédula</td>
<td>
    <asp:TextBox ID="txtNumCedula" runat="server" ReadOnly="True"></asp:TextBox></td>
</tr>

<tr>
<td>Fecha terminación</td>
<td>
    <asp:TextBox ID="txtFechaTerminación" runat="server" ReadOnly="True"></asp:TextBox></td>
</tr>

<tr>
<td colspan="2">
<asp:Button ID="btnEliminar" runat="server" Text="Eliminar" 
        onclick="btnEliminar_Click"  />

    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" 
        onclick="btnCancelar_Click" />
</td>
    
</tr>

</table>
</center>
</fieldset>
</asp:Content>