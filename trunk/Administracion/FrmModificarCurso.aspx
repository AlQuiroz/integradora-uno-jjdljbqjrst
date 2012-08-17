<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion/MasterPage.master" AutoEventWireup="true" CodeFile="FrmModificarCurso.aspx.cs" Inherits="FrmModificarCurso" MaintainScrollPositionOnPostback="true"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<fieldset id="Formulario" style="border-style:none">
<center>
<table>
<tr> 
<td>Clave del servicio</td>
<td>
    <asp:TextBox ID="txtClave" runat="server" ReadOnly="True"></asp:TextBox></td>
</tr>

<tr> 
<td>Tipo de servicio</td>
<td>
    <asp:TextBox ID="txtTipo" runat="server"></asp:TextBox></td>
</tr>

<tr> 
<td>Nombre del servicio</td>
<td>
    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox></td>
</tr>

<tr> 
<td>Objetivo</td>
<td>
    <asp:TextBox ID="txtObjetivo" runat="server" TextMode="MultiLine" ></asp:TextBox></td>
</tr>

<tr> 
<td >Competencia</td>
<td>
    <asp:TextBox ID="txtCompetencia" runat="server" TextMode="MultiLine"></asp:TextBox></td>
</tr>

<tr> 
<td>Duración en semanas</td>
<td>
    <asp:TextBox ID="txtDuracion" runat="server"></asp:TextBox></td>
</tr>



<tr> 
<td colspan="2">
    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" 
        onclick="btnGuardar_Click" />
    <asp:Button ID="btnTerminar" runat="server" Text="Terminar" 
        onclick="btnTerminar_Click" />
    </td>

</tr>
</table>
</center>

</fieldset>
</asp:Content>