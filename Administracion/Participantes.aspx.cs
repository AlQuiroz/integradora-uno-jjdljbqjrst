﻿using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Participantes : System.Web.UI.Page
{
    private empatiagamt.Persona per;
    private List<empatiagamt.Parametros[]>listaTelefonos;
    public ArrayList ListadoParticipantes = new ArrayList();


    protected void Page_Load(object sender, EventArgs e)
    {

        mostrarListadoParticipante();
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
        listaTelefonos = new List<empatiagamt.Parametros[]>();
        empatiagamt.Parametros[] telefono;
        for (int i = 0; i < listBoxTelefonos.Items.Count; i++)
        {
            string[] datos = listBoxTelefonos.Items[i].ToString().Split('/');
            telefono = new empatiagamt.Parametros[3];
            telefono[0] = new empatiagamt.Parametros("tipo", datos[0].ToString());
            telefono[1] = new empatiagamt.Parametros("numero" , datos[1].ToString());
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

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        per = new empatiagamt.Participante("", txtNopmbre.Text.ToUpper(), txtApellidoPat.Text.ToUpper(), txtApellidoMat.Text.ToUpper(), txtfecha.Text, edocivil.Value.ToUpper(), crearListaTelefonos(), txtEmail.Text, fUploadFoto.FileName.ToString());
        if (per.Agregar())
        {
            mostrarListadoParticipante();
            BorrarCampos();
        }

    }


    private void mostrarListadoParticipante() {
        per = new empatiagamt.Participante();
        per.Mostrar(); // debe regresar un arrayList de personas.
        empatiagamt.Participante part;
        ListadoParticipantes.Clear();
        for (int i = 0; i < per.DTable.Rows.Count; i++)
        {
            part = new empatiagamt.Participante();
            part.Idpersona = per.DTable.Rows[i][0].ToString();
            part.Nombre = per.DTable.Rows[i][1].ToString();
            part.APaterno = per.DTable.Rows[i][2].ToString();
            part.AMaterno = per.DTable.Rows[i][3].ToString();
            part.FNac = "" + Convert.ToDateTime(per.DTable.Rows[i][4].ToString()).ToString("yyyy-MM-dd");
            part.EdoCivil = per.DTable.Rows[i][5].ToString();
            part.Email = per.DTable.Rows[i][6].ToString();
            part.RutaFoto = per.DTable.Rows[i][7].ToString();
            part.IdHistorial = per.DTable.Rows[i][8].ToString();
            ListadoParticipantes.Add(part);
        }
    }


    protected void btnCargar_Click(object sender, EventArgs e)
    {
        try {

            Session["foto"] = fUploadFoto.FileName;

            if (fUploadFoto.HasFile) {

                fUploadFoto.SaveAs(MapPath("~/Styles/FotosParticipantes/prueba.png"));
            }
            
            
        }
        catch { }
    }

    public void BorrarCampos()
    {

        txtApellidoMat.Text = ""; txtNopmbre.Text = ""; txtApellidoPat.Text = "";
        txtEmail.Text = "";  txtfecha.Text = "";
        txtNumeroTel.Text = "";  txtTipoTelefono.Text = "";
        listBoxTelefonos.Items.Clear();
    }
}