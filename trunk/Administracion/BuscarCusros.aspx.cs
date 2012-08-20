using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using empatiagamt;

public partial class Administracion_BuscarCusros : System.Web.UI.Page
{
    public Cursos cur;
    protected void Page_Load(object sender, EventArgs e)
    {
        cur = new Cursos(); cur.Mostrar();
    }
}