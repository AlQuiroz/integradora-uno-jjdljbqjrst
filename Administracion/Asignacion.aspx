<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Asignacion.aspx.cs" Inherits="Asignacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td align="left" colspan="2">
                Nombre del profesor<br />
                <asp:TextBox ID="txtMaestro" runat="server" Width="154px"></asp:TextBox>&nbsp; <asp:Button ID="btnBuscar"
                    runat="server" Text="Buscar" />
                <br />
                <br />
                <br />
                <br />
            </td>
            <td align="left" colspan="1" style="width: 286px">
             Nombre del Curso<br />
                <asp:TextBox ID="txtCurso" runat="server" Width="154px"></asp:TextBox>&nbsp; 
                <asp:Button ID="btnCurso"
                    runat="server" Text="Buscar" Width="48px" />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="left">
                <strong>Fecha de incio:</strong>
            </td>
            <td align="left" style="width: 160px">
                
                &nbsp;&nbsp;&nbsp;&nbsp;
                
                <asp:TextBox ID="txtFeInicio" runat="server" ></asp:TextBox>

            </td>
            <td align="right" style="width: 286px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;
            Fecha Final:</strong>
            </td>
            <td align="right">
              &nbsp;&nbsp;&nbsp;&nbsp;
              <asp:TextBox ID="txtFeFinal" runat="server"></asp:TextBox>

            &nbsp;
            </td>
        </tr>
   </table>
<br />
<br />
<br />
    <table cellpadding="0" cellspacing="0" border="0" id="table" class="sortable">
		<thead>
			<tr>
				<th class="nosort" style="font-size: large"><h3>ID</h3></th>
				<th style="font-size: large"><h3>Nombre</h3></th>
				<th style="font-size: large"><h3>Direccion</h3></th>
				<th style="font-size: large"><h3>Email</h3></th>
				<th style="font-size: large"><h3>Telefono</h3></th>
                <th style="font-size: large"><h3>Agregar</h3></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td>Ezekiel Hart</td>
				<td>(627) 536-4760</td>
				<td><a href="mailto:#">tortor@est.ca</a></td>
				<td>53082</td>
                <td><asp:CheckBox ID="ChecklistAgregar" runat="server" /></td>
			</tr>
            <tr>
				<td>1</td>
				<td>Ezekiel Hart</td>
				<td>(627) 536-4760</td>
				<td><a href="mailto:#">tortor@est.ca</a></td>
				<td>53082</td>
                <td><asp:CheckBox ID="CheckBox1" runat="server" /></td>
			</tr>
            <tr>
				<td>1</td>
				<td>Ezekiel Hart</td>
				<td>(627) 536-4760</td>
				<td><a href="mailto:#">tortor@est.ca</a></td>
				<td>53082</td>
                <td><asp:CheckBox ID="CheckBox2" runat="server" /></td>
			</tr>
            <tr>
				<td>1</td>
				<td>Ezekiel Hart</td>
				<td>(627) 536-4760</td>
				<td><a href="mailto:#">tortor@est.ca</a></td>
				<td>53082</td>
                <td><asp:CheckBox ID="CheckBox3" runat="server" /></td>
            </tr>
            <tr>
				<td>1</td>
				<td>Ezekiel Hart</td>
				<td>(627) 536-4760</td>
				<td><a href="mailto:#">tortor@est.ca</a></td>
				<td>53082</td>
                <td><asp:CheckBox ID="CheckBox4" runat="server" /></td>
            </tr>
            <tr>
				<td>1</td>
				<td>Ezekiel Hart</td>
				<td>(627) 536-4760</td>
				<td><a href="mailto:#">tortor@est.ca</a></td>
				<td>53082</td>
                <td><asp:CheckBox ID="CheckBox5" runat="server" /></td>
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
    <div align="right"> 
        <br />
        <br />
        <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" Height="29px" 
            Width="72px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" Height="29px" 
            Width="72px"/> 
    </div>
   
    
</asp:Content>

