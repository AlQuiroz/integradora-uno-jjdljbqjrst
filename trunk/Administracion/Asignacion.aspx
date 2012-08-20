<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion/MasterPage.master" AutoEventWireup="true" CodeFile="Asignacion.aspx.cs" Inherits="Asignacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td align="left" colspan="2">
                Clave del Instructor<br />
                <asp:TextBox ID="txtMaestro" runat="server" Width="95px"></asp:TextBox>&nbsp; 
                <a target="_blank" href="">Buscar Instructor</a>
                <br />
            </td>
            <td align="left" colspan="1" style="width: 286px">
             Clave del Curso<br />
                <asp:TextBox ID="txtCurso" runat="server" Width="79px"></asp:TextBox>&nbsp; 
                <a target="_blank" href="">Buscar Curso</a>
                <br />
            </td>
            <td align="left" colspan="1" style="width: 286px">
             Clave del Participante<br />
                <asp:TextBox ID="txtPartcipante" runat="server" Width="105px"></asp:TextBox>&nbsp; 
                <a target="_blank" href="">Buscar Participante</a>
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="4" align="left">
                <strong>Fecha de incio:</strong><asp:TextBox ID="txtFeInicio" runat="server" ></asp:TextBox>
                <strong>Fecha Final:</strong><asp:TextBox ID="txtFeFinal" runat="server"></asp:TextBox>
                &nbsp; &nbsp; 
                <asp:Button ID="btnInscribir" runat="server" Text="Inscribir" 
                    ClientIDMode="Static" onclick="btnInscribir_Click" />
            </td>
            
        </tr>
   </table>
<br />
    <table cellpadding="0" cellspacing="0" border="0" id="table" class="sortable" width="70%">
		<thead>
        
			<tr>
				<th class="style9" style="font-size: large"><h3>ID</h3></th>
				<th style="font-size: large" class="style1"><h3>clave de inscripción</h3></th>
				<th style="font-size: large" class="style2"><h3>Clave Participante</h3></th>
				<th style="font-size: large" class="style3"><h3>Clave del servicio</h3></th>
				<th style="font-size: large" class="style4"><h3>Clave del Inscructor </h3></th>
                <th style="font-size: large" class="style5"><h3>Fecha de inicio</h3></th>
				<th style="font-size: large" class="style6"><h3>fecha de fin</h3></th>
                <th style="font-size: large" class="style7"><h3>Modificar</h3></th>
                <th style="font-size: large" class="style8"><h3>Eliminar</h3></th>
			</tr>
		</thead>
		<tbody>
        <%
            empatiagamt.inscripcionCurso insc;
            try
            {
                for (int i = 0; i < listaInscripcion.Count; i++)
                {
                    insc = (empatiagamt.inscripcionCurso)listaInscripcion[i];
              
              %>
			<tr>
				<td class="style9">1</td>
				<td class="style1"><%=insc.IdInscripcion %></td>
				<td class="style2"><%=insc.IdParticipante %></td>
                <td class="style3"><%=insc.IdServicios %></td>
                <td class="style4"><%=insc.IdInstructor %></td>
                <td class="style5"><%=insc.Finicio %></td>
                <td class="style6"><%=insc.FFin %></td>
                <td class="style7">Modificar</td>
                <td class="style8">Eliminar</td>
			</tr>
            <%}
            }
            catch { } %>
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
    <div align="right"> 
        <br />
        <br />
        <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" Height="29px" 
            Width="72px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" Height="29px" 
            Width="72px"/> 
    </div>
   
    
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="contentheader">
    <style type="text/css">
        .style1
        {
            width: 78px;
        }
        .style2
        {
            width: 64px;
        }
        .style3
        {
            width: 68px;
        }
        .style4
        {
            width: 63px;
        }
        .style5
        {
            width: 91px;
        }
        .style6
        {
            width: 79px;
        }
        .style7
        {
            width: 54px;
        }
        .style8
        {
            width: 77px;
        }
        .style9
        {
            width: 21px;
        }
    </style>
</asp:Content>


