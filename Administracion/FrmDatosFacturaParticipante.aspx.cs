using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FrmDatosFacturaParticipante : System.Web.UI.Page
{
    public empatiagamt.Facturas fact;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            lblIdParticipante.Text = Request.QueryString["idParticipante"].ToString();
        }
        fact = new empatiagamt.FactutaParticipante(lblIdParticipante.Text);
        fact.Mostrar();
    }
    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        fact = new empatiagamt.FactutaParticipante("", txtNombre.Text.ToUpper(),txtRFC.Text.ToUpper(), txtDireccion.Text.ToUpper(), txtTelefono.Text.ToUpper(), lblIdParticipante.Text);
        fact.Agregar();
        fact.Mostrar();
    }
    protected void btnTerminar_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Administracion/Participantes.aspx");
    }
}