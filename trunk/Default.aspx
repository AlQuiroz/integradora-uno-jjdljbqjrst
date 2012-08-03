<%@ Page Title="Página principal" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <!--Funciones para forma JavaScrip -->
<!--JavaScript-->
<script src="Scripts/dialog/dialog_box.js" type="text/jscript" ></script>
<script src="Scripts/frmvalidar/messages.js" type="text/jscript" ></script>
<script src="Scripts/sorter/script.js" type="text/jscript" ></script>
<script src="Scripts/sorter/packed.js" type="text/jscript" ></script>
<script src="Scripts/tinyeditor/tiny.editor.packed.js" type="text/jscript" ></script>
<!--CSS -->
<link rel="Stylesheet" type="text/css" href="Scripts/dialog/dialog_box.css" />
<link rel="stylesheet" type="text/css" href="Scripts/frmvalidar/messages.css" />
<link rel="stylesheet" type="text/css" href="Scripts/sorter/stylesorter.css" />
<link rel="stylesheet" type="text/css" href="Scripts/tinyeditor/tinyeditor.css" />
<!--Funciones para forma JavaScrip-->
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

<!--  Text Editor -->
<textarea id="tinyeditor" style="width: 400px; height: 200px"></textarea>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<!--  Dialog -->
<a href="javascript:showDialog('Confirmation','Holoooo','prompt');">Prompt</a>
<!--  Text Editor -->

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
</asp:Content>
