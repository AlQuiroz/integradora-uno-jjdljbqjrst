using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FrmModificarFacturaParticipante : System.Web.UI.Page
{

    empatiagamt.Facturas fact;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false) {
            lblIdParticipante.Text = Request.QueryString["idParticipante"].ToString();
            lblIdFactura.Text = Request.QueryString["idfactura"].ToString();
            LlenartextBox();
        }
    }
    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        fact = new empatiagamt.FactutaParticipante(lblIdFactura.Text, txtNombre.Text, txtRFC.Text, txtDireccion.Text, txtTelefono.Text, lblIdParticipante.Text);
        if(fact.Modificar())
            Response.Redirect("~/Administracion/FrmDatosFacturaParticipante.aspx?idParticipante=" + lblIdParticipante.Text);

    }
    protected void btnTerminar_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Administracion/FrmDatosFacturaParticipante.aspx?idParticipante="+lblIdParticipante.Text);
    }

    private void LlenartextBox()
    {
        //busca una factura especifica
        fact = new empatiagamt.FactutaParticipante(lblIdParticipante.Text);
        fact.IdFactura = lblIdFactura.Text;
        if (fact.BuscarPorID()) {
            txtNombre.Text = fact.ListaFacturas[0].RazonSocial;
            txtRFC.Text = fact.ListaFacturas[0].RFC;
            txtDireccion.Text = fact.ListaFacturas[0].Direccion;
            txtTelefono.Text = fact.ListaFacturas[0].Telefono;
        }

    }

}