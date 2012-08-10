using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class PDF_PdfUploader : System.Web.UI.Page
{
    private int idprofesor;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            idprofesor = Convert.ToInt32(Request.QueryString["id"]);

            if (File.Exists(Server.MapPath("~/Administracion/PDF/Archvos/" + idprofesor + ".pdf")))
            {
                Response.Redirect("PdfVer.aspx?doc=" + idprofesor);
            }
        }
        else 
        {
            //Response.Redirect("../../inicio.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (fileupload.HasFile)
            {
                Label1.Text = fileupload.PostedFile.ContentType.ToString();
                if (fileupload.PostedFile.ContentType=="application/pdf")//validar .PFD
                {
                    fileupload.SaveAs(MapPath("~/Administracion/PDF/Archvos/" + idprofesor + ".pdf"));
                    Response.Redirect("PdfVer.aspx?doc=" + idprofesor);
                }
            }
        }
        catch (Exception ex) 
        {
            Label1.Text = "Error: " + ex.ToString();
        }
    }
}