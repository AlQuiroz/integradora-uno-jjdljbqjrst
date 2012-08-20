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
    }
}