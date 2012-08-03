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
