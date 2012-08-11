using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FrmDatosMedicos : System.Web.UI.Page
{
    private empatiagamt.HstorialMedico histMedico; //para modificar el tratamiento medico y la insitucion
    private empatiagamt.HstorialMedico imc; //para guardar datos imc
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            lblFecha.Text = DateTime.Now.ToString("yyyy-MM-dd");
            lblIdParticipante.Text = Request.QueryString["idParticipante"];
            lblIdHistorial.Text = Request.QueryString["idHistorial"];
            LlenarForm();
        }
    }
    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        histMedico = new empatiagamt.HstorialMedico( lblIdHistorial.Text, txtInstitcion.Text, txtTratamiento.Text);
        imc = new empatiagamt.HstorialMedico(lblIdHistorial.Text, Convert.ToDouble(txtTalla.Text), Convert.ToDouble(txtPeso.Text));
        histMedico.Modificar();
        if(txtPeso.Text!="" &&txtTalla.Text!="")
            imc.Agregar();
        
        LlenarForm();
    }
    protected void btnEliminar_Click(object sender, EventArgs e)
    {
        imc = new empatiagamt.HstorialMedico();
        imc.IdIMC = "1"; //id del registro seleccionado de la tabla de detalles
        imc.Eliminar(); //elimina un solo registro de la tabla
    }
    protected void btnTerminar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Participantes.aspx");
    }

    private void LlenarForm() {
        imc = new empatiagamt.HstorialMedico();
        imc.IdParticipante = lblIdParticipante.Text;
        if (imc.Mostrar())
        {
            //llena el detalle
            if (imc.DTable.Rows.Count != 0)
            {
                gridDetalle.DataSource = imc.DTable;
                gridDetalle.DataBind();
                txtInstitcion.Text = imc.DTable.Rows[0][1].ToString();
                txtTratamiento.Text = imc.DTable.Rows[0][2].ToString();
            }
        }

        //para mostrar reporte mensual
        imc = new empatiagamt.HstorialMedico();
        imc.Mostrar(lblIdParticipante.Text);
        gridMes.DataSource = imc.DTable;
        gridMes.DataBind();
    }
}