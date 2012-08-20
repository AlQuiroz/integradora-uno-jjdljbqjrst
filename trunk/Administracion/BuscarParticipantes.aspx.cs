using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using empatiagamt;
public partial class Administracion_BuscarParticipantes : System.Web.UI.Page
{
    Participante per;
    public List<Participante> ListadoParticipantes = new List<Participante>();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            mostrarListadoParticipante();
        }
    }

    private void mostrarListadoParticipante()
    {
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

}