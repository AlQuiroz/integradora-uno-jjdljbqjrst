using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace empatiagamt
{
    public class Parametros
    {
        private int valor;

        public int Valor
        {
            get { return valor; }
            set { valor = value; }
        }
        private int nombreParametro;

        public int NombreParametro
        {
            get { return nombreParametro; }
            set { nombreParametro = value; }
        }

        public Parametros(string nom, string val)
        {
            Valor = val;
            NombreParametro = nom;
        }
    }
}
