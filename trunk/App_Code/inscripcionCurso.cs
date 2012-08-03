using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace empatiagamt
{
    public class inscripcionCurso : Conexion, ICrud
    {
        private int finicio;

        public int Finicio
        {
            get { return finicio; }
            set { finicio = value; }
        }
        private int fFin;

        public int FFin
        {
            get { return fFin; }
            set { fFin = value; }
        }
        private int comentario;

        public int Comentario
        {
            get { return comentario; }
            set { comentario = value; }
        }

        internal Participante Participante
        {
            get
            {
                throw new System.NotImplementedException();
            }
            set
            {
            }
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
