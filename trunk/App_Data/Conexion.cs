using System;
using System.Data;
using System.Collections.Generic;
using MySql.Data.MySqlClient;
using System.Text;

namespace empatiagamt
{
    public class Conexion
    {
        private string cad;
        private MySqlConnection cnn;
        private MySqlCommand cmd;
        private MySqlDataAdapter da;
        private string error;

        public string Error
        {
            get { return error; }
            set { error = value; }
        }
        private DataTable dTable;

        public DataTable DTable
        {
            get { return dTable; }
            set { dTable = value; }
        }
    
        public Conexion()
        {
            cad = "";
        }

        public bool Abrir()
        {
            throw new System.NotImplementedException();
        }

        public bool Cerrar()
        {
            throw new System.NotImplementedException();
        }

        public bool EjecutarStore(Parametros[] parametros, String store)
        {
            throw new System.NotImplementedException();
        }

        public bool ConsultarStore()
        {
            throw new System.NotImplementedException();
        }

        
    }
}
