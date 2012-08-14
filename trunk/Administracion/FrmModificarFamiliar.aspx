<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion/MasterPage.master" AutoEventWireup="true" CodeFile="~/Administracion/FrmModificarFamiliar.aspx.cs" Inherits="FrmModificarFamiliar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="modificarParticipante" action="FrmModificarFamiliar.aspx">
<fieldset>
<table style="width: 1007px; height: 266px; ">
    <tr>
        <td style="height: 62px; width: 238px;" align="left">
            <label style="font-weight:bold" > Nombre (s):<br /></label>
            <asp:TextBox ID="txtNopmbre" runat="server" Width="195px" ClientIDMode="Static">asdasd</asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                     ControlToValidate="txtNopmbre" ErrorMessage="RequiredFieldValidator" 
                     ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
            
        <td style="width: 246px; height: 62px;" align="left">
            <label style="font-weight:bold" >   Apellido Paterno:<br /></label>
            <asp:TextBox ID="txtApellidoPat" runat="server" Width="222px" 
                ClientIDMode="Static">asdasd</asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                     ControlToValidate="txtApellidoPat" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
            
        <td style="width: 247px; height: 62px;" align="left">
             <label style="font-weight:bold" >  Apellido Materno:<br /></label>
             <asp:TextBox ID="txtApellidoMat" runat="server" Width="212px" 
                 ClientIDMode="Static">asdasdsad</asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                   ControlToValidate="txtApellidoMat" ErrorMessage="RequiredFieldValidator" 
                  Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
        <td style="height: 62px" align="left">
            <div><asp:Image ID="Image1" runat="server" Height="113px" Width="275px" 
                    ClientIDMode="Static" ImageUrl="~/images/logotipo.png" /></div>
             <div class="rowsElem"><span> <label style="font-weight:bold" >Fotografia:</label></span>&nbsp;</div>
             
            <asp:FileUpload ID="FileUpload2" runat="server" ClientIDMode="Static"  CssClass="sexy-button"/>
        </td>
    </tr>
    <tr>
        <td style="width: 238px; height: 32px;" align="left">
            <div class="rowElem"> <label style="font-weight:bold" >Sexo:</label>&nbsp;<br />
&nbsp;<select name="sexo" id="slcParentezco" runat="server" clientidmode="Static" style=" font-family:Verdana;font-size:8pt;" onclick="return sexo_onclick()">
				          <option value="-1">-----</option>
                          <option value="Padre">Padre</option>
                          <option value="Madre">Madre</option>
                          <option value="Hermano">Hermano</option>
				          <option value="Hijo">Hijo</option>
			          </select> 
            </div>
        </td>
        <td style="height: 32px; width: 246px;" align="left">
          <div class="rowElem"> <label style="font-weight:bold" >Estado Civil:</label>&nbsp;<br />
&nbsp;<select name="edocivil" id="edocivil" runat="server" clientidmode="Static" style="font-family:Verdana;font-size:8pt;">
				<option value="SOLTERO">SOLTERO</option>
				<option value="CASADO">CASADO</option>
				<option value="DIVORCIADO">DIVORCIADO</option>
				<option value="UNION LIBRE">UNION LIBRE</option>
				<option value="VIUDO">VIUDO</option>
			</select>
          </div>
        </td>
        <td style="height: 32px" align="left">
            <div class="rowElem"> <label style="font-weight:bold" >Fecha nacimiento:</label>&nbsp; 
                <asp:TextBox ID="txtfecha" runat="server" Width="192px" ClientIDMode="Static">1988-02-06</asp:TextBox>
            </div>
        </td>
        <td align="left" rowspan="2">
            

        <table style="width:100%;">
                <tr>
                    <td style="width: 107px">
                        <asp:Label ID="Label1" runat="server" Text="Tipo de teléfono"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Número"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 107px">
                        <asp:TextBox ID="txtTipoTelefono" runat="server" style="margin-right: 0px" 
                            Width="116px" ClientIDMode="Static"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNumeroTel" runat="server" ClientIDMode="Static"></asp:TextBox>
             <label style="font-weight:bold" > 
                        
                        </label>
                    </td>
                </tr>
            </table>
            
            <asp:ListBox ID="listBoxTelefonos" runat="server" Height="103px" Width="250px" 
                ClientIDMode="Static" 
                onselectedindexchanged="listBoxTelefonos_SelectedIndexChanged" 
                AutoPostBack="True" > </asp:ListBox>
            <table style="width:100%;">
                <tr>
                    <td>
                        <asp:Button ID="btnAgregarTel" runat="server" Text="Agregar" 
                            ClientIDMode="Static" onclick="btnAgregarTel_Click" 
                            UseSubmitBehavior="False" />
                    </td>
                    <td>
                        <asp:Button ID="btnModificarTel" runat="server" Text="Modifiar" 
                            ClientIDMode="Static" UseSubmitBehavior="False" 
                            onclick="btnModificarTel_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnQuitarTel" runat="server" Text="Quitar" 
                            ClientIDMode="Static" UseSubmitBehavior="False" 
                            onclick="btnQuitarTel_Click" style="height: 26px" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td style="width: 238px; " align="left">
        <label style="font-weight:bold" >E-mail:&nbsp;<br /></label>
            <asp:TextBox ID="txtEmail" runat="server" Width="148px" ClientIDMode="Static">asd@sada.dasd</asp:TextBox><br />
             <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                 ControlToValidate="txtEmail" ErrorMessage="Correo no válido" ForeColor="Red" 
                 ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
        <td style="width: 246px;" align="left">
            <strong>Empresa:</strong><label style="font-weight:bold" >&nbsp;<br /></label>
            <asp:TextBox ID="txtEmpresa" runat="server" Width="199px" 
                ClientIDMode="Static">asdads</asp:TextBox>
             <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                   ControlToValidate="txtEmpresa" ErrorMessage="RequiredFieldValidator" 
                  ForeColor="Red">*</asp:RequiredFieldValidator>
             <br />
        </td>
        <td align="left">
             <strong>Pu</strong><label ><strong>esto:&nbsp;</strong></label><label style="font-weight:bold" ><br /></label>
            <asp:TextBox ID="txtPuesto" runat="server" Width="79px" ClientIDMode="Static">asdasd</asp:TextBox>
             <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                   ControlToValidate="txtPuesto" ErrorMessage="RequiredFieldValidator" 
                  ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
    <td colspan="4">
        <asp:Button ID="btnGuardar" runat="server" onclick="btnGuardar_Click" 
            Text="Guardar cambios" UseSubmitBehavior="False" />
        <asp:Label ID="lblIdPersona" runat="server" Text="(w.w)"></asp:Label>
        <asp:Label ID="lblFamiliar" runat="server"></asp:Label>
        <asp:Button ID="btnCancelar" runat="server" onclick="btnCancelar_Click" 
            Text="Cancelar" />
        </td>
    </tr>
    </table>
    </fieldset>
</form>
</asp:Content>
