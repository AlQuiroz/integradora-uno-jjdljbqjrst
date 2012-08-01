using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace empatiagamt
{
    public interface ICrud
    {
        bool Agregar();

        bool Eliminar();

        bool Modificar();

        bool Mostrar();
    }
}
