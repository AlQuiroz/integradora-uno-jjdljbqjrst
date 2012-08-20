using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using empatiagamt;

public partial class Asignacion : System.Web.UI.Page
{
    public List<inscripcionCurso> listaInscripcion = new List<inscripcionCurso>();
    inscripcionCurso inscripcion;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            if (Request.QueryString["accion"] != null)
            {
                if (Request.QueryString["accion"] == "borrar")
                {
                    this.BorrarInscripcion();
                }
            }

            if (Request.QueryString["idParticipante"] != null)
            {
                Session["idParticipante"] = Request.QueryString["idParticipante"].ToString();
            }

            if (Request.QueryString["idInstructor"] != null)
            {
                Session["idInstructor"] = Request.QueryString["idInstructor"].ToString();
            }

            if (Request.QueryString["idServicio"] != null)
            {
                Session["idServicio"] = Request.QueryString["idServicio"].ToString();    
            }
            try { txtPartcipante.Text = Session["idParticipante"].ToString(); }
            catch { }
            try { txtMaestro.Text = Session["idInstructor"].ToString(); }
            catch { }
            try { txtCurso.Text = Session["idServicio"].ToString(); }
            catch { }
        }

        MostrarDatos();
    }

    public void MostrarDatos()
    {
        inscripcion = new inscripcionCurso();
        inscripcion.Mostrar();
        listaInscripcion = inscripcion.ListaInscripciones;
    }

    protected void btnInscribir_Click(object sender, EventArgs e)
    {
        inscripcion = new inscripcionCurso("",txtMaestro.Text, txtCurso.Text, txtPartcipante.Text, txtFeInicio.Text, txtFeFinal.Text, "");
        inscripcion.Agregar();
        MostrarDatos();
        BorrarCampos();
    }

    private void BorrarCampos()
    {
        Session.Remove("idParticipante");
        Session.Remove("idInstructor");
        Session.Remove("idServicio");
        txtCurso.Text = ""; txtFeFinal.Text = ""; txtFeInicio.Text = ""; txtMaestro.Text = ""; txtPartcipante.Text = "";
    }

    public bool BorrarInscripcion() {
        inscripcion = new inscripcionCurso();
        inscripcion.IdInscripcion = Request.QueryString["idInscripcion"].ToString();
        inscripcion.Eliminar();
        return false;
    }

}