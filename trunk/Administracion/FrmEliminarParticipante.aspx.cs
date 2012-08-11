using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FrmEliminarParticipante : System.Web.UI.Page
{
    empatiagamt.Participante part;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Page.IsPostBack == false)
        {
            LlenartextBox();
        }
    }

    private void LlenartextBox()
    {

        part = new empatiagamt.Participante();
        string id = Request.QueryString["idParticipante"].ToString();
        lblIdPersona.Text = id;
        if (part.BuscarPersona(int.Parse(id)))
        {

            lblNombre.Text = part.DTable.Rows[0][1].ToString();
            lblAPaterno.Text = part.DTable.Rows[0][2].ToString();
            lblAPaterno.Text = part.DTable.Rows[0][3].ToString();
            lblFnac.Text = "" + Convert.ToDateTime(part.DTable.Rows[0][4].ToString()).ToString("yyyy-MM-dd)");
            lblEdoCivil.Text = part.DTable.Rows[0][5].ToString();
            lblEmail.Text = part.DTable.Rows[0][6].ToString();
            Image1.ImageUrl = part.DTable.Rows[0][7].ToString();
        }
    }
    protected void btnEliminar_Click(object sender, EventArgs e)
    {
        part = new empatiagamt.Participante();
        part.Idpersona = lblIdPersona.Text;
        if (part.Eliminar())
            Response.Redirect("Participantes.aspx");

    }
    protected void btnCancelar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Participantes.aspx");
    }
}