﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Impresion_Constacia.aspx.cs" Inherits="Impresion_Constacia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td>
                <strong>Nombre:</strong>
            </td>
            <td>
                <asp:TextBox ID="txtNombre" runat="server" Width="205px"></asp:TextBox>
            </td>
            <td style="width: 307px">
                &nbsp;
                <asp:RadioButton ID="RadioButton1" runat="server" /><strong>&nbsp;Maestro</strong>
                <br />
                <br />
                <br />
                <asp:RadioButton ID="RadioButton2" runat="server" /><strong>&nbsp;Alumno</strong>
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnObtener" runat="server" Text="Obtener" Height="37px" 
                    Width="107px" />
            </td>
        </tr>
    </table>
    <table cellpadding="0" cellspacing="0" border="0" id="table" class="sortable">
		<thead>
			<tr>
				<th class="nosort" style="font-size: large"><h3>ID</h3></th>
				<th style="font-size: large"><h3>Nombre</h3></th>
				<th style="font-size: large"><h3>Direccion</h3></th>
				<th style="font-size: large"><h3>Email</h3></th>
				<th style="font-size: large"><h3>Telefono</h3></th>
                <th style="font-size: large"><h3>Dia</h3></th>
                <th style="font-size: large"><h3>Imprimir</h3></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td>Ezekiel Hart</td>
				<td>(627) 536-4760</td>
				<td><a href="mailto:#">tortor@est.ca</a></td>
				<td>53082</td>
                <td><asp:TextBox ID="txtFecha" runat="server" class="w8em format-d-m-y highlight-days-67 range-low-today" ></asp:TextBox></td>
                <td><asp:Button ID="btnImprimir" runat="server" Text="Imprimir" /></td>
              
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

