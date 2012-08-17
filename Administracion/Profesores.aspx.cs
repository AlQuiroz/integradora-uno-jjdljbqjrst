using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Profesores : System.Web.UI.Page
{
    public empatiagamt.Instructor ins;
    private List<empatiagamt.Parametros[]> listaTelefonos;
    public List<empatiagamt.Instructor> ListadoInstructor = new List<empatiagamt.Instructor>();
    protected void Page_Load(object sender, EventArgs e)
    {
        LlenarTabla();
    }
    
    protected void btnCargar_Click(object sender, EventArgs e)
    {
        LlenarTabla();
    }

    public void LlenarTabla() {
        ins = new empatiagamt.Instructor();
        ins.Mostrar();
        ListadoInstructor = ins.ListaInstructor;
    }
    #region: Manejo de teléfonos

    protected void btnAgregarTel_Click(object sender, EventArgs e)
    {
        listBoxTelefonos.Items.Add(txtTipoTelefono.Text.ToUpper() + "/" + "" + txtNumeroTel.Text);
    }

    protected void btnQuitarTel_Click(object sender, EventArgs e)
    {
        try
        {
            listBoxTelefonos.Items.RemoveAt(listBoxTelefonos.SelectedIndex);
        }
        catch { }
    }
    protected void btnModificarTel_Click(object sender, EventArgs e)
    {
        listBoxTelefonos.Items.RemoveAt(listBoxTelefonos.SelectedIndex);
        listBoxTelefonos.Items.Add(txtTipoTelefono.Text.ToUpper() + "/" + "" + txtNumeroTel.Text);
    }

    protected void listBoxTelefonos_SelectedIndexChanged(object sender, EventArgs e)
    {
        //LlenarcamposTelefonos();
        string[] tel = listBoxTelefonos.Items[listBoxTelefonos.SelectedIndex].Value.ToString().Split('/');
        txtTipoTelefono.Text = tel[0];
        txtNumeroTel.Text = tel[1];
    }

    private List<empatiagamt.Parametros[]> crearListaTelefonos()
    {
        listaTelefonos = new List<empatiagamt.Parametros[]>();
        empatiagamt.Parametros[] telefono;
        for (int i = 0; i < listBoxTelefonos.Items.Count; i++)
        {
            string[] datos = listBoxTelefonos.Items[i].ToString().Split('/');
            telefono = new empatiagamt.Parametros[3];
            telefono[0] = new empatiagamt.Parametros("tipo", datos[0].ToString());
            telefono[1] = new empatiagamt.Parametros("numero", datos[1].ToString());
            telefono[2] = new empatiagamt.Parametros("idpersona", "");// se asignará en el Telefono.Agregar();
            listaTelefonos.Add(telefono);
        }
        return listaTelefonos;
    }

    /// <summary>
    /// consulta y llena el listbox con los telefonos del participante seleccionado
    /// </summary>
    private void llenartelefonos()
    {
        empatiagamt.Telefonos tel = new empatiagamt.Telefonos(txtNopmbre.Text);
        if (tel.Mostrar())
        {
            for (int i = 0; i < tel.DTable.Rows.Count; i++)
            {
                listBoxTelefonos.Items.Add(tel.DTable.Rows[i][2].ToString().Trim() + "" + tel.DTable.Rows[i][3].ToString().Trim());
            }
        }
    }
    #endregion
    protected void btnTerminar_Click(object sender, EventArgs e)
    {

    }
    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        this.crearListaTelefonos();
        ins = new empatiagamt.Instructor("", txtNopmbre.Text, txtApellidoPat.Text, txtApellidoMat.Text, txtfecha.Text, edocivil.Value, listaTelefonos, txtEmail.Text, fUploadFoto.FileName);
        ins.Agregar();
        LlenarTabla();
        
    }
}