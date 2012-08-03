using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace empatiagamt
{
    public class Parametros
    {
        private string valor;
        public string Valor
        {
            get { return valor; }
            set { valor = value; }
        }
        private string nombreParametro;
        public string NombreParametro
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
