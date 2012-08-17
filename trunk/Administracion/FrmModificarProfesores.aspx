<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion/MasterPage.master" AutoEventWireup="true" CodeFile="FrmModificarProfesores.aspx.cs" Inherits="FrmModificarProfesores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <fieldset style="border-left-style:none">
<table style="width: 1007px; height: 266px; ">
    <tr>
        <td style="height: 62px; width: 238px;" align="left">
            <label style="font-weight:bold" > Nombre (s):<br /></label>
            <asp:TextBox ID="txtNopmbre" runat="server" Width="195px" ClientIDMode="Static"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                     ControlToValidate="txtNopmbre" ErrorMessage="RequiredFieldValidator" 
                     ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
            
        <td style="width: 246px; height: 62px;" align="left">
            <label style="font-weight:bold" >   Apellido Paterno:<br /></label>
            <asp:TextBox ID="txtApellidoPat" runat="server" Width="222px" 
                ClientIDMode="Static"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                     ControlToValidate="txtApellidoPat" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
            
        <td style="width: 247px; height: 62px;" align="left">
             <label style="font-weight:bold" >  Apellido Materno:<br /></label>
             <asp:TextBox ID="txtApellidoMat" runat="server" Width="212px" 
                 ClientIDMode="Static"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                   ControlToValidate="txtApellidoMat" ErrorMessage="RequiredFieldValidator" 
                  Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
        <td style="height: 62px" align="left">
            <div>
                <asp:Image ID="Image1" runat="server" Height="113px" Width="275px" 
                    ClientIDMode="Static" ImageUrl="~/images/logotipo.png" 
                    ImageAlign="Middle" Visible="False" /></div>
             <div class="rowsElem"><span> <label style="font-weight:bold" >Fotografia:</label></span>&nbsp;</div>
             
            <asp:FileUpload ID="fUploadFoto" runat="server" ClientIDMode="Static" />
            <br />
            <asp:Button ID="btnCargar" runat="server" 
                Text="Cargar" UseSubmitBehavior="False" CausesValidation="False" 
                onclick="btnCargar_Click" />
            <asp:Label ID="lblIdInstructor" runat="server" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 238px; height: 32px;" align="left">
            <div class="rowElem"> 
        <label style="font-weight:bold" >E-mail:&nbsp;</label><br />
&nbsp;
            <asp:TextBox ID="txtEmail" runat="server" Width="148px" ClientIDMode="Static"></asp:TextBox><br />
             <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                 ControlToValidate="txtEmail" ErrorMessage="Correo no válido" ForeColor="Red" 
                 ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
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
                <asp:TextBox ID="txtfecha" runat="server" Width="192px" ClientIDMode="Static"></asp:TextBox>
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
                AutoPostBack="True"></asp:ListBox>
            <table style="width:100%;">
                <tr>
                    <td>
                        <asp:Button ID="btnAgregarTel" runat="server" Text="Agregar" 
                            ClientIDMode="Static" onclick="btnAgregarTel_Click" 
                            UseSubmitBehavior="False" CausesValidation="False" />
                    </td>
                    <td>
                        <asp:Button ID="btnModificarTel" runat="server" Text="Modifiar" 
                            ClientIDMode="Static" UseSubmitBehavior="False" 
                            onclick="btnModificarTel_Click" CausesValidation="False" />
                    </td>
                    <td>
                        <asp:Button ID="btnQuitarTel" runat="server" Text="Quitar" 
                            ClientIDMode="Static" UseSubmitBehavior="False" 
                            onclick="btnQuitarTel_Click" CausesValidation="False" Height="25px" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td style="width: 238px; " align="left">
            <label style="font-weight:bold" ><br /></label>
            <br />
        </td>
        <td style="width: 246px;" align="left">
            <label style="font-weight:bold" > <br /></label>
             <br />
             <br />
        </td>
        <td align="left">
             <br />
        </td>
    </tr>
    <tr>
    <td colspan="4">
        <asp:Button ID="btnGuardar" runat="server" 
            Text="Guardar" UseSubmitBehavior="False" onclick="btnGuardar_Click" />
        <asp:Button ID="btnTerminar" runat="server" onclick="btnTerminar_Click" 
            Text="Terminar" />
        </td>
    </tr>
    </table>
    </fieldset>

</asp:Content>
