using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace empatiagamt
{
    public class Familiar : Persona
    {
        private string parentezco;
        public string Parentezco
        {
            get { return parentezco; }
            set { parentezco = value; }
        }
        private string empresa;
        public string Empresa
        {
            get { return empresa; }
            set { empresa = value; }
        }
        private string puesto;
        public string Puesto
        {
            get { return puesto; }
            set { puesto = value; }
        }
        private string claveParticipante;
        public string ClaveParticipante
        {
            get { return claveParticipante; }
            set { claveParticipante = value; }
        }
        private Parametros[] param;

        public Familiar(string id, string no, string ap, string am, string f, string ecivil, List<Parametros[]> tels, string mail, string rutFoto, string par, string emp, string pues, string clavePar)
            : base(id, no, ap, am, f, ecivil, tels, mail, rutFoto)
        {
            Parentezco = par;
            Empresa = emp;
            Puesto = pues;
            ClaveParticipante = clavePar;
        }


        public Familiar()
        {

        }

        public override bool Agregar()
        {
            param = new Parametros[5];
            param[0] = new Parametros("clavePart", ClaveParticipante);
            param[1] = new Parametros("empresa", Empresa);
            param[2] = new Parametros("puesto", Puesto);
            param[3] = new Parametros("paren", Parentezco);
            param[4] = new Parametros("", "");

            if (base.Agregar())
            {
                param[4] = new Parametros("idPersona", ultimaPersona());
                return EjecutarStore(param, "FamiliarAltas");
            }
            return false;
        }
        /// <summary>
        /// metodo de agregar que debe ser llamado únicamente desde el form FrmParticipante
        /// ASIGNA EL FAMILIAR SELECCIONADO AL PARTICIPANTE SELECCIONADO...
        /// </summary>
        /// <param name="idPart">clave del partcipante</param>
        /// <returns></returns>
        public override bool Agregar(string idPart)
        {
            param = new Parametros[2];
            param[0] = new Parametros("p_idPersona", Idpersona);
            param[1] = new Parametros("p_clavePart", idPart);
            return EjecutarStore(param, "FamiliarAsignar");
        }
        public override bool Eliminar()
        {
            param = new Parametros[1];
            param[0] = new Parametros("p_idfamiliar", Idpersona);
            if (EjecutarStore(param, "Familiarbajas"))
                return base.Eliminar();
            return false;
        }
        public override bool Modificar()
        {
            param = new Parametros[4];
            param[0] = new Parametros("p_idPersona", Idpersona);
            param[1] = new Parametros("p_empresa", Empresa);
            param[2] = new Parametros("p_puesto", Puesto);
            param[3] = new Parametros("p_paren", Parentezco);

            if (base.Modificar())
            {
                return EjecutarStore(param, "FamiliarModificar");
            }
            return false;
        }
        public override bool Mostrar()
        {
            return LeerTabla("FamiliarConsultar");
        }
        /// <summary>
        /// retorna los familiares del participante seleccionado, segun la clave del participante
        /// </summary>
        /// <param name="valor">Clave del participante</param>
        /// <returns></returns>
        public override bool BuscarPersona(string valor)
        {
            param = new Parametros[1];
            //param[0] = new Parametros("p_idparticipante", valor);
            param[0] = new Parametros("valor", valor);
            return LeerTabla("FamiliarBusqueda", param);
            //return LeerTabla("SBuscarFamiliaresParticipantes", param);
        }

        public override bool BuscarPersona(int valor)
        {
            param = new Parametros[1];
            //param[0] = new Parametros("p_idparticipante", valor);
            param[0] = new Parametros("valor", ""+valor);
            return LeerTabla("FamiliarBusquedaId", param);
        }

        public bool FamiliarDeParticipante()
        {
            param = new Parametros[1];
            param[0] = new Parametros("p_idparticipante", Idpersona);
            return LeerTabla("FamiliaresParticipantesBuscar", param);
        }
        public override bool QuitarFamiliar(string idfam)
        {
            param = new Parametros[2];
            param[0] = new Parametros("p_idFamiliar", idfam);
            param[1] = new Parametros("p_idParticipante", Idpersona);
            return EjecutarStore(param, "FamiliarQuitar");
        }
    }
}
