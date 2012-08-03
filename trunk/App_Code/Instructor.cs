using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace empatiagamt
{
    public class Instructor : Persona
    {
        private Curriculum curriculum;
    
        public Instructor()
        {
            
        }

        public Instructor(string idpersona,string no, string ap, string am, string fnac, string ecivil,List<Parametros[]> tels, string email, string rutafoto) :base(idpersona,no,ap,am,fnac,ecivil,tels,email,rutafoto)
        {
            throw new System.NotImplementedException();
        }

        public bool Agregar()
        {
            throw new NotImplementedException();
        }

        public bool Eliminar()
        {
            throw new NotImplementedException();
        }

        public bool Modificar()
        {
            throw new NotImplementedException();
        }

        public bool Mostrar()
        {
            throw new NotImplementedException();
        }
    }
}
