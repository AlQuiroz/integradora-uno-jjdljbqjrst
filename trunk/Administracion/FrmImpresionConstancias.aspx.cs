using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using empatiagamt;


public partial class FrmImpresionConstancias : System.Web.UI.Page
{
    public List<Constancias> lista = new List<Constancias>();
    public string tipo;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Page.IsPostBack==false){
            if (Request.QueryString["idInstructor"] != null)
            {
                lblIdInstructor.Text = Request.QueryString["idInstructor"].ToString();
                Constancias con = new Constancias(int.Parse(lblIdInstructor.Text));
                con.ConstanciaInstructorId();
                lista = con.ListaConstancias;//llenar la lista local para ser usado a en la interfaz gráfica.
                tipo = "constancia/FormatoConstancia.aspx";
            }
            else if (Request.QueryString["idParticipante"] != null) 
            {
                lblIdInstructor.Text = Request.QueryString["idParticipante"].ToString();
                Constancias con = new Constancias(int.Parse(lblIdInstructor.Text));
                con.ConstanciaParticipanteID();
                lista = con.ListaConstancias;//llenar la lista local para ser usado a en la interfaz gráfica.
                tipo = "constancia/FormatoConstanciaParticipante.aspx";
            }
        }
    }
}