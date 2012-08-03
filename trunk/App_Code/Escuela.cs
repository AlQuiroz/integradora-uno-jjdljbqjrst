using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace empatiagamt
{
    class Escuela :  ICrud
    {
        private string nombreEscuela;

        public string NombreEscuela
        {
            get { return nombreEscuela; }
            set { nombreEscuela = value; }
        }
        private string direccion;

        public string Direccion
        {
            get { return direccion; }
            set { direccion = value; }
        }
        private string telefono;

        public string Telefono
        {
            get { return telefono; }
            set { telefono = value; }
        }
        private string nombreMaestra;

        public string NombreMaestra
        {
            get { return nombreMaestra; }
            set { nombreMaestra = value; }
        }
        private double promedio;

        public double Promedio
        {
            get { return promedio; }
            set { promedio = value; }
        }
        private string fecha;

        public string Fecha
        {
            get { return fecha; }
            set { fecha = value; }
        }
    
        public Escuela()
        {
            throw new System.NotImplementedException();
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
    }
}
