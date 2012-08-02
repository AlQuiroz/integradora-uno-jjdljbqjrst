using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace empatiagamt
{
    public class HstorialMedico : Conexion, ICrud
    {
        private int institucion;

        public int Institucion
        {
            get { return institucion; }
            set { institucion = value; }
        }
        private int tratamiento;

        public int Tratamiento
        {
            get { return tratamiento; }
            set { tratamiento = value; }
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
