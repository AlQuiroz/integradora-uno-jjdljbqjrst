using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FrmModificarProfesores : System.Web.UI.Page
{

    private empatiagamt.Instructor per;
    private List<empatiagamt.Parametros[]> listaTelefonos = new List<empatiagamt.Parametros[]>();
    public ArrayList ListadoParticipantes = new ArrayList();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false) {
            if (Request.QueryString["idInstructor"] != null)
            {
                lblIdInstructor.Text = Request.QueryString["idInstructor"].ToString();
            }
            llenartelefonos();
            LlenarText();
        }
        
        
    }
    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        crearListaTelefonos();
        per = new empatiagamt.Instructor(lblIdInstructor.Text, txtNopmbre.Text, txtApellidoPat.Text, txtApellidoMat.Text, txtfecha.Text, edocivil.Value, listaTelefonos, txtEmail.Text, fUploadFoto.FileName);
        if(per.Modificar())
            Response.Redirect("Profesores.aspx");

    }
    protected void btnTerminar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Profesores.aspx");

    }
    protected void btnCargar_Click(object sender, EventArgs e)
    {

    }

    #region: Manejo de teléfonos

    protected void btnAgregarTel_Click(object sender, EventArgs e)
    {
        listBoxTelefonos.Items.Add("" + txtTipoTelefono.Text.ToUpper() + "/" + "" + txtNumeroTel.Text);
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
        listBoxTelefonos.Items.Add("" + txtTipoTelefono.Text.ToUpper() + "/" + "" + txtNumeroTel.Text);
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
        listaTelefonos.Clear(); 
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
        empatiagamt.Telefonos tel = new empatiagamt.Telefonos(lblIdInstructor.Text);
        if (tel.Mostrar())
        {
            for (int i = 0; i < tel.DTable.Rows.Count; i++)
            {
                listBoxTelefonos.Items.Add(tel.DTable.Rows[i][2].ToString().Trim() + "/" + tel.DTable.Rows[i][3].ToString().Trim());
            }
        }
    }


    #endregion

    public void LlenarText() {
        per = new empatiagamt.Instructor();
        per.Idpersona = lblIdInstructor.Text;
        per.BuscarInstructor();
        txtNopmbre.Text = per.DTable.Rows[0][1].ToString();
        txtApellidoPat.Text = per.DTable.Rows[0][2].ToString();
        txtApellidoMat.Text = per.DTable.Rows[0][3].ToString();
        txtfecha.Text = Convert.ToDateTime(per.DTable.Rows[0][4].ToString()).ToString("yyyy-MM-dd");
        edocivil.Value = per.DTable.Rows[0][5].ToString();
        txtEmail.Text = per.DTable.Rows[0][6].ToString();
        Image1.ImageUrl = per.DTable.Rows[0][7].ToString();
    }

}