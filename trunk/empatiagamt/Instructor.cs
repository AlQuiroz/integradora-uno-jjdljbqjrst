using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace empatiagamt
{
    public class Instructor : Persona, ICrud
    {
        private Curriculum curriculum;
    
        public Instructor()
        {
            throw new System.NotImplementedException();
        }

        public Instructor(string idpersona,string no, string ap, string am, string fnac, string ecivil, string telcasa, string cel, string email, string rutafoto) :base(idpersona,no,ap,am,fnac,ecivil,telcasa,cel,email,rutafoto)
        {
            throw new System.NotImplementedException();
        }

        public override bool Mostrar()
        {
            throw new NotImplementedException();
        }

        public override bool Agregar()
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
