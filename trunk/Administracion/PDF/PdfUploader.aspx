<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion/PDF/MasterPage.master" AutoEventWireup="true" CodeFile="PdfUploader.aspx.cs" Inherits="PDF_PdfUploader" %>

<asp:content ID ="content0" ContentPlaceHolderID="ContentPlaceHeader" runat="server"> 

</asp:content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <div>
    Agregar un Archivo&nbsp; de CV para profesores:
    <br />

    <asp:Label ID="Label1" runat="server" Text="Selecionar Archivo: "></asp:Label> 
    <asp:FileUpload ID="fileupload" runat="server" />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ErrorMessage="El documento no es PDF" ControlToValidate="fileupload" 
        ForeColor="Red" 
        ValidationExpression="^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))(.pdf)$"></asp:RegularExpressionValidator>
    <br />
    <asp:Button ID="btnGuardar" runat="server" onclick="Button1_Click" 
        Text="Guardar" UseSubmitBehavior="False" />
        <asp:Button ID="btnTerminar" runat="server" Text="Terminar" 
            onclick="btnTerminar_Click" />
        <asp:Label ID="idInstructor" runat="server"></asp:Label>
    <br />
    archivos en formato .PDF preferiblemente optimizado para web.<br />
&nbsp;
    </div>
</center>
</asp:Content>

