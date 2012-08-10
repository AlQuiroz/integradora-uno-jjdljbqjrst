<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion/MasterPage.master" AutoEventWireup="true" CodeFile="FrmDatosMedicos.aspx.cs" Inherits="FrmDatosMedicos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~FIN DE FORMULARIO DE PARTICIPANTE (SOLO DATOS PERSONALES~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
    
    <table>
    <tr>
        <td align="left" style="height: 161px; width: 238px;">
            <label style="font-weight:bold" > Fecha ingreso:&nbsp;<br /></label>
            <asp:TextBox ID="txtFeIngre" runat="server" Width="162px"></asp:TextBox>
             <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                   ControlToValidate="txtFeIngre" ErrorMessage="RequiredFieldValidator" 
                  ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
        
        <td colspan="3" style="height: 161px; width: 454px;">
            &nbsp;&nbsp;&nbsp;
            <asp:Panel ID="Panel1" runat="server" Height="267px" Width="484px">
                    <strong style="float: none; font-size: large; font-weight: bold; text-align: left">Se cuenta con:</strong>
                     <table align="right" style="width: 473px; height: 237px">
                        <tr>
                            <td align="left" style="height: 52px; width: 561px; position: static;">
                               <asp:CheckBox ID="CheckBox1" runat="server" />&nbsp;Servicio médico<br />
                                <label style="font-weight:bold">
                                Institución Afiliada:&nbsp;<br /></label>
                                <asp:TextBox ID="TextBox2" runat="server" Width="163px"></asp:TextBox>
                                <br />
                            </td>                         
                        </tr>
                        <tr>
                            <td align="left" style="height: 62px; width: 561px;">
                               <asp:CheckBox ID="CheckBox3" runat="server" />&nbsp;Tratamiento médico o psicológico<br />&nbsp;&nbsp;<asp:TextBox 
                                    ID="TextBox3" runat="server" Height="86px" TextMode="MultiLine" Width="284px">Especifique</asp:TextBox>
                            </td>
                           
                        </tr>
                     </table>
            </asp:Panel>
        </td>
        <td style="width: 268435712px">
        
            &nbsp;</td>
    </tr>
    <tr>
        <td align="left">
            <label style="font-weight:bold" > Peso:&nbsp;<br /></label>
           <asp:TextBox ID="txtPeso" runat="server"></asp:TextBox> 
        </td>
        <td align="left" style="width: 246px">
            <label style="font-weight:bold" > Talla:&nbsp;<br /></label>
            <asp:TextBox ID="txtTalla" runat="server"></asp:TextBox>
        </td>
        
        <td>
            <label style="font-weight:bold" >Estado Actual:</label> <asp:Label ID="lblEstado" runat="server" Text="Peso Normal"></asp:Label>
        </td>
    </tr>
</table>

    <br />
    <br />
    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" />&nbsp;&nbsp; <asp:Button ID="btnEditar" runat="server" Text="Editar" />&nbsp;&nbsp; <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" />

    <br />
    <br />
    <asp:GridView ID="GridViewIMC" runat="server" Width="1011px">
    </asp:GridView>

        <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
</asp:Content>
