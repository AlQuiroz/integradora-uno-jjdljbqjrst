using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FrmCursos : System.Web.UI.Page
{

    public empatiagamt.Cursos cur;
    public List<empatiagamt.Cursos> lCursos = new List<empatiagamt.Cursos>();
    protected void Page_Load(object sender, EventArgs e)
    {
        VerTabla();
    }
    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        cur = new empatiagamt.Cursos("", txtTipo.Text, txtNombre.Text, txtObjetivo.Text, txtCompetencia.Text, txtDuracion.Text);
        if (cur.Agregar())
            VerTabla();
    }

    public void VerTabla() {
        cur = new empatiagamt.Cursos();
        cur.Mostrar();
        lCursos = cur.ListaCursos;
    }
}