<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion/MasterPage.master" AutoEventWireup="true" CodeFile="~/Administracion/FrmEliminarFamiliar.aspx.cs" Inherits="FrmEliminarFamiliar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<fieldset style="border-style:none">

<p> Al eliminar al este participante, se borrarán todos los datos relacionados con él, desde sus numeros telefonicos e inforación de contacto, hasta 
su historial académico
Se recomienda no eliminar información de esta indole para fururas referencias</p>

<table style="width: 1007px; height: 266px; margin-bottom: 0px;">
    <tr>
        <td style="height: 62px; width: 238px;" align="left">
        <asp:Label ID="lblNombre" runat="server" 
                Text="Label" Font-Bold="True"></asp:Label><br />

            <label > Nombre</label><label style="font-weight:bold" ><br /></label>
        </td>
            
        <td style="width: 246px; height: 62px;" align="left">
        <asp:Label ID="lblAPaterno" 
                runat="server" Text="Label" Font-Bold="True"></asp:Label><br />
            <label >   Apellido Paterno
            </label>
            <label style="font-weight:bold" >   
            <br /></label>
        </td>
            
        <td style="width: 247px; height: 62px;" align="left">
             <label style="font-weight:bold" >  
             <label style="font-weight:bold" >  
             <asp:Label ID="lblAMaterno" 
                 runat="server" Text="Label" Font-Bold="True"></asp:Label> <br />
             </label>
             </label>
             <label >  
             Apellido Materno</label><label style="font-weight:bold" >:<br /></label>
        </td>
        <td style="height: 62px" align="left" rowspan="3">
            <div>
                <asp:Image ID="Image1" runat="server" Height="113px" Width="275px" 
                    ClientIDMode="Static" ImageUrl="~/images/logotipo.png" 
                    ImageAlign="Middle" /></div>
        </td>
    </tr>
    <tr>
        <td style="width: 238px; height: 32px;" align="left">
            <div class="rowElem"> <label style="font-weight:bold" >
                <asp:Label 
                    ID="lblEdoCivil" runat="server" Text="Label" Font-Bold="True"></asp:Label><br />
                </label> <label >
                Estado civil:</label>&nbsp;<br />
&nbsp; 
            </div>
        </td>
        <td style="height: 32px; width: 246px;" align="left">
          <div class="rowElem"> <label style="font-weight:bold" >
              <asp:Label 
                  ID="lblFechaNac" runat="server" Text="Label" Font-Bold="True"></asp:Label></label> 
              <label >
              <br />
              Fecha de nacimiento:</label>&nbsp;<br />
&nbsp;
          </div>
        </td>
        <td style="height: 32px" align="left">
            <div class="rowElem"> <label style="font-weight:bold" > 
                <asp:Label ID="lblEmail" runat="server" Text="Label" Font-Bold="True"></asp:Label></label>
                <b> <label > 
                <br />
                </label></b> <label class="style1" > 
                E-mail:</label>&nbsp; 
                </div>
        </td>
    </tr>
    <tr>
        <td style="width: 238px; " align="left">
        <label >
        <label style="font-weight:bold" >
            <asp:Label ID="lblParentezco" runat="server" 
                Text="Label" Font-Bold="True"></asp:Label><br />
            </label>
            Parentezco</label><label style="font-weight:bold" ><label >:&nbsp;</label><br /></label>
            <br />
        </td>
        <td style="width: 246px;" align="left">
            <label style="font-weight:bold" > 
            <label style="font-weight:bold" > 
            <asp:Label ID="lblEmpresa" 
                runat="server" Text="Label" Font-Bold="True"></asp:Label><br />
            </label></label>
            <label > 
            Empresa</label><label style="font-weight:bold" ><label >:&nbsp;</label><br /></label>
             <br />
        </td>
        <td align="left">
             <label style="font-weight:bold" > 
             <label style="font-weight:bold" > 
             <asp:Label ID="lblPuesto" 
                 runat="server" Text="Label" Font-Bold="True"></asp:Label><br />
             </label></label>
             <label > 
             Puesto</label><label style="font-weight:bold" ><label >:&nbsp;</label><br /></label>
             <br />
        </td>
    </tr>
    <tr>
    <td colspan="4">
        <asp:Button ID="btnEliminar" runat="server"  
            Text="Eliminar" UseSubmitBehavior="False" onclick="btnEliminar_Click" />
        <asp:Button ID="btnCancelar" runat="server" 
            Text="Cancelar" UseSubmitBehavior="False" onclick="btnCancelar_Click" />
        <asp:Label ID="lblIdPersona" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="lblFamiliar" runat="server" Visible="False"></asp:Label>
        </td>
    </tr>
    </table>
    </fieldset>

</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="contentheader">
    <style type="text/css">
        .style1
        {}
    </style>
</asp:Content>
