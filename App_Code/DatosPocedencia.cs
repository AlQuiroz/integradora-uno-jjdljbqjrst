using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DatosPocedencia
/// </summary>
/// 
namespace empatiagamt
{
    public class DatosPocedencia : empatiagamt.ICrud
    {
        #region : get-set
        private List<DatosPocedencia> listaDatosProcedencia;

        public List<DatosPocedencia> ListaDatosProcedencia
        {
            get { return listaDatosProcedencia; }
            set { listaDatosProcedencia = value; }
        }
        private string fecha;

        public string Fecha
        {
            get { return fecha; }
            set { fecha = value; }
        }
        private string idDatosProcedencia;

        public string IdDatosProcedencia
        {
            get { return idDatosProcedencia; }
            set { idDatosProcedencia = value; }
        }
        private string idPart;

        public string IdPart
        {
            get { return idPart; }
            set { idPart = value; }
        }
        private string idEsc;

        public string IdEsc
        {
            get { return idEsc; }
            set { idEsc = value; }
        }
        private string profesor;


        public string Profesor
        {
            get { return profesor; }
            set { profesor = value; }
        }
        private string promedio;

        public string Promedio
        {
            get { return promedio; }
            set { promedio = value; }
        }
        #endregion

        empatiagamt.Parametros []param;

        public DatosPocedencia(string id, string idpar, string idesc, string prof, string prom,string fech)
        {
            IdDatosProcedencia = id; IdPart = idpar; IdEsc = idesc; Profesor = prof; Promedio = prom; Fecha = fech;
        }

        public DatosPocedencia() { }

        //Funciona
        public override bool Agregar()
        {
            param = new empatiagamt.Parametros[5];
            param[0] = new Parametros("idEsc", IdEsc);
            param[1] = new Parametros("idPart", IdPart);
            param[2] = new Parametros("nMaestra", Profesor);
            param[3] = new Parametros("prom", Promedio);
            param[4] = new Parametros("fech", DateTime.Now.ToString("yyyy-MM-dd"));

            return EjecutarStore(param, "DatosProcedenciaAltas");
        }

        public override bool Eliminar()
        {
            param = new empatiagamt.Parametros[1];
            param[0] = new Parametros("idDatProce", IdDatosProcedencia);
            return EjecutarStore(param, "datosProcedenciaBorrar");
        }

        public override bool Modificar()
        {
            param = new empatiagamt.Parametros[6];
            param[0] = new Parametros("idEsc", IdEsc);
            param[1] = new Parametros("idPart", IdPart);
            param[2] = new Parametros("nMaestra", Profesor);
            param[3] = new Parametros("prom", Promedio);
            param[4] = new Parametros("fech", DateTime.Now.ToString("yyyy-MM-dd"));
            param[5] = new Parametros("idDatProce", IdDatosProcedencia);
            return EjecutarStore(param, "datosProcedenciaModificar");
        }

        public override bool Mostrar()
        {
            param = new empatiagamt.Parametros[1];
            param[0] = new Parametros("idPart", IdPart);
            if (LeerTabla("datosProcedenciaConsultar", param))
            {
                DatosPocedencia dp;
                listaDatosProcedencia= new List<DatosPocedencia>();
                for (int i = 0; i < DTable.Rows.Count; i++) {
                    dp = new DatosPocedencia();
                    dp.IdDatosProcedencia = DTable.Rows[i][0].ToString();
                    dp.IdEsc = DTable.Rows[i][1].ToString();
                    dp.IdPart = DTable.Rows[i][2].ToString();
                    dp.Profesor = DTable.Rows[i][3].ToString();
                    dp.Promedio = DTable.Rows[i][4].ToString();
                    dp.Fecha = Convert.ToDateTime(DTable.Rows[i][5].ToString()).ToString("yyyy-MM-dd"); ;
                    listaDatosProcedencia.Add(dp);
                }
                return true;
            }
            return false;
        }

        public bool BuscarDatoPorId() {
            param = new empatiagamt.Parametros[1];
            param[0] = new Parametros("Id", IdDatosProcedencia);
            if (LeerTabla("datosProcedenciaConsultarId", param))
            {
                DatosPocedencia dp;
                listaDatosProcedencia = new List<DatosPocedencia>();
                for (int i = 0; i < DTable.Rows.Count; i++)
                {
                    dp = new DatosPocedencia();
                    dp.IdDatosProcedencia = DTable.Rows[i][0].ToString();
                    dp.IdEsc = DTable.Rows[i][1].ToString();
                    dp.IdPart = DTable.Rows[i][2].ToString();
                    dp.Profesor = DTable.Rows[i][3].ToString();
                    dp.Promedio = DTable.Rows[i][4].ToString();
                    dp.Fecha = DTable.Rows[i][5].ToString();
                    listaDatosProcedencia.Add(dp);
                }
                return true;
            }
            return false;
        }
    }
}