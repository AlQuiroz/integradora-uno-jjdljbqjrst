using System.Collections.Generic;

namespace empatiagamt
{
    public class Participante : Persona
    {

        private Parametros[] param;
        public Participante(string id, string no, string ap, string am, string f, string ecivil, List<Parametros[]> tels, string mail, string rutFoto)
            : base(id, no, ap, am, f, ecivil, tels, mail, rutFoto)
        { }

        public Participante() { }

        public override bool Agregar()
        {
            param = new Parametros[1];
            param[0] = new Parametros("idparticipante", "0");
            if (base.Agregar())
            {
                return EjecutarStore(param, "ParticipanteAltas");
            }
            return false;
        }

        public override bool Eliminar()
        {
            param = new Parametros[1];
            param[0] = new Parametros("pidparticipante", "" + Idpersona);
            if (EjecutarStore(param, "ParticipanteBajas"))
                return base.Eliminar();
            return false;
        }

        public override bool Modificar()
        {
            return base.Modificar();
        }

        public override bool Mostrar()
        {
            return LeerTabla("ParticipanteConsultar");
        }

        public override bool BuscarPersona(string valor)
        {
            param = new Parametros[1];
            param[0] = new Parametros("valor", valor);
            return LeerTabla("ParticpanteBusqueda", param);
        }
    }
}