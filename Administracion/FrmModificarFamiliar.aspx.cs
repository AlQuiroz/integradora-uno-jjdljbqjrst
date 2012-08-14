using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FrmModificarFamiliar : System.Web.UI.Page
{
    private empatiagamt.Persona per;
    private List<empatiagamt.Parametros[]> listaTelefonos;
    public ArrayList ListadoFamiliares = new ArrayList();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            lblIdPersona.Text = Request.QueryString["idParticipante"];
            lblFamiliar.Text = Request.QueryString["idFamiliar"];
            LlenartextBox();
            llenartelefonos();
        }
    }
    #region :telefonos

    protected void btnAgregarTel_Click(object sender, EventArgs e)
    {
        listBoxTelefonos.Items.Add("" + txtTipoTelefono.Text + "/" + "" + txtNumeroTel.Text);
    }
    protected void btnModificarTel_Click(object sender, EventArgs e)
    {
        listBoxTelefonos.Items.RemoveAt(listBoxTelefonos.SelectedIndex);
        listBoxTelefonos.Items.Add("" + txtTipoTelefono.Text + "/" + "" + txtNumeroTel.Text);
    }
    protected void btnQuitarTel_Click(object sender, EventArgs e)
    {
        listBoxTelefonos.Items.RemoveAt(listBoxTelefonos.SelectedIndex);
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
        empatiagamt.Telefonos tel = new empatiagamt.Telefonos(lblFamiliar.Text);
        if (tel.Mostrar())
        {
            for (int i = 0; i < tel.DTable.Rows.Count; i++)
            {
                listBoxTelefonos.Items.Add(tel.DTable.Rows[i][2].ToString().Trim() + "/" + tel.DTable.Rows[i][3].ToString().Trim());
            }
        }
    }

    #endregion

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        crearListaTelefonos();
        per = new empatiagamt.Familiar(lblFamiliar.Text, txtNopmbre.Text, txtApellidoPat.Text, txtApellidoMat.Text, txtfecha.Text, edocivil.Value, listaTelefonos, txtEmail.Text, FileUpload2.FileName, slcParentezco.Value, txtEmpresa.Text, txtPuesto.Text, lblIdPersona.Text);
        if (per.Modificar())
            Response.Redirect("~/Administracion/FrmFamiliares.aspx");

    }
    protected void btnCancelar_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Administracion/FrmFamiliares.aspx");
    }

    private void LlenartextBox()
    {
        per = new empatiagamt.Familiar();
        if (per.BuscarPersona(int.Parse(lblIdPersona.Text)))
        {
            if (per.DTable.Rows.Count != 0)
            {
                txtNopmbre.Text = per.DTable.Rows[0][1].ToString();
                txtApellidoPat.Text = per.DTable.Rows[0][2].ToString();
                txtApellidoMat.Text = per.DTable.Rows[0][3].ToString();
                txtfecha.Text = "" + Convert.ToDateTime(per.DTable.Rows[0][4].ToString()).ToString("yyyy-MM-dd)");
                edocivil.Value= per.DTable.Rows[0][5].ToString();
                txtEmail.Text = per.DTable.Rows[0][6].ToString();
                Image1.ImageUrl = per.DTable.Rows[0][7].ToString();
            }
        }
    }

}