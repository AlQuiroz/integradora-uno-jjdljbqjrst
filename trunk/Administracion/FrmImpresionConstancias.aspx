<%@ Page Language="C#"  MasterPageFile="~/Administracion/MasterPage.master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeFile="FrmImpresionConstancias.aspx.cs" Inherits="FrmImpresionConstancias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<fieldset id="tabla" style="border-style:none">


    <asp:Label ID="lblIdInstructor" runat="server" Text="Label"></asp:Label>


 <fieldset id="TablaPrticipantes" style="border-left-style:none">
    
<table cellpadding="0" cellspacing="0" border="0" id="table" class="sortable">
		<thead>
			<tr>
				<th class="nosort" style="font-size: large;width:10px"><h3>ID</h3></th>
				<th style="font-size: large; width: 50px;"><h3>Clave</h3></th>
				<th style="font-size: large; width: 139px;"><h3>Nombre</h3></th>
				<th style="font-size: large; width: 121px;"><h3>Curso</h3></th>
				<th style="font-size: large; width: 121px;"><h3>Duración</h3></th>
                <th style="font-size: large; width: 121px;"><h3>Impresión</h3></th>
			</tr>
		</thead>
        <!--Contenido de la tabla-->
        
		<tbody>
            <%
                empatiagamt.Constancias c;
            try
            {
                for (int i = 0; i < lista.Count; i++)
                {
                    c = (empatiagamt.Constancias)lista[i];
              
              %>
            <tr>
				<td>1</td>
                <td style="width: 50px"><%=c.IdPersona%></td>
				<td style="width: 139px"><%=c.NombreCompleto%></td>
				<td style="width: 121px"><%=c.Curso%></td>
				<td style="width: 121px"><%=c.Duracion%></td>
                <td style="width: 121px"><a target="_blank" href="<%=tipo %>?nombre=<%=c.NombreCompleto %>&curso=<%=c.Curso %>&duracion=<%=c.Duracion %>"> Imprimir</a></td>
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

</asp:Content>