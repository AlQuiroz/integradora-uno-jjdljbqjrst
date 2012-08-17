using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class PDF_PdfUploader : System.Web.UI.Page
{
    empatiagamt.Instructor inst;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["idInstructor"] != null)
        {
            idInstructor.Text = Request.QueryString["idInstructor"].ToString();

            if (File.Exists(Server.MapPath("~/Administracion/PDF/Archvos/" + idInstructor + ".pdf")))
            {
                Response.Redirect("PdfVer.aspx?doc=" + idInstructor);
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
                    fileupload.SaveAs(MapPath("~/Administracion/PDF/Archvos/" + idInstructor + ".pdf"));
                    inst = new empatiagamt.Instructor();
                    inst.RutaCurriculum = idInstructor.Text;
                    inst.Modificar(); //actualiza el nombre de curriculum
                    Response.Redirect("PdfVer.aspx?doc=" + idInstructor);
                }
            }
        }
        catch (Exception ex) 
        {
            Label1.Text = "Error: " + ex.ToString();
        }
    }
    protected void btnTerminar_Click(object sender, EventArgs e)
    {
        Response.Redirect("../Profesores.aspx");
    }
}