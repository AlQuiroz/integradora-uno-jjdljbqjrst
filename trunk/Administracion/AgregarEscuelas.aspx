<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion/MasterPage.master" AutoEventWireup="true" CodeFile="AgregarEscuelas.aspx.cs" Inherits="Escuelas" MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <asp:HiddenField ID="txtid" runat="server" />
Nombre escuela : 
    <asp:TextBox ID="txtnom" runat="server"></asp:TextBox>
        <asp:Label ID="lblFrm" runat="server"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtnom" ErrorMessage="Nombre Obligatorio"></asp:RequiredFieldValidator>
        <asp:Label ID="lblIdDatos" runat="server"></asp:Label>
        <br />
        <br />
Dirección :
    <asp:TextBox ID="txtdire" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtdire" ErrorMessage="Dirección Obligatoria"></asp:RequiredFieldValidator>
        <br />
        <br />
Teléfono :
    <asp:TextBox ID="txttele" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txttele" ErrorMessage="Teléfono Obligatorio"></asp:RequiredFieldValidator>
        <br />
        <br />

        <asp:Button ID="txtretur" runat="server" CausesValidation="False" 
            onclick="txtretur_Click" Text="Regresar" />

    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" 
            onclick="btnGuardar_Click" />
    <asp:Button ID="btnModificar" runat="server" Text="Modificar" Visible="False" 
            onclick="btnModificar_Click" />
</center>

</asp:Content>

