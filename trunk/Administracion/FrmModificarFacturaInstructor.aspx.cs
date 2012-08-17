using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FrmModificarFacturaInstructor : System.Web.UI.Page
{

    empatiagamt.Facturas fact;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false) {
            lblIdParticipante.Text = Request.QueryString["idInstructor"].ToString();
            lblIdFactura.Text = Request.QueryString["idfactura"].ToString();
            LlenartextBox();
        }
    }
    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        fact = new empatiagamt.FactutaInstructor(lblIdFactura.Text, txtNombre.Text, txtRFC.Text, txtDireccion.Text, txtTelefono.Text, lblIdParticipante.Text);
        if(fact.Modificar())
            Response.Redirect("~/Administracion/FrmDatosFacturaInstructor.aspx?idInstructor=" + lblIdParticipante.Text);

    }
    protected void btnTerminar_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Administracion/FrmDatosFacturaidInstructor.aspx?idInstructor=" + lblIdParticipante.Text);
    }

    private void LlenartextBox()
    {
        //busca una factura especifica
        fact = new empatiagamt.FactutaInstructor(lblIdParticipante.Text);
        fact.IdFactura = lblIdFactura.Text;
        if (fact.BuscarPorID()) {
            txtNombre.Text = fact.ListaFacturas[0].RazonSocial;
            txtRFC.Text = fact.ListaFacturas[0].RFC;
            txtDireccion.Text = fact.ListaFacturas[0].Direccion;
            txtTelefono.Text = fact.ListaFacturas[0].Telefono;
        }

    }

}