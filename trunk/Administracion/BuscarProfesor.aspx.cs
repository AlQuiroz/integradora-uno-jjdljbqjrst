using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using empatiagamt;

public partial class Administracion_BuscarProfesor : System.Web.UI.Page
{
    Instructor ins;

    public List<Instructor> ListadoInstructor = new List<Instructor>();
    protected void Page_Load(object sender, EventArgs e)
    {
        LlenarTabla();
    }

    public void LlenarTabla()
    {
        ins = new empatiagamt.Instructor();
        ins.Mostrar();
        ListadoInstructor = ins.ListaInstructor;
    }
}