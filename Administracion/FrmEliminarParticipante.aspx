<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion/MasterPage.master" AutoEventWireup="true" CodeFile="FrmEliminarParticipante.aspx.cs" Inherits="FrmEliminarParticipante" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<fieldset>

<p> Se eliminará este familiar c</p>

<table style="width: 1007px; height: 266px; margin-bottom: 0px;">
    <tr>
        <td style="height: 62px; width: 238px;" align="left">
            <b>
        <asp:Label ID="lblNombre" runat="server" 
                Text="Label"></asp:Label><br />

            </b><span class="style2">

            <label > Nombre</label></span><label style="font-weight:bold" ><br /></label>
        </td>
            
        <td style="width: 246px; height: 62px;" align="left">
            <b>
        <asp:Label ID="lblAPaterno" 
                runat="server" Text="Label"></asp:Label><br />
            </b>
            <label >   <span class="style2">Apellido</span> <span class="style2">Paterno</span>
            <br /></label>
        </td>
            
        <td style="width: 247px; height: 62px;" align="left">
             <label >  
             <asp:Label ID="lblAMaterno" 
                 runat="server" Text="Label" Font-Bold="True"></asp:Label> <br />
             <span class="style2">Apellido</span> <span class="style2">Materno</span>:<br /></label>
        </td>
        <td style="height: 62px" align="left" rowspan="3">
            <div><b><asp:Image ID="Image1" runat="server" Height="113px" Width="275px" 
                    ClientIDMode="Static" ImageUrl="~/images/logotipo.png" 
                    ImageAlign="Middle" /></b></div>
        </td>
    </tr>
    <tr>
        <td style="width: 238px; height: 32px;" align="left" class="style1">
            <div class="rowElem"> <label style="font-weight:bold" >
                <asp:Label 
                    ID="lblSexo" runat="server" Text="Label"></asp:Label><br />
                </label><span class="style2"> <label >
                Sexo</label></span><label style="font-weight:bold" >:</label><em>&nbsp;</em><b><br />
&nbsp; 
            </b> 
            </div>
        </td>
        <td style="height: 32px; width: 246px;" align="left">
          <div class="rowElem"> <label style="font-weight:bold" >
              <asp:Label 
                  ID="lblEdoCivil" runat="server" Text="Label"></asp:Label><br />
              Estado Civil:</label>&nbsp;<b><br />
&nbsp;
          </b>
          </div>
        </td>
        <td style="height: 32px" align="left">
            <div class="rowElem"> <label style="font-weight:bold" > 
                <asp:Label ID="lblFnac" runat="server" Text="Label" Font-Bold="True"></asp:Label><br />
                </label><span class="style2"> <label > 
                Fecha</label></span><label style="font-weight:bold" > 
                </label><span class="style2"> <label > 
                nacimiento</label></span><label style="font-weight:bold" >:</label><b>&nbsp; 
                </b> 
                </div>
        </td>
    </tr>
    <tr>
        <td style="width: 238px; " align="left" class="style1">
        <label >
            <asp:Label ID="lblEmail" runat="server" 
                Text="Label"></asp:Label><br />
            <span class="style2">E</span></label><span class="style2"><label >-mail</label></span><label style="font-weight:bold" >:&nbsp;<br /></label>
            <b>
            <br />
            </b>
        </td>
        <td style="width: 246px;" align="left">
            <label style="font-weight:bold" > 
            <asp:Label ID="lblDireccion" 
                runat="server" Text="Label"></asp:Label><br />
            </label>
             <span class="style2">
            <label > 
            Dirección</label></span><label style="font-weight:bold" >:&nbsp;<br /></label>
             <b>
             <br />
            </b>
        </td>
        <td align="left">
             <label style="font-weight:bold" > 
             <asp:Label ID="lblEdad" 
                 runat="server" Text="Label"></asp:Label><br />
             </label>
             <span class="style2">
             <label > 
             Edad</label></span><label style="font-weight:bold" >:&nbsp;<br /></label>
             <b>
             <br />
             </b>
        </td>
    </tr>
    <tr>
    <td colspan="4">
        <asp:Button ID="btnEliminar" runat="server"  
            Text="Eliminar" UseSubmitBehavior="False" onclick="btnEliminar_Click" />
        <asp:Button ID="btnCancelar" runat="server" 
            Text="Cancelar" UseSubmitBehavior="False" onclick="btnCancelar_Click" />
        <asp:Label ID="lblIdPersona" runat="server" Text="Label" Visible="False"></asp:Label>
        </td>
    </tr>
    </table>
    </fieldset>

</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="contentheader">
    <style type="text/css">
        .style1
        {
            font-weight: bold;
        }
        .style2
        {
            font-weight: normal;
        }
    </style>
</asp:Content>
