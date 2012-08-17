using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FrmEliminarGradoEstudio : System.Web.UI.Page
{
    empatiagamt.GradoEstudios grad;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            if (Request.QueryString["idInstructor"] != null && Request.QueryString["idGrado"] != null)
            {
                lblIdInstructor.Text = Request.QueryString["idInstructor"].ToString();
                lblIdGrado.Text = Request.QueryString["idGrado"].ToString();
                LlenarCampos();
            }
            else
            {
                Response.Redirect("FrmGradoEstudios.aspx?idInstructor=" + lblIdInstructor.Text);
            }
        }
    }
    
    private void LlenarCampos() {
        grad = new empatiagamt.GradoEstudios();
        grad.IdGrado = lblIdGrado.Text;
        grad.BuscarGradoEstudioId();
        txtGradoEstudios.Text = grad.DTable.Rows[0][1].ToString();
        txtNumCedula.Text = grad.DTable.Rows[0][2].ToString();
        txtFechaTerminación.Text = Convert.ToDateTime(grad.DTable.Rows[0][3].ToString()).ToString("yyyy-MM-dd");
    }

    protected void btnCancelar_Click(object sender, EventArgs e)
    {
        Response.Redirect("FrmGradoEstudios.aspx?idInstructor=" + lblIdInstructor.Text);
    }
    protected void btnEliminar_Click(object sender, EventArgs e)
    {
        grad = new empatiagamt.GradoEstudios();
        grad.IdGrado = lblIdGrado.Text;
        if(grad.Eliminar())
            Response.Redirect("FrmGradoEstudios.aspx?idInstructor=" + lblIdInstructor.Text);

    }
}