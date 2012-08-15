<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion/MasterPage.master" AutoEventWireup="true" CodeFile="FrmDatosFacturaParticipante.aspx.cs" Inherits="FrmDatosFacturaParticipante" MaintainScrollPositionOnPostback="true"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="datosFacturacion"method="post" action="FrmDatosFacturaParticipante.aspx">

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
            </td>
            
        </tr>
    </table></center>

</fieldset>
<fieldset id="tabla" style="border-style:none">


 <fieldset id="TablaPrticipantes" style="border-left-style:none">
    
<table cellpadding="0" cellspacing="0" border="0" id="table" class="sortable">
		<thead>
			<tr>
				<th class="nosort" style="font-size: large;width:10px"><h3>ID</h3></th>
				<th style="font-size: large; width: 50px;"><h3>Clave</h3></th>
				<th style="font-size: large; width: 139px;"><h3>Razon social</h3></th>
				<th style="font-size: large; width: 121px;"><h3>RFC</h3></th>
				<th style="font-size: large; width: 121px;"><h3>Direccion</h3></th>
                <th style="font-size: large; width: 121px;"><h3>Teléfono</h3></th>
                <th style="font-size: large; width: 20px;"><h3>Modificar</h3></th>
                <th style="font-size: large; width: 20px;"><h3>Borrar</h3></th>

			</tr>
		</thead>
        <!--Contenido de la tabla-->
        
		<tbody>
            <%
            empatiagamt.Facturas f;
            try
            {
                for (int i = 0; i < fact.ListaFacturas.Count; i++)
                {
                    f = (empatiagamt.Facturas)fact.ListaFacturas[i];
              
              %>
            <tr>
				<td>1</td>
                <td style="width: 50px"><%=f.IdFactura%></td>
				<td style="width: 139px"><%=f.RazonSocial%></td>
				<td style="width: 121px"><%=f.RFC%></td>
				<td style="width: 121px"><%=f.Direccion%></td>
				<td style="width: 95px"><%=f.Telefono%></td>
                <td style="width: 20px"><a href="FrmModificarFacturaParticipante.aspx?idfactura=<%=f.IdFactura%>&idParticipante=<%=lblIdParticipante.Text %>"><img  src="../Styles/images/editLog.png"/></a></td>
				<td style="width: 20px"><a href="FrmEliminarFacturasParticipante.aspx?idfactura=<%=f.IdFactura%>&idParticipante=<%=lblIdParticipante.Text %>"><img src="../Styles/images/delete.png" /></a></td>
                
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

</fieldset>


</form>
</asp:Content>
