using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FrmModificarCurso : System.Web.UI.Page
{
    empatiagamt.Cursos c;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["idServicio"] != null)
        {
            txtClave.Text = Request.QueryString["idServicio"].ToString();
            LlenarCampos();
        }
    }
    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        c = new empatiagamt.Cursos(txtClave.Text, txtTipo.Text, txtNombre.Text, txtObjetivo.Text, txtCompetencia.Text, txtDuracion.Text);
        if (c.Modificar())
            Response.Redirect("FrmCursos.aspx");
    }

    private void LlenarCampos() {
        c = new empatiagamt.Cursos();
        c.ClaveServicio = txtClave.Text;
        if (c.BuscarUnCurso())
        {
            txtTipo.Text = c.DTable.Rows[0][1].ToString();
            txtNombre.Text = c.DTable.Rows[0][2].ToString();
            txtObjetivo.Text = c.DTable.Rows[0][3].ToString();
            txtCompetencia.Text = c.DTable.Rows[0][4].ToString();
            txtDuracion.Text = c.DTable.Rows[0][5].ToString();
        }
    }


    protected void btnTerminar_Click(object sender, EventArgs e)
    {
        Response.Redirect("FrmCursos.aspx");
    }
}