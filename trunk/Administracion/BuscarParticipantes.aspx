<%@ Page Language="C#"  MasterPageFile="~/Administracion/MasterPage.master" AutoEventWireup="true" CodeFile="BuscarParticipantes.aspx.cs" Inherits="Administracion_BuscarParticipantes"  MaintainScrollPositionOnPostback="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<fieldset id="TablaPrticipantes" style="border-left-style:none">
    
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
                <th style="font-size: large"><h3>Seleccionar</h3></th>
                
                <th style="visibility:hidden; width: 1px;" ><h3>Rutafoto</h3></th>
                
			</tr>
		</thead>
        <!--Contenido de la tabla-->
        
		<tbody>
            <%
            empatiagamt.Participante p;
            try
            {
                for (int i = 0; i < ListadoParticipantes.Count; i++)
                {
                    p = (empatiagamt.Participante)ListadoParticipantes[i];
              
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
                <th style="font-size: large;width:10px"><h3>  <a href=".aspx?idParticipante=<%=p.Idpersona%>">Seleccionar</a></h3></th>
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