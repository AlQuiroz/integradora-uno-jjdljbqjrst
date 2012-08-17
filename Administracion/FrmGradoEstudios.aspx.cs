using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FrmGradoEstudios : System.Web.UI.Page
{
    public empatiagamt.GradoEstudios estudios;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            if (Request.QueryString["idInstructor"] != null)
            {
                lblIdInstructor.Text = Request.QueryString["idInstructor"].ToString();
            }
            else { lblIdInstructor.Text = "194"; }
        }
        VerLista(); //llenar lista
    }
    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        estudios = new empatiagamt.GradoEstudios(lblIdInstructor.Text, lblIdGrado.Text, txtGradoEstudios.Text.ToUpper(), txtNumCedula.Text.ToUpper(), txtFechaTerminación.Text);
        estudios.Agregar();
        VerLista();
    }

    public void VerLista() {
        estudios = new empatiagamt.GradoEstudios();
        estudios.IdInst = lblIdInstructor.Text;
        estudios.Mostrar();
    }

    protected void btnTerminar_Click(object sender, EventArgs e)
    {
        //idInstructor
        Response.Redirect("Profesores.aspx?idInstructor=" + lblIdInstructor.Text);
    }
}