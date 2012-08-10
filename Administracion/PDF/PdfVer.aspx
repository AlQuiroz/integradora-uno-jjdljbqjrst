<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion/PDF/MasterPage.master" AutoEventWireup="true" CodeFile="PdfVer.aspx.cs" Inherits="PDF_PdfVer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Archvos/1.pdf" -->
<embed src="Archvos/<%=doc %>.pdf" width="1000" height="1000">
<asp:Button ID="Button1" runat="server" Text="Eliminar CV" onclick="Button1_Click"></asp:Button>
</asp:Content>

