using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace empatiagamt
{
    public class Escuela :  ICrud
    {
        private List<Escuela> _ListEscuela;
        public List<Escuela> ListEscuela
        {
            get { return _ListEscuela; }
        }
        private int idescuela;
        public int Idescuela
        {
            get { return idescuela; }
            set { idescuela = value; }
        }
        private string nombreEscuela;
        public string NombreEscuela
        {
            get { return nombreEscuela; }
            set { nombreEscuela = value; }
        }
        private string direccion;
        public string Direccion
        {
            get { return direccion; }
            set { direccion = value; }
        }
        private string telefono;
        public string Telefono
        {
            get { return telefono; }
            set { telefono = value; }
        }
        private string nombreMaestra;
        public string NombreMaestra
        {
            get { return nombreMaestra; }
            set { nombreMaestra = value; }
        }
        private double promedio;
        public double Promedio
        {
            get { return promedio; }
            set { promedio = value; }
        }
        private string fecha;
        public string Fecha
        {
            get { return fecha; }
            set { fecha = value; }
        }
    
        public Escuela(int id, string nom, string dire, string tele)
        {
            Idescuela = id;
            NombreEscuela = nom;
            Direccion = dire;
            Telefono = tele;
        }

        public Escuela(string nom, string dire, string tele)
        {
            NombreEscuela = nom;
            Direccion = dire;
            Telefono = tele;
        }

        public Escuela()
        {

        }

        public override bool Agregar()
        {
            Parametros[] param = new Parametros[3];
            param[0] = new Parametros("_nom", NombreEscuela);
            param[1] = new Parametros("_dir", Direccion);
            param[2] = new Parametros("_tel", Telefono);

            if (!EjecutarStore(param, "escuelaAltas"))
            {
                return false;
            } return true;
        }

        public override bool Eliminar()
        {
            Parametros[] param = new Parametros[1];
            param[0] = new Parametros("_id", Idescuela.ToString());

            if (!EjecutarStore(param, "escuelabaja"))
            {
                return false;
            } return true;
        }

        public override bool Modificar()
        {
            Parametros[] param = new Parametros[4];
            param[0] = new Parametros("_id", Idescuela.ToString());
            param[1] = new Parametros("_nom", NombreEscuela);
            param[2] = new Parametros("_dir", Direccion);
            param[3] = new Parametros("_tel", Telefono);

            if (!EjecutarStore(param, "escuelaModificar"))
            {
                return false;
            } return true;
        }

        public override bool Mostrar()
        {
            if (LeerTabla("escuelasmostrar"))
            {
                _ListEscuela = new List<Escuela>();
                for (int i = 0; i < DTable.Rows.Count; i++)
                {
                    DataRow row = DTable.Rows[i];
                    ListEscuela.Add(new Escuela(Convert.ToInt32(row[0]), row[1].ToString(), row[2].ToString(), row[3].ToString()));
                }
                return true;
            } return false;
        }
    }
}
