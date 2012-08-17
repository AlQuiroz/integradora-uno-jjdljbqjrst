<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion/MasterPage.master" AutoEventWireup="true" CodeFile="FrmEliminarCurso.aspx.cs" Inherits="FrmEliminarCurso" MaintainScrollPositionOnPostback="true"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<fieldset id="Formulario" style="border-style:none">
<center>
<table>
<tr> 
<td>Clave del servicio</td>
<td>
    <asp:TextBox ID="txtClave" runat="server" ReadOnly="True" Width="41px"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
</tr>

<tr> 
<td>Tipo de servicio</td>
<td>
    <asp:TextBox ID="txtTipo" runat="server" Width="190px" ReadOnly="True"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
</tr>

<tr> 
<td>Nombre del servicio</td>
<td>
    <asp:TextBox ID="txtNombre" runat="server" ReadOnly="True" Width="191px"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
</tr>

<tr> 
<td>Objetivo</td>
<td>
    <asp:TextBox ID="txtObjetivo" runat="server" TextMode="MultiLine" Height="54px" 
        ReadOnly="True" Width="309px" ></asp:TextBox></td>
</tr>

<tr> 
<td >Competencia</td>
<td>
    <asp:TextBox ID="txtCompetencia" runat="server" TextMode="MultiLine" 
        Height="70px" ReadOnly="True" Width="303px"></asp:TextBox></td>
</tr>

<tr> 
<td>Duración en semanas</td>
<td>
    <asp:TextBox ID="txtDuracion" runat="server" ReadOnly="True"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
</tr>



<tr> 
<td colspan="2">
    <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" 
        onclick="btnEliminar_Click"  />
    <asp:Button ID="btnTerminar" runat="server" Text="Terminar" 
        onclick="btnTerminar_Click" />
    </td>

</tr>
</table>
</center>

</fieldset>
</asp:Content>