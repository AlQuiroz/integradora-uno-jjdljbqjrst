using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FrmDatosFacturaInstructor : System.Web.UI.Page
{
    public empatiagamt.Facturas fact;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            lblIdParticipante.Text = Request.QueryString["idInstructor"].ToString();
        }
        fact = new empatiagamt.FactutaInstructor(lblIdParticipante.Text);
        fact.Mostrar();
    }
    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        fact = new empatiagamt.FactutaInstructor("", txtNombre.Text.ToUpper(),txtRFC.Text.ToUpper(), txtDireccion.Text.ToUpper(), txtTelefono.Text.ToUpper(), lblIdParticipante.Text);
        fact.Agregar();
        fact.Mostrar();
    }
    protected void btnTerminar_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Administracion/Profesores.aspx");
    }
}