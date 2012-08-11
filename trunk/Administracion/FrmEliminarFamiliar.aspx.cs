using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FrmEliminarFamiliar : System.Web.UI.Page
{
    empatiagamt.Familiar part;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Page.IsPostBack == false) {
            lblIdPersona.Text = Request.QueryString["idFamiliar"].ToString();
            LlenartextBox();
        }
    }
    protected void btnEliminar_Click(object sender, EventArgs e)
    {
        part = new empatiagamt.Familiar();
        part.Idpersona = lblIdPersona.Text;
        part.Eliminar();
    }


    private void LlenartextBox()
    {
        part = new empatiagamt.Familiar();
        if (part.BuscarPersona(int.Parse(lblIdPersona.Text)))
        {
            if (part.DTable.Rows.Count != 0)
            {
                lblNombre.Text = part.DTable.Rows[0][1].ToString();
                lblAPaterno.Text = part.DTable.Rows[0][2].ToString();
                lblAPaterno.Text = part.DTable.Rows[0][3].ToString();
                lblFechaNac.Text = "" + Convert.ToDateTime(part.DTable.Rows[0][4].ToString()).ToString("yyyy-MM-dd)");
                lblEdoCivil.Text = part.DTable.Rows[0][5].ToString();
                lblEmail.Text = part.DTable.Rows[0][6].ToString();
                Image1.ImageUrl = part.DTable.Rows[0][7].ToString();
            }
        }
    }
    protected void btnCancelar_Click(object sender, EventArgs e)
    {
        Response.Redirect("");
    }
}