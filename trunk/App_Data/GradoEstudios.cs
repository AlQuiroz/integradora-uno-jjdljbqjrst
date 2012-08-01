using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace empatiagamt
{
    public class GradoEstudios : Conexion, ICrud
    {
        private string grado;

        public string Grado
        {
            get { return grado; }
            set { grado = value; }
        }
        private string ncedula;

        public string Ncedula
        {
            get { return ncedula; }
            set { ncedula = value; }
        }
        private string fterminacion;

        public string Fterminacion
        {
            get { return fterminacion; }
            set { fterminacion = value; }
        }
    
        public GradoEstudios()
        {
            
        }

        public GradoEstudios(string idpersona)
        {
            throw new System.NotImplementedException();
        }

        public override bool Agregar()
        {
            throw new NotImplementedException();
        }

        public override bool Eliminar()
        {
            throw new NotImplementedException();
        }

        public override bool Modificar()
        {
            throw new NotImplementedException();
        }

        public override bool Mostrar()
        {
            throw new NotImplementedException();
        }

        public Instructor Instructor
        {
            get
            {
                throw new System.NotImplementedException();
            }
            set
            {
            }
        }
    }
}
