using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace empatiagamt
{
    public class CalcularIMC
    {
        private string fecha;

        public string Fecha
        {
            get { return fecha; }
            set { fecha = value; }
        }
        private double altura;

        public double Altura
        {
            get { return altura; }
            set { altura = value; }
        }
        private double peso;

        public double Peso
        {
            get { return peso; }
            set { peso = value; }
        }
        private string estado;

        public string Estado
        {
            get { return estado; }
            set { estado = value; }
        }

        public CalcularIMC(string f, double al, double pes)
        {
            Fecha = f; Altura = al; Peso = pes;
        }

        public double CalcularIMC2()
        {
            //IMC = peso / (altura) e2
            return peso / Math.Pow(2, Altura);
        }

        public HstorialMedico HstorialMedico
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
