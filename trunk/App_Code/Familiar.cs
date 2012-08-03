using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace empatiagamt
{
    class Familiar : Persona, ICrud
    {
        private int idfam;

        public int Idfam
        {
            get { return idfam; }
            set { idfam = value; }
        }
        private int lugarTrabajo;

        public int LugarTrabajo
        {
            get { return lugarTrabajo; }
            set { lugarTrabajo = value; }
        }
        private int puesto;

        public int Puesto
        {
            get { return puesto; }
            set { puesto = value; }
        }
    
        public Familiar()
        {
            throw new System.NotImplementedException();
        }

        public Familiar(string idpersona, string no, string ap, string am, string fnac, string ecivil, string telcasa, string cel, string email, string rutafoto)
            : base(idpersona, no, ap, am, fnac, ecivil, telcasa, cel, email, rutafoto)
        {
            throw new System.NotImplementedException();
        }

        bool ICrud.Agregar()
        {
            throw new NotImplementedException();
        }

        bool ICrud.Eliminar()
        {
            throw new NotImplementedException();
        }

        bool ICrud.Modificar()
        {
            throw new NotImplementedException();
        }

        bool ICrud.Mostrar()
        {
            throw new NotImplementedException();
        }
    }
}
