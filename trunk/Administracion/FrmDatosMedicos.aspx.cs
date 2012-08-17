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
        //la institucion y el tratamiento siempre se modifica
        histMedico = new empatiagamt.HstorialMedico(lblIdHistorial.Text, txtInstitcion.Text, txtTratamiento.Text);
        
        histMedico.Modificar();

        if (validarNumeroDecimal(txtPeso.Text))
        {
            if (validarNumeroDecimal(txtTalla.Text))
            {
                //si los campos de peso y talla tienen datos, tonces se crea un objeto que reciba esa información
                imc = new empatiagamt.HstorialMedico(lblIdHistorial.Text, Convert.ToDouble(txtTalla.Text), Convert.ToDouble(txtPeso.Text));
                imc.Agregar();   
            }
        }
        LlenarForm();
    }
    protected void btnEliminar_Click(object sender, EventArgs e)
    {
        //imc = new empatiagamt.HstorialMedico();
        //imc.IdIMC = "1"; //id del registro seleccionado de la tabla de detalles
        //imc.Eliminar(); //elimina un solo registro de la tabla
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

    private bool validarNumeroDecimal(string numero) {
        int contPuntos = 0;
        if (numero.Length > 0)
        {
            for (int i = 0; i < numero.Length; i++)
            {

                if (char.IsNumber(numero[i])) { }
                else
                {
                    if (numero[i] == '.')
                    {
                        contPuntos++;
                    }
                    else { return false; }
                    if (contPuntos > 1) return false;
                }
            }
            return true;
        }
        return false;
    }
}