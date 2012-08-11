using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FrmModificarParticipante : System.Web.UI.Page
{
    private empatiagamt.Persona part;
    private List<empatiagamt.Parametros[]> listaTelefonos;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack==false)
        {
            LlenartextBox();
            llenartelefonos();
        }
    }

    private List<empatiagamt.Parametros[]> crearListaTelefonos()
    {
        listaTelefonos = new List<empatiagamt.Parametros[]>();
        empatiagamt.Parametros[] telefono;
        for (int i = 0; i < listBoxTelefonos.Items.Count; i++)
        {
            string[] datos = listBoxTelefonos.Items[i].ToString().Split('~');
            telefono = new empatiagamt.Parametros[3];
            telefono[0] = new empatiagamt.Parametros("tipo", datos[0].ToString());
            telefono[1] = new empatiagamt.Parametros("numero", datos[1].ToString());
            telefono[2] = new empatiagamt.Parametros("idpersona", "");// se asignará en el Telefono.Agregar();
            listaTelefonos.Add(telefono);
        }
        return listaTelefonos;
    }

    protected void btnAgregarTel_Click(object sender, EventArgs e)
    {
        listBoxTelefonos.Items.Add("" + txtTipoTelefono.Text + "~" + "" + txtNumeroTel.Text);
    }
    protected void btnModificarTel_Click(object sender, EventArgs e)
    {
        listBoxTelefonos.Items.RemoveAt(listBoxTelefonos.SelectedIndex);
        listBoxTelefonos.Items.Add("" + txtTipoTelefono.Text + "~" + "" + txtNumeroTel.Text);
    }
    protected void btnQuitarTel_Click(object sender, EventArgs e)
    {
        listBoxTelefonos.Items.RemoveAt(listBoxTelefonos.SelectedIndex);
    }
    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        crearListaTelefonos(); //crear lista de telefonos 
        part = new empatiagamt.Participante(lblIdPersona.Text, txtNopmbre.Text, txtApellidoPat.Text, txtApellidoMat.Text, txtfecha.Text, edocivil.Value, listaTelefonos, txtEmail.Text, FileUpload2.FileName);

        if(part.Modificar())
            Response.Redirect("~/Administracion/Participantes.aspx");
    }
    protected void listBoxTelefonos_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    private void LlenartextBox() {
        
        part = new empatiagamt.Participante();
        string id = Request.QueryString["idParticipante"].ToString();
        lblIdPersona.Text = id;
        if (part.BuscarPersona(int.Parse(id))) {

            txtNopmbre.Text = part.DTable.Rows[0][1].ToString();
            txtApellidoPat.Text = part.DTable.Rows[0][2].ToString();
            txtApellidoMat.Text = part.DTable.Rows[0][3].ToString();
            txtfecha.Text = ""+ Convert.ToDateTime( part.DTable.Rows[0][4].ToString()).ToString("yyyy-MM-dd)");
            edocivil.Value = part.DTable.Rows[0][5].ToString();
            txtEmail.Text = part.DTable.Rows[0][6].ToString();
            Image1.ImageUrl = part.DTable.Rows[0][7].ToString();
        }      
    }

    private void llenartelefonos()
    {

        empatiagamt.Telefonos tel = new empatiagamt.Telefonos(lblIdPersona.Text);
        if (tel.Mostrar())
        {
            for (int i = 0; i < tel.DTable.Rows.Count; i++)
            {
                listBoxTelefonos.Items.Add(tel.DTable.Rows[i][2].ToString().Trim() + "~" + tel.DTable.Rows[i][3].ToString().Trim());
            }
        }
    }
}