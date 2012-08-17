using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Text;

namespace empatiagamt
{
    public class Cursos : ICrud
    {
        #region
        empatiagamt.Parametros[] para;
        List<Cursos> listaCursos;

        public List<Cursos> ListaCursos
        {
            get { return listaCursos; }
            set { listaCursos = value; }
        }
        private string claveServicio;

        public string ClaveServicio
        {
            get { return claveServicio; }
            set { claveServicio = value; }
        }
        private string tipo, nombre, objetivo, competencia, semanas;

        public string Semanas
        {
            get { return semanas; }
            set { semanas = value; }
        }

        public string Competencia
        {
            get { return competencia; }
            set { competencia = value; }
        }

        public string Objetivo
        {
            get { return objetivo; }
            set { objetivo = value; }
        }

        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        public string Tipo
        {
            get { return tipo; }
            set { tipo = value; }
        }
        




        #endregion

        public Cursos(string id,string tip, string nom, string obj, string com,string sem) {
            ClaveServicio = id; Tipo = tip; Nombre = nom; Objetivo = obj; Competencia = com; Semanas = sem;
        }

        public Cursos() { }

        public override bool Agregar()
        {
            para=new Parametros[5];
            para[0] = new Parametros("tipo", Tipo);
            para[1] = new Parametros("nom", Nombre);
            para[2] = new Parametros("obj", Objetivo);
            para[3] = new Parametros("comp", Competencia);
            para[4] = new Parametros("duracion", Semanas);

            return EjecutarStore(para, "catalogoServiciosAltas");
        }

        public override bool Eliminar()
        {
            para = new Parametros[1];
            para[0] = new Parametros("idCatalogoServ", ClaveServicio);
            return EjecutarStore(para, "catalogoServiciosBorrar");
        }

        public override bool Modificar()
        {
            para = new Parametros[6];
            para[0] = new Parametros("idCatalogo", ClaveServicio);
            para[1] = new Parametros("tipo", tipo);
            para[2] = new Parametros("nom", Nombre);
            para[3] = new Parametros("obj", Objetivo);
            para[4] = new Parametros("comp", Competencia);
            para[5] = new Parametros("duracion", Semanas);
            return EjecutarStore(para, "catalogoServiciosModificar");
        }

        public override bool Mostrar()
        {
            LeerTabla("catalogoServiciosConsulta");
            if (DTable.Rows.Count > 0) {
                Cursos c;
                listaCursos = new List<Cursos>();
                for (int i = 0; i < DTable.Rows.Count; i++){
                    c = new Cursos();
                    c.ClaveServicio = DTable.Rows[i][0].ToString();
                    c.Tipo = DTable.Rows[i][1].ToString();
                    c.Nombre = DTable.Rows[i][2].ToString();
                    c.Objetivo = DTable.Rows[i][3].ToString();
                    c.Competencia = DTable.Rows[i][4].ToString();
                    c.Semanas = DTable.Rows[i][5].ToString();
                    listaCursos.Add(c);
                }
                return true;
            }
            return false;
        }


        /// <summary>
        /// busca un servicio o curso por medio de su id
        /// </summary>
        /// <returns></returns>
        public bool BuscarUnCurso() {
            para = new Parametros[1];
            para[0] = new Parametros("id", ClaveServicio);
            LeerTabla("catalogoServicioID",para);
            if (DTable.Rows.Count == 1)
            {
                return true;
            }
            return false;
        }

    }
}
