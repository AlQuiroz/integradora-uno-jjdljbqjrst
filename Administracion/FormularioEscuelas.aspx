<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion/MasterPage.master" AutoEventWireup="true" CodeFile="FormularioEscuelas.aspx.cs" Inherits="FormularioEscuelas" %>

<asp:Content ID="content2" ContentPlaceHolderID="contentheader" runat ="server">
<script src="../Scripts/TablaSorter.js" type="text/jscript"></script>
<link href="../Styles/TablaSorter.css" type="text/css" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>Escuelas</h2><br />
<center>
    <asp:Button ID="btnnueva" runat="server" Text="Agregar Escuela Nueva" 
        onclick="btnnueva_Click" />
    <asp:Label ID="lblFrmOrigen" runat="server" Text="FrmOrigen" Visible="False"></asp:Label>
    <asp:Label ID="lblIdParticipante" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lblIdDatos" runat="server" Visible="False"></asp:Label>
    <br />
    <br />
<table cellpadding="0" cellspacing="0" border="0" id="table" class="sortable">
		<thead>
			<tr>
				<th class="nosort"><h3>ID</h3></th>
				<th><h3>Nombre Escuela</h3></th>
				<th><h3>Direccion</h3></th>
				<th><h3>Telefono</h3></th>
				<th><h3>Eliminar</h3></th>
				<th><h3>Modificar</h3></th>
                <th><h3>Seleccionar</h3></th>
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
				<td><a href="AgregarEscuelas.aspx?Accion=Eliminar&Elemento=<%=Le[i].Idescuela.ToString()%> ">Eliminar</a></td>
                <td><a href="AgregarEscuelas.aspx?Accion=Modificar&Elemento=<%=Le[i].Idescuela.ToString()%> ">Modificar</a></td>  
                <td><a href="<%=lblFrmOrigen.Text %>?idEscuela=<%=Le[i].Idescuela.ToString()%>&idParticipante=<%=lblIdParticipante.Text %>&idDatos=<%=lblIdDatos.Text %> ">Seleccionar</a></td>  
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
  </center>
</asp:Content>

