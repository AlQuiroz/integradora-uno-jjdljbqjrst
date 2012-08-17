using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using empatiagamt;

public partial class Escuelas : System.Web.UI.Page
{
    Escuela escu;
    int elemento;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["idDatos"] != null)
        {
            lblIdDatos.Text = Request.QueryString["idDatos"].ToString();
        }
        if (Request.QueryString["Frm"] != null)
        {
            lblFrm.Text = Request.QueryString["Frm"].ToString();
        }
        
        
        if (Request.QueryString["Accion"] == "Eliminar") 
        {
            if (Request.QueryString["Elemento"] != null)
            {
                elemento = Convert.ToInt32(Request.QueryString["Elemento"]);
                escu = new Escuela(elemento);
                escu.Eliminar();
                Response.Redirect("FormularioEscuelas.aspx?Frm=" + lblFrm.Text + "&idDatos=" + lblIdDatos.Text);
            }
        }
        else if (Request.QueryString["Accion"] == "Modificar")
        {
            if (Request.QueryString["Elemento"] != null)
            {
                elemento = Convert.ToInt32(Request.QueryString["Elemento"]);
                btnGuardar.Visible = false;
                btnModificar.Visible = true;
                llenarTexboxces(elemento);
            }
        }
        else 
        {

        }
    }

    private void llenarTexboxces(int id) 
    {
        escu = new Escuela(id);
        if (escu.MostrarEscuela()) 
        {
            txtid.Value= escu.ObjEscuela.Idescuela.ToString();
            txtnom.Text = escu.ObjEscuela.NombreEscuela;
            txtdire.Text = escu.ObjEscuela.Direccion;
            txttele.Text = escu.ObjEscuela.Telefono;
        }
        
    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        try
        {
            escu = new Escuela(txtnom.Text.ToString(), txtdire.Text.ToString(), txttele.Text.ToString());
            if (escu.Agregar())
                Response.Redirect("FormularioEscuelas.aspx?Frm=" + lblFrm.Text + "&idDatos=" + lblIdDatos.Text);
        }
        catch 
        {

        }
    }
    protected void btnModificar_Click(object sender, EventArgs e)
    {
        try
        {
            escu = new Escuela(int.Parse(txtid.Value.ToString()), txtnom.Text.ToString(), txtdire.Text.ToString(), txttele.Text.ToString());
            if(escu.Modificar())
                Response.Redirect("FormularioEscuelas.aspx?Frm=" + lblFrm.Text + "&idDatos=" + lblIdDatos.Text);
        }
        catch
        {

        }
    }
    protected void txtretur_Click(object sender, EventArgs e)
    {
        Response.Redirect("FormularioEscuelas.aspx?Frm=" + lblFrm.Text + "&idDatos=" + lblIdDatos.Text);
    }
}