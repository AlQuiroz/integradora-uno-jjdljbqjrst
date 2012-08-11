<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion/MasterPage.master" AutoEventWireup="true" CodeFile="FrmDatosMedicos.aspx.cs" Inherits="FrmDatosMedicos" MaintainScrollPositionOnPostback="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <fieldset>

    <table>
    <tr><td align="right" colspan="3"> 
        <asp:Label ID="lblIdParticipante" runat="server"></asp:Label>
        <asp:Label ID="lblIdHistorial" runat="server"></asp:Label>
        Fecha:<label style="font-weight:bold" __designer:mapid="3d"><asp:Label ID="lblFecha" runat="server"></asp:Label>
            </label>&nbsp;</td></tr>
    <tr>
        <td align="left" style="height: 161px; width: 238px;">
            &nbsp;</td>
        
        <td colspan="2" style="height: 161px; width: 454px;">
            &nbsp;&nbsp;&nbsp;
            <asp:Panel ID="Panel1" runat="server" Height="267px" Width="484px">
                    <strong style="float: none; font-size: large; font-weight: bold; text-align: left">Se cuenta con:</strong>
                     <table align="right" style="width: 473px; height: 237px">
                        <tr>
                            <td align="left" style="height: 52px; width: 561px; position: static;">
                                &nbsp;Servicio médico<br />
                                <label style="font-weight:bold">
                                Institución Afiliada:&nbsp;<br /></label>
                                <asp:TextBox ID="txtInstitcion" runat="server" Width="295px"></asp:TextBox>
                                <br />
                            </td>                         
                        </tr>
                        <tr>
                            <td align="left" style="height: 62px; width: 561px;">
                                &nbsp;Tratamiento médico o psicológico<br />&nbsp;&nbsp;<asp:TextBox 
                                    ID="txtTratamiento" runat="server" Height="98px" Width="440px" 
                                    Columns="60" Rows="10" style = " overflow:scroll; text-align :justify " 
                                    TextMode="MultiLine">Especifique</asp:TextBox>
                            </td>
                           
                        </tr>
                     </table>
            </asp:Panel>
        </td>
    </tr>
    <tr>
        <td align="left" colspan="3">

        <table>
        <tr>
        <td><label style="font-weight:bold" > Peso:&nbsp;<br /></label>
           <asp:TextBox ID="txtPeso" runat="server"></asp:TextBox> </td>

        <td><label style="font-weight:bold" > Talla:&nbsp;<br /></label>
            <asp:TextBox ID="txtTalla" runat="server" Width="130px"></asp:TextBox>
            </td>
        
        <td> 
            <asp:Label style="font-weight:bold" ID="Label1" runat="server" Text="Imc : "></asp:Label><br />
            <asp:TextBox ID="txtImc" runat="server" ReadOnly="True"></asp:TextBox>
        </td>
        
        <td><label style="font-weight:bold" >Estado Actual:</label> 
            <asp:Label ID="lblEstado" runat="server"></asp:Label></td>
        
        </tr>
        </table>
        </td>
    </tr>

    <tr>
    <td><asp:Button ID="btnGuardar" runat="server" Text="Guardar" 
            UseSubmitBehavior="False" onclick="btnGuardar_Click" /></td>
    <td><asp:Button ID="btnEliminar" runat="server" Text="Eliminar" Height="26px" 
            UseSubmitBehavior="False" onclick="btnEliminar_Click" /></td>
    <td><asp:Button ID="btnTerminar" runat="server" Text="Terminar" 
            UseSubmitBehavior="False" onclick="btnTerminar_Click" /></td>
    </tr>
</table>

    <br />
    <br />
     
        

    
</fieldset>


<!--INICIO DE TABLAS CON INFORMACIÓN IMC-->
<fieldset id="Tablas">
    <br />
    <br />
    <table>
    <tr>
    <td>Detalle de imc</td>
    <td>Promedio mensual</td>
    </tr>
    <tr>
    <td> 
        <asp:GridView ID="gridDetalle" runat="server" BackColor="White" 
            BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="idparticipante" HeaderText="idparticipante" 
                    Visible="False" />
                <asp:BoundField DataField="institucion" HeaderText="institucion" 
                    Visible="False" />
                <asp:BoundField DataField="tratamiento" HeaderText="tratamiento" 
                    Visible="False" />
                <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy}" 
                    HeaderText="Fecha" />
                <asp:BoundField DataField="altura" HeaderText="Altura (m)" />
                <asp:BoundField DataField="peso" HeaderText="Peso (kg)" />
                <asp:BoundField DataField="imc" FooterText="imc" HeaderText="IMC" />
                <asp:BoundField DataField="estado" HeaderText="Estado" />
                <asp:BoundField DataField="idIMC" HeaderText="idIMC" Visible="False" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        </td>
    <td>
        <asp:GridView ID="gridMes" runat="server" CellPadding="4" ForeColor="#333333" 
            GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        </td>
    </table>


   
    </fieldset>


        <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
</asp:Content>
