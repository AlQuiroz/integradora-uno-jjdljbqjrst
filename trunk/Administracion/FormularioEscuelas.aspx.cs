using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using empatiagamt;


public partial class FormularioEscuelas : System.Web.UI.Page
{
    public List<Escuela> Le;

    protected void Page_Load(object sender, EventArgs e)
    {
        Le = new List<Escuela>();
        Escuela esc = new empatiagamt.Escuela();
        if (esc.Mostrar()) 
        {
            Le = esc.ListEscuela;
        }

        if (Page.IsPostBack==false) {
            if (Request.QueryString["Frm"] != null) { lblFrmOrigen.Text = Request.QueryString["Frm"].ToString(); }
            if (Request.QueryString["idDatos"] != null) { lblIdDatos.Text = Request.QueryString["idDatos"].ToString(); }
        }

    }
    protected void btnnueva_Click(object sender, EventArgs e)
    {
        Response.Redirect("AgregarEscuelas.aspx?Frm=" + lblFrmOrigen.Text+"&idDatos="+lblIdDatos.Text); //envío idparticipante
    }
}