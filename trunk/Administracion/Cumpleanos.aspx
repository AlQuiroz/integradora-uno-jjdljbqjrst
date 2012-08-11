<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion/MasterPage.master" AutoEventWireup="true" CodeFile="Cumpleanos.aspx.cs" Inherits="Cumpleanos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td>
                <strong>Buscar desde:</strong>
            </td>
            <td>
                <asp:Calendar ID="Calendar1" runat="server" Height="140px" Width="219px"></asp:Calendar>
            </td>
            <td>
                <strong>&nbsp;&nbsp; Hasta:</strong>    
            </td>
            <td>
                <asp:Calendar ID="Calendar2" runat="server"  Height="140px" Width="219px"></asp:Calendar>
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;<asp:Button ID="btnObtener" runat="server" Text="Obtener" />
                &nbsp;&nbsp;&nbsp;
            </td>
        </tr>
 
        <tr>
            <td colspan="5">
                 <br />
                 <br />
                 <asp:GridView ID="GridView1" runat="server" Height="162px" Width="1002px">
                 </asp:GridView>
            </td>
        </tr>
    </table>
   
</asp:Content>

