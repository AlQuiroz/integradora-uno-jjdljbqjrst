using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace empatiagamt
{
    public abstract class ICrud : Conexion
    {
        public abstract bool Agregar();

        public abstract bool Eliminar();

        public abstract bool Modificar();

        public abstract bool Mostrar();
    }
}
