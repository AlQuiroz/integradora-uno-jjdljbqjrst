<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion/MasterPage.master" AutoEventWireup="true" CodeFile="FrmCursos.aspx.cs" Inherits="FrmCursos" MaintainScrollPositionOnPostback="true"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<fieldset id="Formulario" style="border-style:none">
<center>
<table>
<tr> 
<td>Clave del servicio</td>
<td>
    <asp:TextBox ID="txtClave" runat="server"></asp:TextBox></td>
</tr>

<tr> 
<td>Tipo de servicio</td>
<td>
    <asp:TextBox ID="txtTipo" runat="server"></asp:TextBox></td>
</tr>

<tr> 
<td>Nombre del servicio</td>
<td>
    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox></td>
</tr>

<tr> 
<td>Objetivo</td>
<td>
    <asp:TextBox ID="txtObjetivo" runat="server" TextMode="MultiLine" ></asp:TextBox></td>
</tr>

<tr> 
<td >Competencia</td>
<td>
    <asp:TextBox ID="txtCompetencia" runat="server" TextMode="MultiLine"></asp:TextBox></td>
</tr>

<tr> 
<td>Duración en semanas</td>
<td>
    <asp:TextBox ID="txtDuracion" runat="server"></asp:TextBox></td>
</tr>



<tr> 
<td colspan="2">
    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" 
        onclick="btnGuardar_Click" /></td>

</tr>
</table>
</center>

</fieldset>

<fieldset id="Tabla" style="border-style:none">
    
<table cellpadding="0" cellspacing="0" border="0" id="table" class="sortable">
		<thead>
			<tr>
				<th class="nosort" style="font-size: large;width:10px"><h3>ID</h3></th>
				<th style="font-size: large; width: 50px;"><h3>Clave</h3></th>
				<th style="font-size: large; width: 139px;"><h3>Tipo de servicio</h3></th>
				<th style="font-size: large; width: 121px;"><h3>Nombre de curso</h3></th>
				<th style="font-size: large; width: 121px;"><h3>Objetivo</h3></th>
                <th style="font-size: large; width: 121px;"><h3>Competencia</h3></th>
                <th style="font-size: large; width: 121px;"><h3>Duración (semanas)</h3></th>
                <th style="font-size: large; width: 20px;"><h3>Modificar</h3></th>
                <th style="font-size: large; width: 20px;"><h3>Borrar</h3></th>

			</tr>
		</thead>
        <!--Contenido de la tabla-->
        
		<tbody>
            <%
            empatiagamt.Cursos cu;
            try
            {
                for (int i = 0; i < cur.ListaCursos.Count; i++)
                {
                    cu = (empatiagamt.Cursos)cur.ListaCursos[i];
              
              %>
            <tr>
				<td>1</td>
                <td style="width: 50px"><%=cu.ClaveServicio%></td>
				<td style="width: 139px"><%=cu.Tipo%></td>
				<td style="width: 121px"><%=cu.Nombre%></td>
				<td style="width: 121px"><%=cu.Objetivo%></td>
				<td style="width: 95px"><%=cu.Competencia%></td>
                <td style="width: 95px"><%=cu.Semanas%></td>
                <td style="width: 20px"><a href="FrmModificarCurso.aspx?idServicio=<%=cu.ClaveServicio%>"><img  src="../Styles/images/editLog.png"/></a></td>
				<td style="width: 20px"><a href="FrmEliminarCurso.aspx?idServicio=<%=cu.ClaveServicio%>"><img src="../Styles/images/delete.png" /></a></td>
                
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
<center>

</center>
</fieldset>


</asp:Content>