using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FrmDatosProcedencia : System.Web.UI.Page
{
    public empatiagamt.DatosPocedencia dproc;
    public List<empatiagamt.DatosPocedencia> ListaDatosProcedencia = new List<empatiagamt.DatosPocedencia>();
    protected void Page_Load(object sender, EventArgs e)
    {
        txtFecha.Text = DateTime.Now.ToString("dd-MM-yyyy");
        if (Request.QueryString["idEscuela"] != null)
        {
            txtClaveEscuela.Text = Request.QueryString["idEscuela"].ToString();
        }


        if (Request.QueryString["idParticipante"] != null)
        {
             if(Session["idParticipante"] == null)
                Session["idParticipante"]  = Request.QueryString["idParticipante"].ToString();
        }
        txtClaveParticipante.Text = Session["idParticipante"].ToString();

        Datosver();
    }
    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        dproc = new empatiagamt.DatosPocedencia("", txtClaveParticipante.Text, txtClaveEscuela.Text, txtProfesor.Text, txtPromedio.Text, txtFecha.Text);
        dproc.Agregar();
        Datosver();
    }

    public void Datosver() {
        dproc = new empatiagamt.DatosPocedencia();
        dproc.IdPart = txtClaveParticipante.Text;
        dproc.Mostrar();
        ListaDatosProcedencia = dproc.ListaDatosProcedencia;
    }

    protected void btnTerminar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Participantes.aspx");
    }
}