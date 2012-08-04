<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Prueba.aspx.cs" Inherits="Prueba" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<!--Funciones para forma JavaScrip -->
<!--JavaScript
<script src="Scripts/dialog/dialog_box.js" type="text/jscript" ></script>
<script src="Scripts/frmvalidar/messages.js" type="text/jscript" ></script>
<script src="Scripts/sorter/script.js" type="text/jscript" ></script>
<script src="Scripts/sorter/packed.js" type="text/jscript" ></script>
-->
<script src="Scripts/tinyeditor/tiny.editor.packed.js" type="text/jscript" ></script>
<!--CSS 
<link rel="Stylesheet" type="text/css" href="Scripts/dialog/dialog_box.css" />
<link rel="stylesheet" type="text/css" href="Scripts/frmvalidar/messages.css" />
<link rel="stylesheet" type="text/css" href="Scripts/sorter/stylesorter.css" />
-->
<link rel="stylesheet" type="text/css" href="Scripts/tinyeditor/tinyeditor.css" />
<!--Funciones para forma JavaScrip-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
Textea en la sigiente area: <br />
<!--  Text Editor -->
<textarea id="tinyeditor" style="width: 400px; height: 200px"></textarea>
 <script type="text/javascript">
     var editor = new TINY.editor.edit('editor', {
         id: 'tinyeditor',
         width: 584,
         height: 175,
         cssclass: 'tinyeditor',
         controlclass: 'tinyeditor-control',
         rowclass: 'tinyeditor-header',
         dividerclass: 'tinyeditor-divider',
         controls: ['bold', 'italic', 'underline', 'strikethrough', '|', 'subscript', 'superscript', '|',
		'orderedlist', 'unorderedlist', '|', 'outdent', 'indent', '|', 'leftalign',
		'centeralign', 'rightalign', 'blockjustify', '|', 'unformat', '|', 'undo', 'redo', 'n',
		'font', 'size', 'style', '|', 'image', 'hr', 'link', 'unlink', '|', 'print'],
         footer: true,
         fonts: ['Verdana', 'Arial', 'Georgia', 'Trebuchet MS'],
         xhtml: true,
         cssfile: 'custom.css',
         bodyid: 'editor',
         footerclass: 'tinyeditor-footer',
         toggle: { text: 'source', activetext: 'wysiwyg', cssclass: 'toggle' },
         resize: { cssclass: 'resize' }
     });
</script>
<!--  Text Editor -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" Runat="Server">
este es el  piso  de la pagina
</asp:Content>