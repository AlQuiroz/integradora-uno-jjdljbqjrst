using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FrmEliminarDatoProcedencia : System.Web.UI.Page
{
    empatiagamt.DatosPocedencia proc;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false) {
            txtDatoProcedencia.Text = Request.QueryString["idDatos"].ToString();
        }
        
        llenarForm();

    }
    protected void btnEliminar_Click(object sender, EventArgs e)
    {
        proc = new empatiagamt.DatosPocedencia();
        proc.IdDatosProcedencia = txtDatoProcedencia.Text;
        if (proc.Eliminar())
            Response.Redirect("FrmDatosProcedencia.aspx?idParticipante="+txtClaveParticipante.Text);

    }
    private void llenarForm() {
        
        proc = new empatiagamt.DatosPocedencia();
        proc.IdDatosProcedencia = txtDatoProcedencia.Text;
        proc.BuscarDatoPorId();
        txtClaveEscuela.Text = proc.DTable.Rows[0][1].ToString();
        txtClaveParticipante.Text = proc.DTable.Rows[0][2].ToString();
        txtProfesor.Text = proc.DTable.Rows[0][3].ToString();
        txtPromedio.Text = proc.DTable.Rows[0][4].ToString();
        txtFecha.Text = Convert.ToDateTime(proc.DTable.Rows[0][5].ToString()).ToString("yyyy-MM-dd");
    }
    protected void btnTerminar_Click(object sender, EventArgs e)
    {
        Response.Redirect("FrmDatosProcedencia.aspx?idParticipante=" + txtClaveParticipante.Text);
    }
}