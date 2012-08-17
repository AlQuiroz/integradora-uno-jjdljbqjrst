<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion/MasterPage.master" AutoEventWireup="true" CodeFile="~/Administracion/FrmDatosProcedencia.aspx.cs" Inherits="FrmDatosProcedencia" MaintainScrollPositionOnPostback="true"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<form id="frmDatosProcedencia" style="border-style:none" action="FrmDatosProcedencia.aspx">
<center>
<fieldset style="border-style:none">
<table style="border-bottom-style:none">

<tr>
<td class="style1"><strong>Clave del participante</strong></td>
<td>
    <asp:TextBox ID="txtClaveParticipante" runat="server" Width="34px"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>

    <!--PANEL DE BUSQUEDA DE ESCUELAS-->
</tr>

<tr>
<td class="style1"><strong>Clave de la escuela</strong></td>
<td>
    <asp:TextBox ID="txtClaveEscuela" runat="server" Width="35px"></asp:TextBox>&nbsp;<a href="FormularioEscuelas.aspx?Frm=FrmDatosProcedencia.aspx">Esculeas</a></td>

</tr>

<tr>
<td class="style1"><strong>Nombre del profesor</strong></td>
<td>
    <asp:TextBox ID="txtProfesor" runat="server"></asp:TextBox></td>

</tr>

<tr>
<td class="style1"><strong>Promedio del alumno</strong></td>
<td>
    <asp:TextBox ID="txtPromedio" runat="server"></asp:TextBox></td>

</tr>

<tr>
<td class="style1"><strong>Fecha de registro</strong></td>
<td>
    <asp:TextBox ID="txtFecha" runat="server" ReadOnly="True"></asp:TextBox></td>

</tr>

<tr>
<td colspan="2">
    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" 
        onclick="btnGuardar_Click" UseSubmitBehavior="False"/>
    <asp:Button ID="btnTerminar" runat="server" Text="Terminar" 
        onclick="btnTerminar_Click" UseSubmitBehavior="False" />
    </td>

</tr>
</table>

</fieldset>
</center>

 <fieldset id="TablaFamiliares" style="border-style:none">
    
<table cellpadding="0" cellspacing="0" border="0" id="table" class="sortable">
		<thead>
			<tr>
				<th class="nosort" style="font-size: large"><h3>ID</h3></th>
				<th style="font-size: large; width: 50px;"><h3>Clave</h3></th>
				<th style="font-size: large; width: 139px;"><h3>N. Participante</h3></th>
				<th style="font-size: large; width: 121px;"><h3>N. Escuela</h3></th>
				<th style="font-size: large; width: 121px;"><h3>Profesor</h3></th>
                <th style="font-size: large; width: 95px;"><h3>Promedio</h3></th>
                <th style="font-size: large; width: 123px;"><h3>Fecha de regitro</h3></th>
                
                <th style="font-size: large"><h3>Modficar</h3></th>
                <th style="font-size: large"><h3>Eliminar</h3></th>
                
			</tr>
		</thead>
        <!--Contenido de la tabla-->
        
		<tbody>
            <%
            empatiagamt.DatosPocedencia dp;
            try
            {
                for (int i = 0; i < dproc.ListaDatosProcedencia.Count; i++)
                {
                    dp = (empatiagamt.DatosPocedencia)dproc.ListaDatosProcedencia[i];
              
              %>
            <tr>
				<td>1</td>
                <td style="width: 50px">    <%=dp.IdDatosProcedencia %>   </td>
				<td style="width: 139px"> <%=dp.IdPart %>     </td>
				<td style="width: 121px"> <%=dp.IdEsc %>      </td>
				<td style="width: 121px"> <%=dp.Profesor %>      </td>
				<td style="width: 95px"> <%=dp.Promedio %>       </td>
                <td style="width: 123px"> <%=dp.Fecha %>      </td>

                <th style="font-size: large;width:10px"><h3>  <a href="FrmModificarDatosProcedencia.aspx?idDatos=<%=dp.IdDatosProcedencia %>&Frm=FrmDatosProcedencia.aspx"><img src="../Styles/images/editLog.png"/></a></h3></th>
                <th style="font-size: large;width:10px"><h3><a href="FrmEliminarDatoProcedencia.aspx?idDatos=<%=dp.IdDatosProcedencia %>"><img src="../Styles/images/delete.png" /></a></h3></th>
                
                
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
