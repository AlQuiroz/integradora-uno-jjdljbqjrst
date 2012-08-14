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

        }
    }
    protected void btnGuardar_Click(object sender, EventArgs e)
    {

    }
    protected void btnTerminar_Click(object sender, EventArgs e)
    {

    }

    private void LlenartextBox()
    {
        fact = new empatiagamt.FactutaParticipante(lblIdParticipante.Text);
        
        
        //if (per.BuscarPersona(int.Parse(lblIdPersona.Text)))
        //{
        //    if (per.DTable.Rows.Count != 0)
        //    {
        //        txtNopmbre.Text = per.DTable.Rows[0][1].ToString();
        //        txtApellidoPat.Text = per.DTable.Rows[0][2].ToString();
        //        txtApellidoMat.Text = per.DTable.Rows[0][3].ToString();
        //        txtfecha.Text = "" + Convert.ToDateTime(per.DTable.Rows[0][4].ToString()).ToString("yyyy-MM-dd)");
        //        edocivil.Value = per.DTable.Rows[0][5].ToString();
        //        txtEmail.Text = per.DTable.Rows[0][6].ToString();
        //        Image1.ImageUrl = per.DTable.Rows[0][7].ToString();
        //        slcParentezco.Value = per.DTable.Rows[0][8].ToString();
        //        txtEmpresa.Text = per.DTable.Rows[0][9].ToString();
        //        txtPuesto.Text = per.DTable.Rows[0][10].ToString();
        //    }
        //}
    }

}