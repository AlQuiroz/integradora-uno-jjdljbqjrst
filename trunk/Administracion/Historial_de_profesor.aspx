<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion/MasterPage.master" AutoEventWireup="true" CodeFile="Historial_de_profesor.aspx.cs" Inherits="Historial_de_profesor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <table>
    <tr>
        <td>
            Nombre del Maestro:
        </td>
        <td>
            <asp:TextBox ID="txtMaestro" runat="server"></asp:TextBox>
        </td>
        <td>
             &nbsp;&nbsp;&nbsp;
             <asp:Button ID="btnBuscar" runat="server" Text="Buscar" />
        </td>
    </tr>
     <tr>
         <td>
             <br />
             <br />
         </td>
     </tr>
    <tr>
        <td>
             &nbsp; <strong>&nbsp;<asp:Label ID="lblMaestro" runat="server" Text="NOMBRE DEL MAESTRO"></asp:Label>
             </strong>
        </td>
    </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" id="table" class="sortable">
		<thead>
			<tr>
				<th class="nosort" style="font-size: large"><h3>ID</h3></th>
				<th style="font-size: large"><h3>Actividad</h3></th>
				<th style="font-size: large"><h3>Fecha</h3></th>
				<th style="font-size: large"><h3>Participantes</h3></th>
				<th style="font-size: large"><h3>Duracion</h3></th>
                <th style="font-size: large"><h3>Empresa</h3></th>
                <th style="font-size: large"><h3>Evaluacion</h3></th>
                <th style="font-size: large"><h3>Comentarios</h3></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td>Ezekiel Hart</td>
				<td>(627) 536-4760</td>
				<td><a href="mailto:#">tortor@est.ca</a></td>
				<td>53082</td>
                <td>jekrkrthrgdfkl;tjip</td>
                <td>dfnhjdfhfdjhfdjh</td>
                 <td>dfnhjdfhfdjhfdjh</td>
              
			</tr>
            
		</tbody>
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
			<img src="images/first.gif" width="16" height="16" alt="First Page" onclick="sorter.move(-1,true)" />
			<img src="images/previous.gif" width="16" height="16" alt="First Page" onclick="sorter.move(-1)" />
			<img src="images/next.gif" width="16" height="16" alt="First Page" onclick="sorter.move(1)" />
			<img src="images/last.gif" width="16" height="16" alt="Last Page" onclick="sorter.move(1,true)" />
		</div>
		<div id="text">Displaying Page <span id="currentpage"></span> of <span id="pagelimit"></span></div>
	</div>
</asp:Content>

