using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class PDF_PdfVer : System.Web.UI.Page
{
    public string doc;
    protected void Page_Load(object sender, EventArgs e)
    {
        doc = Request.QueryString["doc"];
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (File.Exists(Server.MapPath("~/Administracion/PDF/Archvos/" + doc + ".pdf"))) 
        {
            File.Delete(Server.MapPath("~/Administracion/PDF/Archvos/" + doc) + ".pdf");
            Response.Redirect("PdfUploader.aspx?id="+doc);
        }
    }
}