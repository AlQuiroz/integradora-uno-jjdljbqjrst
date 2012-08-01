using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace empatiagamt
{
    public abstract class Persona : Conexion, ICrud
    {
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
        private string telCasa;

        public string TelCasa
        {
            get { return telCasa; }
            set { telCasa = value; }
        }
        private string celular;

        public string Celular
        {
            get { return celular; }
            set { celular = value; }
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
    
        public Persona()
        {
            
        }

        public Persona(string id, string no, string ap,string am, string f, string ecivil, string tcasa,string tcel,string mail,string rutFoto)
        {
            Idpersona = id; Nombre = no; APaterno = ap; AMaterno = am; FNac = f; EdoCivil = ecivil;
            TelCasa = tcasa; Celular = tcel; Email = mail; RutaFoto = rutFoto;
        }


        public override bool Agregar() { return false; }
        public override bool Mostrar()
        {
            throw new System.NotImplementedException();
}

        public override bool Modificar()
        {
            throw new System.NotImplementedException();
        }

        public override bool Eliminar()
        {
            throw new System.NotImplementedException();
        }
    }
}
