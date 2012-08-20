using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;


namespace empatiagamt
{
    /// <summary>
    /// Descripción breve de Constancias
    /// </summary>

    public class Constancias : Conexion
    {
        #region
        Parametros[] para;

        private List<Constancias> listaConstancias;

        public List<Constancias> ListaConstancias
        {
            get { return listaConstancias; }
            set { listaConstancias = value; }
        }

        private string _nombre;

        public string Nombre
        {
            get { return _nombre; }
            set { _nombre = value; }
        }
        private int _id;

        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }
        #endregion

        public Constancias( int id)
        {
            Id = id;
        }
        public Constancias(string nom)
        {
            Nombre = nom;
        }

        private string _idPersona, _nombreCompleto, _curso, _duracion;

        public string Duracion
        {
            get { return _duracion; }
            set { _duracion = value; }
        }

        public string Curso
        {
            get { return _curso; }
            set { _curso = value; }
        }

        public string NombreCompleto
        {
            get { return _nombreCompleto; }
            set { _nombreCompleto = value; }
        }

        public string IdPersona
        {
            get { return _idPersona; }
            set { _idPersona = value; }
        }

        private Constancias() { }
        //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


        public bool ConstanciaIntructorNombre()
        {
            para = new Parametros[1];
            para[0] = new Parametros("valor", Nombre);

            if (LeerTabla("instructorConstanciasNombre", para))
            {
                LlenarLista();
                return true;
            }
            else { return false; }
        }

        public bool ConstanciaInstructorId()
        {
            para = new Parametros[1];
            para[0] = new Parametros("id", "" + Id);
            if (LeerTabla("instructorConstanciaId", para))
            {
                LlenarLista();
                return true;
            }
            else { return false; }
        }

        public bool ConstanciaParticipanteNombre()
        {
            para = new Parametros[1];
            para[0] = new Parametros("valor", Nombre);
            if (LeerTabla("", para))
            {
                LlenarLista();
                return true;
            }
            else { return false; }
            
        }
        public bool ConstanciaParticipanteID()
        {
            para = new Parametros[1];
            para[0] = new Parametros("id", "" + Id);
            if (LeerTabla("participanteConstanciasId", para)) 
            {
                LlenarLista();
                return true;
            }
            else { return false; }
        }

        private void LlenarLista() {
            if (DTable.Rows.Count != 0)
            {
                Constancias c;
                listaConstancias = new List<Constancias>();
                for (int i = 0; i < DTable.Rows.Count; i++)
                {
                    c = new Constancias();
                    c.IdPersona = DTable.Rows[i][0].ToString();
                    c.NombreCompleto = DTable.Rows[i][1].ToString();
                    c.Curso = DTable.Rows[i][2].ToString();
                    c.Duracion = DTable.Rows[i][3].ToString();
                    listaConstancias.Add(c);
                }
            }
        }//fin metodo llenado

    }
}