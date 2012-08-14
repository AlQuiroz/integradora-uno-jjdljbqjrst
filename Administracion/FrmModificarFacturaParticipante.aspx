<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion/MasterPage.master" AutoEventWireup="true" CodeFile="FrmModificarFacturaParticipante.aspx.cs" Inherits="FrmModificarFacturaParticipante" MaintainScrollPositionOnPostback="true"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <fieldset id="datos" style="border-style:none">
<center>
    <table style="width: 50%;">
        <tr>
            <td>
                
                <b>Nombre</b></td>
            <td>
                &nbsp;<asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td >
                
                <b>RFC</b></td>
            <td>
                &nbsp;<asp:TextBox ID="txtRFC" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td >
                
                <b>Dirección
            </b>
            </td>
            <td>
                &nbsp;<asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td >
                
                <b>Teléfono</b></td>
            <td>
                &nbsp;<asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="style2" 
                    onclick="btnGuardar_Click" UseSubmitBehavior="False" />
                <asp:Button ID="btnTerminar"
                    runat="server" Text="Terminar" CssClass="style2" 
                    onclick="btnTerminar_Click" />
                <asp:Label ID="lblIdParticipante" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="lblIdFactura" runat="server" Text="Label"></asp:Label>
            </td>
            
        </tr>
    </table></center>

</fieldset>
</asp:Content>
