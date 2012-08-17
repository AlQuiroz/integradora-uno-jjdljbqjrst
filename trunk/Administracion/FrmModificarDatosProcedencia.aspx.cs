using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FrmModificarDatosProcedencia : System.Web.UI.Page
{
    empatiagamt.DatosPocedencia dproc;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            txtIdDato.Text = Request.QueryString["idDatos"].ToString();
            if (Request.QueryString["Frm"] != null) {
                lblFrm.Text = Request.QueryString["Frm"].ToString();
            }
            txtClaveParticipante.Text = Session["idParticipante"].ToString();//Request.QueryString["idParticipante"].ToString();
            if (Request.QueryString["idEscuela"] != null)
            {
                txtClaveEscuela.Text = Request.QueryString["idEscuela"].ToString();
            }
        }

    }
    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        dproc = new empatiagamt.DatosPocedencia(txtIdDato.Text,txtClaveParticipante.Text,txtClaveEscuela.Text,txtProfesor.Text,txtPromedio.Text,txtFecha.Text);
        dproc.Modificar();
    }
    protected void btnTerminar_Click(object sender, EventArgs e)
    {
        Response.Redirect("FrmDatosProcedencia.aspx?idParticipante=" + txtClaveParticipante.Text);
    }

}