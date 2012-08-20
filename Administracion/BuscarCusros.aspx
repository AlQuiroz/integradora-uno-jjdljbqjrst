<%@ Page Language="C#" MasterPageFile="~/Administracion/MasterPage.master" AutoEventWireup="true" CodeFile="BuscarCusros.aspx.cs" Inherits="Administracion_BuscarCusros"  MaintainScrollPositionOnPostback="true"%>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server" ViewStateMode="Enabled">

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
                <th style="font-size: large; width: 121px;"><h3>Duración (Horas)</h3></th>
                <th style="font-size: large; width: 20px;"><h3>Seleccionar</h3></th>
                

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
                <td style="width: 20px"><a href="Asignacion.aspx?idServicio=<%=cu.ClaveServicio%>">Selecionar</a></td>
                
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
