<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion/MasterPage.master" AutoEventWireup="true" CodeFile="~/Administracion/FrmEliminarDatoProcedencia.aspx.cs" Inherits="FrmEliminarDatoProcedencia" MaintainScrollPositionOnPostback="true"%>

<script runat="server">

   
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<fieldset style="border-style:none">
<table style="border-bottom-style:none">
<tr>
<td class="style1"><strong>Clave procedencia</strong></td>
<td>
    <asp:TextBox ID="txtDatoProcedencia" runat="server" Width="34px" 
        ReadOnly="True"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>

    <!--PANEL DE BUSQUEDA DE ESCUELAS-->
</tr>
<tr>
<td class="style1"><strong>Clave del participante</strong></td>
<td>
    <asp:TextBox ID="txtClaveParticipante" runat="server" Width="34px" 
        ReadOnly="True"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>

    <!--PANEL DE BUSQUEDA DE ESCUELAS-->
</tr>

<tr>
<td class="style1">Nombre<strong> de la escuela</strong></td>
<td>
    <asp:TextBox ID="txtClaveEscuela" runat="server" Width="100px" ReadOnly="True"></asp:TextBox></td>

</tr>

<tr>
<td class="style1"><strong>Nombre del profesor</strong></td>
<td>
    <asp:TextBox ID="txtProfesor" runat="server" ReadOnly="True"></asp:TextBox></td>

</tr>

<tr>
<td class="style1"><strong>Promedio del alumno</strong></td>
<td>
    <asp:TextBox ID="txtPromedio" runat="server" ReadOnly="True"></asp:TextBox></td>

</tr>

<tr>
<td class="style1"><strong>Fecha de registro</strong></td>
<td>
    <asp:TextBox ID="txtFecha" runat="server" ReadOnly="True"></asp:TextBox></td>

</tr>

<tr>
<td colspan="2">
    <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" 
        onclick="btnEliminar_Click" UseSubmitBehavior="False" 
        />
    <asp:Button ID="btnTerminar" runat="server" Text="Terminar" 
        onclick="btnTerminar_Click" UseSubmitBehavior="False" />
    </td>

</tr>
</table>

</fieldset>
</asp:Content>
