using System.Collections.Generic;

namespace empatiagamt
{
    public class Telefonos : ICrud
    {
        private List<Parametros[]> listaArreglosParametros;
        private List<Parametros[]> ListaArreglosParametros
        {
            get { return listaArreglosParametros; }
            set { listaArreglosParametros = value; }
        }
        private Parametros[] para;
        private string idPersona;
        public string IdPersona
        {
            get { return idPersona; }
            set { idPersona = value; }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="param_listaTelefonos">List tipo parametros[]</param>
        /// <param name="idPersona">id persona</param>
        public Telefonos(List<Parametros[]> param_listaTelefonos, string idP)
        {
            ListaArreglosParametros = param_listaTelefonos;
            IdPersona = idP;
        }

        public Telefonos(string idper)
        {
            IdPersona = idper;
        }

        public override bool Agregar()
        {
            try
            {
                for (int i = 0; i < ListaArreglosParametros.Count; i++)
                {
                    para = ListaArreglosParametros[i];//representa los datos de un telefono
                    para[2] = new Parametros("idpersona", IdPersona);
                    EjecutarStore(para, "TelefonosAltas");
                }
            }
            catch
            { return false; }
            return true;
        }

        public override bool Eliminar()
        {
            para = new Parametros[1];
            para[0] = new Parametros("p_idpersona", IdPersona);
            return EjecutarStore(para, "TelefonosBorrar");
        }

        public override bool Modificar()
        {
            //se eliminan los telefonos de la persona y despues se agregan nuevamente
            if (this.Eliminar()) //elimina los telefonos de la persona
                return this.Agregar();//agrega la nueva lista telefonica de la persona...
            return false;
        }

        /// <summary>
        /// se ejecuta solamente al intentar hacer modificaciones en la tabla persona o sus derivados
        /// </summary>
        /// <returns></returns>
        public override bool Mostrar()
        {
            para = new Parametros[1];
            para[0] = new Parametros("p_idPersona", IdPersona);
            return LeerTabla("TelefonosConsultar", para);
        }
    }
}