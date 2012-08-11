<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion/MasterPage.master" AutoEventWireup="true" CodeFile="Profesores.aspx.cs" Inherits="Profesores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="width: 1007px; height: 266px; ">
    <tr>
        <td style="height: 86px; width: 351px;" align="left">
            <label style="font-weight:bold" > Nombre Completo:<br /></label>
            <asp:TextBox ID="txtNopmbre" runat="server" Width="171px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                     ControlToValidate="txtNopmbre" ErrorMessage="RequiredFieldValidator" 
                     ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
            
        <td style="width: 341px; height: 86px;" align="left">
            <label style="font-weight:bold" >   Apellido Paterno:<br /></label><asp:TextBox ID="txtApellidoPat" runat="server" Width="171px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                     ControlToValidate="txtApellidoPat" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
            
        <td style="width: 247px; height: 86px;" align="left">
             <label style="font-weight:bold" >  Apellido Materno:<br /></label><asp:TextBox ID="txtApellidoMat" runat="server" Width="171px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                   ControlToValidate="txtApellidoMat" ErrorMessage="RequiredFieldValidator" 
                  Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
        <td style="height: 86px" align="left">
             <div class="rowsElem"><span> <label style="font-weight:bold" >Fotografia:</span>&nbsp;
            <asp:FileUpload ID="FileUpload2" runat="server" />
        </td>
    </tr>
    <tr>
        <td style="width: 351px; height: 91px;" align="left">
            <div class="rowElem"> <label style="font-weight:bold" >Sexo:</label>&nbsp;<br />
&nbsp;<select name="sexo" id="sexo" runat="server" clientidmode="Static" style=" font-family:Verdana;font-size:8pt;">
				          <option value="H">MASCULINO</option>
				          <option value="M">FEMENINO</option>
			          </select> 
            </div>
        </td>
        <td style="height: 91px; width: 341px;" align="left">
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
        <td style="height: 91px" align="left">
            <div class="rowElem"> <label style="font-weight:bold" >Fecha nacimiento:</label>&nbsp; 
                <asp:TextBox ID="txtfecha" runat="server" Width="192px"></asp:TextBox>
            </div>
        </td>
        <td style="height: 91px" align="left">
            <label style="font-weight:bold" > Telefono:&nbsp;<br /></label>
            <asp:TextBox ID="txtTelefono" runat="server" Width="148px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                   ControlToValidate="txtTelefono" ErrorMessage="RequiredFieldValidator" 
                  ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 351px; height: 88px;" align="left">
            <label style="font-weight:bold" > Celular:<br /></label><asp:TextBox ID="txtCel" runat="server" Width="148px"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                   ControlToValidate="txtCel" ErrorMessage="RequiredFieldValidator" 
                  ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
        <td style="height: 88px; width: 341px;" align="left">
            <label style="font-weight:bold" >E-mail:&nbsp;<br /></label><asp:TextBox ID="txtEmail" runat="server" Width="148px"></asp:TextBox>
             <br />
             <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                 ControlToValidate="txtEmail" ErrorMessage="Correo no valido" ForeColor="Red" 
                 ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
        <td style="height: 88px" align="left">
             <label style="font-weight:bold" > Direccion:&nbsp;<br /></label><asp:TextBox ID="txtDireccion" runat="server" Width="199px"></asp:TextBox>
             <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                   ControlToValidate="txtDireccion" ErrorMessage="RequiredFieldValidator" 
                  ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
        <td style="height: 88px" align="left">
            <label style="font-weight:bold" > Edad:&nbsp;<br /></label>
            <asp:TextBox ID="txtEdad" runat="server" Width="79px"></asp:TextBox>
             <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                   ControlToValidate="txtEdad" ErrorMessage="RequiredFieldValidator" 
                  ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
        <td style="height: 88px">
            
        </td>
    </tr>
    <tr>
        <td align="left" style="height: 161px; width: 351px;">
            <label style="font-weight:bold" > Fecha ingreso:&nbsp;<br /></label>
            <asp:TextBox ID="txtFeIngre" runat="server" Width="162px"></asp:TextBox>
             <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                   ControlToValidate="txtFeIngre" ErrorMessage="RequiredFieldValidator" 
                  ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
        
        <td rowspan="5" colspan="5" style="height: 161px">
            &nbsp;&nbsp;&nbsp;
            <asp:Panel ID="Panel1" runat="server" Height="267px" Width="588px">
                    <strong style="float: none; font-size: large; font-weight: bold; text-align: center">Se cuenta con:</strong>
                     <table align="right" style="width: 575px; height: 237px">
                        <tr>
                            <td align="left" style="height: 56px">
                               <asp:CheckBox ID="CheckBox1" runat="server" />Servicio médico 
                            </td>
                            <td align="left" style="height: 56px">
                               <asp:CheckBox ID="CheckBox2" runat="server" />Capacitaciones 
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="height: 62px">
                               <asp:CheckBox ID="CheckBox3" runat="server" />Areas de especialización 
                            </td>
                            <td align="left" style="height: 62px">
                               <asp:CheckBox ID="CheckBox4" runat="server" />Astudios de licenciatura 
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                <br />
                                <asp:CheckBox ID="CheckBox5" runat="server" />
                                Maestría
                            </td>
                            <td align="left">
                                <br />
                                <asp:CheckBox ID="CheckBox6" runat="server" />
                                Especialidad
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                <br />
                                <asp:CheckBox ID="CheckBox7" runat="server" />
                                Doctorado
                            </td>
                        </tr>

                     </table>
            </asp:Panel>
        
            
        </td>
    </tr>
</table>

    <br />
    <br />
    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" />&nbsp;&nbsp; <asp:Button ID="btnEditar" runat="server" Text="Editar" />&nbsp;&nbsp; <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" />

    <br />
    <br />
    <asp:GridView ID="GridViewProfesores" runat="server" Width="1011px">
    </asp:GridView>
</asp:Content>

