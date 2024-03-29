﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion/MasterPage.master" AutoEventWireup="true" CodeFile="FrmFamiliares.aspx.cs" Inherits="FrmFamiliares"  MaintainScrollPositionOnPostback="true"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<form id="001" action="Historial_Medico_Participante.aspx"style="border-style:none">
    <fieldset style="border-style:none">
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
                    ImageAlign="Middle" /></div>
             <div class="rowsElem"><span> <label style="font-weight:bold" >Fotografia:</label></span>&nbsp;</div>
             
            <asp:FileUpload ID="fUploadFoto" runat="server" ClientIDMode="Static" />
            <br />
            <asp:Button ID="btnCargar" runat="server" onclick="btnCargar_Click" 
                Text="Cargar" UseSubmitBehavior="False" />
            <asp:Label ID="lblIdParticipante" runat="server" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 238px; height: 32px;" align="left">
            <div class="rowElem"> Parentezco<label style="font-weight:bold" >:</label>&nbsp;<br />
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
                            onclick="btnQuitarTel_Click" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td style="width: 238px; " align="left">
        <label style="font-weight:bold" >E-mail:&nbsp;<br /></label>
            <asp:TextBox ID="txtEmail" runat="server" Width="148px" ClientIDMode="Static"></asp:TextBox><br />
             <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                 ControlToValidate="txtEmail" ErrorMessage="Correo no válido" ForeColor="Red" 
                 ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
        <td style="width: 246px;" align="left">
            Empresa<label style="font-weight:bold" >:&nbsp;<br /></label>
            <asp:TextBox ID="txtEmpresa" runat="server" Width="199px" 
                ClientIDMode="Static"></asp:TextBox>
             <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                   ControlToValidate="txtEmpresa" ErrorMessage="RequiredFieldValidator" 
                  ForeColor="Red">*</asp:RequiredFieldValidator>
             <br />
        </td>
        <td align="left">
             Puesto<label style="font-weight:bold" >:&nbsp;<br /></label>
            <asp:TextBox ID="txtPuesto" runat="server" Width="79px" ClientIDMode="Static"></asp:TextBox>
             <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                   ControlToValidate="txtPuesto" ErrorMessage="RequiredFieldValidator" 
                  ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
    <td colspan="4">
        <asp:Button ID="btnGuardar" runat="server" onclick="btnGuardar_Click" 
            Text="Guardar" UseSubmitBehavior="False" />
        <asp:Button ID="btnTerminar" runat="server" onclick="btnTerminar_Click" 
            Text="Terminar" CausesValidation="False" UseSubmitBehavior="False" />
        </td>
    </tr>
    </table>
    </fieldset>

    <fieldset id="TablaFamiliares" style="border-style:none">
    
<table cellpadding="0" cellspacing="0" border="0" id="table" class="sortable">
		<thead>
			<tr>
				<th class="nosort" style="font-size: large"><h3>ID</h3></th>
				<th style="font-size: large; width: 50px;"><h3>Clave</h3></th>
				<th style="font-size: large; width: 139px;"><h3>Nombre</h3></th>
				<th style="font-size: large; width: 121px;"><h3>Apellido paterno</h3></th>
				<th style="font-size: large; width: 121px;"><h3>Apellido Materno</h3></th>
                <th style="font-size: large; width: 95px;"><h3>fecha nacimiento</h3></th>
                <th style="font-size: large; width: 123px;"><h3>Edo civil</h3></th>
                <th style="font-size: large; width: 75px;"><h3>E-mail</h3></th>
                <th style="font-size: large; width: 75px;"><h3>Parentezco</h3></th>
                <th style="font-size: large; width: 1px;" ><h3>Empresa</h3></th>
                <th style="font-size: large; width: 1px;"><h3>Puesto</h3></th>
                <th style="font-size: large"><h3>Modficar</h3></th>
                <th style="font-size: large"><h3>Eliminar</h3></th>
                <th style="visibility:hidden; width: 1px;" ><h3>Rutafoto</h3></th>
                
			</tr>
		</thead>
        <!--Contenido de la tabla-->
        
		<tbody>
            <%
            empatiagamt.Familiar p;
            try
            {
                for (int i = 0; i < ListadoFamiliares.Count; i++)
                {
                    p = (empatiagamt.Familiar)ListadoFamiliares[i];
              
              %>
            <tr>
				<td>1</td>
                <td style="width: 50px"><%=p.Idpersona%></td>
				<td style="width: 139px"><%=p.Nombre%></td>
				<td style="width: 121px"><%=p.APaterno%></td>
				<td style="width: 121px"><%=p.AMaterno%></td>
				<td style="width: 95px"><%=p.FNac%></td>
                <td style="width: 123px"><%=p.EdoCivil%></td>
                <td style="width: 75px"><a href="mailto:#"><%=p.Email%></a></td>
                <td style="width:50px;"><%=p.Parentezco %></td>
                <td style="width:100px;"><%=p.Empresa %></td>
                <td style="width:70px"><%=p.Puesto %></td>
                <th style="font-size: large;width:10px"><h3>  <a href="FrmModificarFamiliar.aspx?idFamiliar=<%=p.Idpersona%>&idParticipante=<%=lblIdParticipante.Text %>"><img src="../Styles/images/editLog.png"/></a></h3></th>
                <th style="font-size: large;width:10px"><h3><a href="FrmEliminarFamiliar.aspx?idFamiliar=<%=p.Idpersona%>&idParticipante=<%=lblIdParticipante.Text %>"><img src="../Styles/images/delete.png" /></a></h3></th>
                <td style="visibility:hidden; width: 2px;"><%=p.RutaFoto%></td>
                
			</tr>

            <% }
            }
            catch { }
                %>
			
            
		</tbody>
        <!--Fin del contenido de la tabla-->
  </table>
  <div id="controls">
		<div id="perpage">
			<select onchange="sorter.size(this.value)">
			<option value="5">5</option>
				<option value="10" selected="selected">10</option>
				<option value="20">20</option>
				<option value="50">50</option>
				<option value="100">100</option>
			</select>
			<span>Entries Per Page</span>
		</div>
		<div id="navigation">
			<img src="../Styles/images/asc.gif" width="16" height="16" alt="First Page" onclick="sorter.move(-1,true)" />
			<img src="../Styles/images/previous.gif" width="16" height="16" alt="First Page" onclick="sorter.move(-1)" />
			<img src="../Styles/images/next.gif" width="16" height="16" alt="First Page" onclick="sorter.move(1)" />
			<img src="../Styles/images/last.gif" width="16" height="16" alt="Last Page" onclick="sorter.move(1,true)" />
		</div>
		<div id="text">Displaying Page <span id="currentpage"></span> of <span id="pagelimit"></span></div>
	</div>
    </fieldset>



    </form>
</asp:Content>



