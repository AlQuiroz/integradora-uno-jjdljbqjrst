<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FormularioEscuelas.aspx.cs" Inherits="FormularioEscuelas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
Escuela<br />
<table cellpadding="0" cellspacing="0" border="0" id="table" class="sortable">
		<thead>
			<tr>
				<th class="nosort"><h3>ID</h3></th>
				<th><h3>Nombre Escuela</h3></th>
				<th><h3>Direccion</h3></th>
				<th><h3>Telefono</h3></th>
				<th><h3>Zip</h3></th>
				<th><h3>Birthdate</h3></th>
			</tr>
		</thead>
		<tbody>
        <%for (int i = 0; i < Le.Count; i++)
          {%>
			<tr>
				<td><%=Le[i].Idescuela.ToString()%></td>
				<td><%=Le[i].NombreEscuela.ToString()%></td>
				<td><%=Le[i].Direccion.ToString()%></td>
                <td><%=Le[i].Telefono.ToString()%></td>
				<td><a href="">Eliminar</a></td>
                <td><a href="">Modificar</a></td>  
			</tr>
            <%} %>
		</tbody>
  </table>

  <script type="text/javascript">
      var sorter = new TINY.table.sorter("sorter");
      sorter.head = "head";
      sorter.asc = "asc";
      sorter.desc = "desc";
      sorter.even = "evenrow";
      sorter.odd = "oddrow";
      sorter.evensel = "evenselected";
      sorter.oddsel = "oddselected";
      sorter.paginate = true;
      sorter.currentid = "currentpage";
      sorter.limitid = "pagelimit";
      sorter.init("table", 1);
  </script>

</asp:Content>

