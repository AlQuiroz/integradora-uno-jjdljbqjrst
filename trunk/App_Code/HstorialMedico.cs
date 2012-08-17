using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace empatiagamt
{
    public class HstorialMedico : ICrud
    {
         #region variables de clases y encapsulamiento
        private string idIMC;//idImc que se necesita para poder borrar un registro en la tabla datosimc
        public string IdIMC
        {
            get { return idIMC; }
            set { idIMC = value; }
        }
        private string idParticipante; //id del participante con el que se está trabajando
        public string IdParticipante
        {
            get { return idParticipante; }
            set { idParticipante = value; }
        }
        private string idHistorial;//codigo del historial generado para el estudiante
        public string IdHistorial
        {
            get { return idHistorial; }
            set { idHistorial = value; }
        }
        private string institucion;//nombre de la institucion
        public string Institucion
        {
            get { return institucion; }
            set { institucion = value; }
        }
        private string tratamiento;
        public string Tratamiento
        {
            get { return tratamiento; }
            set { tratamiento = value; }
        }
        private double altura;
        public double Altura
        {
            get { return altura; }
            set { altura = value; }
        }
        private double peso;
        public double Peso
        {
            get { return peso; }
            set { peso = value; }
        }
        #endregion

        Parametros[] param;

        /// <summary>
        /// cosntructor que modifica solo los datos de tabla historial medico
        /// </summary>
        /// <param name="instit"></param>
        /// <param name="tratam"></param>
        public HstorialMedico(string historial, string instit, string tratam)
        {
            Institucion = instit; Tratamiento = tratam;
            Tratamiento = tratam;
            IdHistorial = historial;
        }

        /// <summary>
        /// Se usa para almacenar registrosen la tabla datosimc
        /// </summary>
        /// <param name="historial">Id de historial asignado al estudiante</param>
        /// <param name="alt">altura en metros</param>
        /// <param name="p">peso en kilogramos</param>
        public HstorialMedico(string historial, double alt, double p)
        {
            Altura = alt; Peso = p;
            IdHistorial = historial;
        }
        public HstorialMedico() { }
        /// <summary>
        /// Metodo que modifica unicamente los datos de institucion y tratamiento.
        /// </summary>
        /// <returns></returns>
        public override bool Modificar() {
            param = new Parametros[3];
            param[0] = new Parametros("p_idhistorial", IdHistorial);
            param[1] = new Parametros("p_institucion", Institucion);
            param[2] = new Parametros("p_tratamiento", Tratamiento);
            return EjecutarStore(param, "HistorialMedicoModificar");
        }

        /// <summary>
        /// Hace una insercion en la tabla datosimc
        /// </summary>
        /// <returns></returns>
        public override bool Agregar() {
            param = new Parametros[4];
            param[0] = new Parametros("idHistorialMedico", IdHistorial);
            param[1] = new Parametros("fecha", DateTime.Now.ToString("yyyy-MM-dd"));
            param[2] = new Parametros("altura", "" + Altura);
            param[3] = new Parametros("peso", "" + Peso);

            return EjecutarStore(param, "datosIMCAltas");
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public override bool Eliminar()
        {
            param = new Parametros[1];
            param[0] = new Parametros("p_idImc", IdIMC);
            return EjecutarStore(param, "DatosIMCBorrar");
        }

        /// <summary>
        /// Requiere el id del participante para poder hacer la conuslta
        /// por lo que deberá de asignarle un valor a IdParticipante desde la llamada al método
        /// </summary>
        /// <returns></returns>
        public override bool Mostrar()
        {
            param = new Parametros[1];
            param[0] = new Parametros("id_Participante", IdParticipante);
            return LeerTabla("DatosImcConsultar", param);
        }

        public bool Mostrar(string _idParticipante) {
            param = new Parametros[1];
            param[0] = new Parametros("id_Participante", _idParticipante);
            return LeerTabla("datosIMCxMesConsultar", param);
        }
    }
}
