using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Text;

namespace empatiagamt
{
    public class inscripcionCurso: ICrud
    {
        #region
        private Parametros[] param;
        private List<inscripcionCurso> listaInscripciones;

        public List<inscripcionCurso> ListaInscripciones
        {
            get { return listaInscripciones; }
            set { listaInscripciones = value; }
        }

        private string idInscripcion;

        public string IdInscripcion
        {
            get { return idInscripcion; }
            set { idInscripcion = value; }
        }

        private string _idParticipante;

        public string IdParticipante
        {
            get { return _idParticipante; }
            set { _idParticipante = value; }
        }
        private string _idInstructor;

        public string IdInstructor
        {
            get { return _idInstructor; }
            set { _idInstructor = value; }
        }
        private string _idServicios;

        public string IdServicios
        {
            get { return _idServicios; }
            set { _idServicios = value; }
        }
        private string _finicio;

        public string Finicio
        {
            get { return _finicio; }
            set { _finicio = value; }
        }
        private string _fFin;

        public string FFin
        {
            get { return _fFin; }
            set { _fFin = value; }
        }
        private string _comentarios;

        public string Comentarios
        {
            get { return _comentarios; }
            set { _comentarios = value; }
        }
        #endregion


        public inscripcionCurso() { }
        public inscripcionCurso(string idinscrip,string idins, string idser,string part,string fini, string ffin,string com)
        {
            idInscripcion = idinscrip; _idServicios = idser; _idParticipante = part; _finicio = fini; _fFin = ffin; _comentarios = com;
            _idInstructor = idins;
        }

        public override bool Agregar()
        {
            param = new Parametros[5];
            param[0] = new Parametros("idPart", IdParticipante);
            param[1] = new Parametros("idserv", IdServicios);
            param[2] = new Parametros("idInstruc", IdInstructor);
            param[3] = new Parametros("fechIni", Finicio);
            param[4] = new Parametros("fechFin", FFin);
            return EjecutarStore(param, "inscripcionAltas");
        }

        public override bool Eliminar()
        {
            param = new Parametros[1];
            param[0] = new Parametros("idInscrip", IdInscripcion);
            return EjecutarStore(param, "inscripcionBajas");
        }

        public override bool Modificar()
        {
            param = new Parametros[8];
            param[0] = new Parametros("idPart", IdParticipante);
            param[1] = new Parametros("idserv", IdServicios);
            param[2] = new Parametros("idInstr", IdInstructor);
            param[3] = new Parametros("fInicio", Finicio);
            param[4] = new Parametros("fFin", FFin);
            param[5] = new Parametros("idInscrip", IdInscripcion);
            param[6] = new Parametros("coment", Comentarios);
            param[7] = new Parametros("insCol", "");
            return EjecutarStore(param, "inscripcionModificar");
        }

        public override bool Mostrar()
        {
            if ( LeerTabla("inscripcionConsultar") )
            {
                if ( DTable.Rows.Count > 0 )
                {
                    inscripcionCurso i;
                    listaInscripciones = new List<inscripcionCurso>();
                    for ( int x = 0; x < DTable.Rows.Count; x++ )
                    {
                        i = new inscripcionCurso();
                        i.IdInscripcion = DTable.Rows[x][0].ToString();
                        i.IdParticipante = DTable.Rows[x][1].ToString();
                        i.IdServicios = DTable.Rows[x][2].ToString();
                        i.IdInstructor = DTable.Rows[x][3].ToString();
                        i.FFin = Convert.ToDateTime(DTable.Rows[x][4].ToString()).ToString("yyyy-MM-dd");
                        i.Finicio = Convert.ToDateTime(DTable.Rows[x][5].ToString()).ToString("yyyy-MM-dd");
                        i.Comentarios = DTable.Rows[x][6].ToString();
                        //i.IdInscripcion = DTable.Rows[x][7].ToString();
                        listaInscripciones.Add(i);
                    }
                    return true;
                }
            }
            return false;
        }
    }
}
