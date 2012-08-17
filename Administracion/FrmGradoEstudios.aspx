<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion/MasterPage.master" AutoEventWireup="true" CodeFile="FrmGradoEstudios.aspx.cs" Inherits="FrmGradoEstudios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<fieldset id="Formulario" style="border-style:none">
<center>
<table style="border-style:none">
<tr>
<td>Id grado</td>
<td>
    <asp:Label ID="lblIdGrado" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lblIdInstructor" runat="server" Visible="False"></asp:Label>
    </td>
</tr>
<tr>
<td>Grado de estudios</td>
<td>
    <asp:TextBox ID="txtGradoEstudios" runat="server"></asp:TextBox></td>
</tr>

<tr>
<td>Número de cédula</td>
<td>
    <asp:TextBox ID="txtNumCedula" runat="server"></asp:TextBox></td>
</tr>

<tr>
<td>Fecha terminación</td>
<td>
    <asp:TextBox ID="txtFechaTerminación" runat="server"></asp:TextBox></td>
</tr>

<tr>
<td colspan="2">
<asp:Button ID="btnGuardar" runat="server" Text="Guardar" 
        onclick="btnGuardar_Click" />
    <asp:Button ID="btnTerminar" runat="server" Text="Terminar" 
        onclick="btnTerminar_Click" />
</td>
    
</tr>

</table>
</center>
</fieldset>

<!--LISTADO DE GRADOS DE ESTUDIOS DEL INSTRUCTOR-->
<fieldset id="tabla" style="border-style:none">
    
<table cellpadding="0" cellspacing="0" border="0" id="table" class="sortable">
		<thead>
			<tr>
				<th class="nosort" style="font-size: large"><h3>ID</h3></th>
				<th style="font-size: large; width: 50px;"><h3>Clave</h3></th>
				<th style="font-size: large; width: 139px;"><h3>Grado</h3></th>
				<th style="font-size: large; width: 121px;"><h3>No. Cédua</h3></th>
				<th style="font-size: large; width: 121px;"><h3>Fecha terminación</h3></th>
                
                <th style="font-size: large"><h3>Modficar</h3></th>
                <th style="font-size: large"><h3>Eliminar</h3></th>
                
                
                
                
			</tr>
		</thead>
        <!--Contenido de la tabla-->
        
		<tbody>
            <%
                empatiagamt.GradoEstudios g;
                try
                {
                    for (int i = 0; i < Listagrados.Count; i++)
                    {
                        g = (empatiagamt.GradoEstudios)Listagrados[i];
              
              %>
            <tr>
				<td>1</td>
                
                <td style="width: 50px"><%=g.IdGrado %></td>
				<td style="width: 139px"><%=g.Grado %></td>
				<td style="width: 121px"><%=g.Ncedula %></td>
				<td style="width: 121px"><%=g.Fterminacion %></td>
				
                <th style="font-size: large;width:10px"><h3>  <a href="FrmModificarGradoEstudio.aspx?idGrado=<%=g.IdGrado %>&idInstructor=<%=lblIdInstructor.Text %>"><img src="../Styles/images/editLog.png"/></a></h3></th>
                <th style="font-size: large;width:10px"><h3><a href="FrmEliminarGradoEstudio.aspx?idGrado=<%=g.IdGrado %>&idInstructor=<%=lblIdInstructor.Text %>"><img src="../Styles/images/delete.png" /></a></h3></th>
                
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
</asp:Content>