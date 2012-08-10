using System;
using System.Collections.Generic;
using System.Data;
using System.Text;

namespace empatiagamt
{
    public abstract class Persona : ICrud
    {
        Parametros[] param;
        private string idpersona;
        public string Idpersona
        {
            get { return idpersona; }
            set { idpersona = value; }
        }
        private string nombre;
        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }
        private string aPaterno;
        public string APaterno
        {
            get { return aPaterno; }
            set { aPaterno = value; }
        }
        private string aMaterno;
        public string AMaterno
        {
            get { return aMaterno; }
            set { aMaterno = value; }
        }
        private string fNac;
        public string FNac
        {
            get { return fNac; }
            set { fNac = value; }
        }
        private string edoCivil;
        public string EdoCivil
        {
            get { return edoCivil; }
            set { edoCivil = value; }
        }
        private string email;
        public string Email
        {
            get { return email; }
            set { email = value; }
        }
        private string rutaFoto;
        public string RutaFoto
        {
            get { return rutaFoto; }
            set { rutaFoto = value; }
        }
        private List<Parametros[]> tele = new List<Parametros[]>();
        private List<Parametros[]> Tele
        {
            get { return tele; }
            set { tele = value; }
        }

        public Persona()
        {

        }

        public Persona(string id, string no, string ap, string am, string f, string ecivil, List<Parametros[]> tels, string mail, string rutFoto)
        {
            Idpersona = id; Nombre = no; APaterno = ap; AMaterno = am; FNac = f; EdoCivil = ecivil;
            Email = mail; RutaFoto = rutFoto; Tele = tels;
        }

        public override bool Agregar()
        {
            try
            {
                param = new Parametros[7];
                param[0] = new Parametros("nom", Nombre);
                param[1] = new Parametros("apat", APaterno);
                param[2] = new Parametros("amat", AMaterno);
                param[3] = new Parametros("fna", FNac);
                param[4] = new Parametros("civil", EdoCivil);
                param[5] = new Parametros("email", Email);
                param[6] = new Parametros("ruta", RutaFoto);


                if (EjecutarStore(param, "PersonaAltas"))
                {
                    Telefonos tel = new Telefonos(Tele, this.ultimaPersona());//obtiene el ultimo id de la persona agregada
                    return tel.Agregar();// guarda la lista de telefonos en la base de datos
                }
            }
            catch { return false; }
            return false;
        }

        public override bool Eliminar()
        {
            try
            {
                param = new Parametros[1];
                param[0] = new Parametros("p_idpersona", Idpersona);
                if (EjecutarStore(param, "PersonaBajas"))
                {
                    Telefonos t = new Telefonos(Idpersona);
                    return t.Eliminar();
                }
            }
            catch { return false; }
            return false;
        }

        public override bool Modificar()
        {
            try
            {
                param = new Parametros[8];
                param[0] = new Parametros("p_nombre", Nombre);
                param[1] = new Parametros("p_apaterno", APaterno);
                param[2] = new Parametros("p_amaterno", AMaterno);
                param[3] = new Parametros("p_fnac", FNac);
                param[4] = new Parametros("p_edocivil", EdoCivil);
                param[5] = new Parametros("p_email", Email);
                param[6] = new Parametros("p_rutafoto", RutaFoto);
                param[7] = new Parametros("p_idpersona", Idpersona);

                Telefonos tel = new Telefonos(Tele, Idpersona);

                if (tel.Modificar())
                {
                    return EjecutarStore(param, "PersonaModificar"); //modifica los datos de la persona
                }
            }
            catch { return false; }
            return false;
        }

        public override bool Mostrar()
        {
            return LeerTabla("PersonaConsultar");
        }

        public string ultimaPersona()
        {
            //utlimaPersona
            string result = "";
            if (LeerTabla("PersonaUltima"))
                result = DTable.Rows[0][0].ToString();
            if (result.Length > 0)
            {
                return result;
            }
            else { return ""; }
        }

        public virtual bool BuscarPersona(string valor) { return false; }
        public virtual bool Agregar(string p) { return false; }
        public virtual bool QuitarFamiliar(string idFam) { return false; }
    }
}