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
            cnn = new MySqlConnection("Server= localhost; Uid=root; pwd=123;database=empatiagamt");
        }

        private bool Abrir()
        {
            try
            {
                if (cnn.State == System.Data.ConnectionState.Closed)
                {
                    cnn.Open();
                }
                return true;
            }
            catch (Exception ex)
            {
                error = ex.Message;
                return false;
            }
        }

        private bool Cerrar()
        {
            try
            {
                if (cnn.State == System.Data.ConnectionState.Open)
                {
                    cnn.Close();
                }
                return true;
            }
            catch { return false; }
        }

        public bool EjecutarStore(Parametros[] parametros, String store)
        {
            try
            {
                this.Abrir();
                cmd = new MySqlCommand();
                cmd.Connection = cnn;
                cmd.CommandText = store;
                cmd.CommandType = CommandType.StoredProcedure;

                for (int i = 0; i < parametros.Length; i++)
                {
                    cmd.Parameters.Add(parametros[i].NombreParametro, parametros[i].Valor);
                }

                cmd.ExecuteNonQuery();
                this.Cerrar();
                return true;
            }
            catch (Exception ex)
            {
                error = ex.Message;
                return false;
            }
        }

        public bool LeerTabla(string procedure)
        {
            dTable = new DataTable();
            try
            {
                this.Abrir();
                cmd = new MySqlCommand();
                cmd.Connection = cnn;
                cmd.CommandText = procedure;
                cmd.CommandType = CommandType.StoredProcedure;
                da = new MySqlDataAdapter(cmd);
                da.Fill(dTable);
                this.Cerrar();
                return true;
            }
            catch (Exception ex)
            {
                error = ex.Message;
                return false;
            }
        }

        public bool LeerTabla(string procedure, Parametros[] campos)
        {
            dTable = new DataTable();
            try
            {
                this.Abrir();
                cmd = new MySqlCommand();
                cmd.Connection = cnn;
                cmd.CommandText = procedure;
                cmd.CommandType = CommandType.StoredProcedure;
                for (int i = 0; i < campos.Length; i++)
                {
                    cmd.Parameters.Add(campos[i].NombreParametro, campos[i].Valor);
                }
                da = new MySqlDataAdapter(cmd);
                da.Fill(dTable);
                this.Cerrar();
                return true;
            }
            catch (Exception ex)
            {
                error = ex.Message;
                return false;
            }
        }
    }
}
