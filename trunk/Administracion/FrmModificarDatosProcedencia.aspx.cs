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

            LlenarCampos();
        }

    }
    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        dproc = new empatiagamt.DatosPocedencia(txtIdDato.Text,txtClaveParticipante.Text,txtClaveEscuela.Text,txtProfesor.Text,txtPromedio.Text,txtFecha.Text);
        if(dproc.Modificar())
            Response.Redirect("FrmDatosProcedencia.aspx?idParticipante=" + txtClaveParticipante.Text);
    }
    protected void btnTerminar_Click(object sender, EventArgs e)
    {
        Response.Redirect("FrmDatosProcedencia.aspx?idParticipante=" + txtClaveParticipante.Text);
    }

    public void LlenarCampos() {
        dproc = new empatiagamt.DatosPocedencia();
        dproc.IdDatosProcedencia = txtIdDato.Text;
        dproc.BuscarDatoPorId();
        txtClaveEscuela.Text = dproc.DTable.Rows[0][1].ToString();
        txtClaveParticipante.Text = dproc.DTable.Rows[0][2].ToString();
        txtProfesor.Text = dproc.DTable.Rows[0][3].ToString();
        txtPromedio.Text = dproc.DTable.Rows[0][4].ToString();
        txtFecha.Text = Convert.ToDateTime(dproc.DTable.Rows[0][5].ToString()).ToString("yyyy-MM-dd");
    }
         
         

}