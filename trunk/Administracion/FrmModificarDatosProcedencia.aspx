<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion/MasterPage.master" AutoEventWireup="true" CodeFile="~/Administracion/FrmModificarDatosProcedencia.aspx.cs" Inherits="FrmModificarDatosProcedencia" MaintainScrollPositionOnPostback="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<form id="frmDatosProcedencia" style="border-style:none" action="FrmDatosProcedencia.aspx">
<center>
<fieldset style="border-style:none">
<table style="border-bottom-style:none">
<tr>
<td>Folio</td>
<td>
    <asp:TextBox ID="txtIdDato" runat="server" ReadOnly="True" Width="32px"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
        ID="lblFrm" runat="server" Visible="False"></asp:Label>
    &nbsp;&nbsp;&nbsp; </td>
</tr>

<tr>
<td class="style1"><strong>Clave del participante</strong></td>
<td>
    <asp:TextBox ID="txtClaveParticipante" runat="server" Width="34px" 
        ReadOnly="True"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>

    <!--PANEL DE BUSQUEDA DE ESCUELAS-->
</tr>

<tr>
<td class="style1"><strong>Clave de la escuela</strong></td>
<td>
    <asp:TextBox ID="txtClaveEscuela" runat="server" Width="35px"></asp:TextBox>&nbsp;<a href="FormularioEscuelas.aspx?Frm=FrmModificarDatosProcedencia.aspx&idDatos=<%=txtIdDato.Text %>">Escuela</a></td>

</tr>

<tr>
<td class="style1"><strong>Nombre del profesor</strong></td>
<td>
    <asp:TextBox ID="txtProfesor" runat="server"></asp:TextBox></td>

</tr>

<tr>
<td class="style1"><strong>Promedio del alumno</strong></td>
<td>
    <asp:TextBox ID="txtPromedio" runat="server"></asp:TextBox></td>

</tr>

<tr>
<td class="style1"><strong>Fecha de registro</strong></td>
<td>
    <asp:TextBox ID="txtFecha" runat="server" ReadOnly="True"></asp:TextBox></td>

</tr>

<tr>
<td colspan="2">
    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" 
        onclick="btnGuardar_Click"/>
    <asp:Button ID="btnTerminar" runat="server" Text="Terminar" 
        onclick="btnTerminar_Click" />
    </td>

</tr>
</table>

</fieldset>
</center>


</form>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="contentheader">
    <style type="text/css">
        .style1
        {
            height: 23px;
        }
    </style>
</asp:Content>
