using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administracion_constancia_FormatoConstancia : System.Web.UI.Page
{
    public string nombre;
    public string curso;
    public string duracion;
    public string NombreDelMes;

    protected void Page_Load(object sender, EventArgs e)
    {
        nombreMes();
        if (Request.QueryString["nombre"] != null)
        {
            nombre = Request.QueryString["nombre"].ToString().ToLower();
        }
        if (Request.QueryString["curso"] != null)
        {
            curso = Request.QueryString["curso"].ToString().ToLower();
        }
        if (Request.QueryString["duracion"] != null)
        {
            duracion = Request.QueryString["duracion"].ToString().ToLower();
        }
        else { 
            
        }
    }

    private void nombreMes() {
        int m = DateTime.Now.Month;
        switch (m) { 
            case 1:NombreDelMes = "Enero";break;
            case 2: NombreDelMes = "Febrero"; break;
            case 3: NombreDelMes = "Marzo"; break;
            case 4: NombreDelMes = "Abril"; break;
            case 5: NombreDelMes = "Mayo"; break;
            case 6: NombreDelMes = "Junio"; break;
            case 7: NombreDelMes = "Julio"; break;
            case 8: NombreDelMes = "Agosto"; break;
            case 9: NombreDelMes = "septiembre"; break;
            case 10: NombreDelMes = "Octubre"; break;
            case 11: NombreDelMes = "Noviembre"; break;
            case 12: NombreDelMes = "Diciembre"; break;
        }
    }



}