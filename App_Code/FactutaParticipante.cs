using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de FactutaParticipante
/// </summary>
/// 
namespace empatiagamt
{
    public class FactutaParticipante : empatiagamt.Facturas
    {
        private string idpart;

        public string Idpart
        {
            get { return idpart; }
            set { idpart = value; }
        }
        empatiagamt.Parametros[] para;
        public FactutaParticipante(string  idpart){
            Idpart = idpart;
        }

        public FactutaParticipante(string id, string nom, string rfc, string dir, string tel, string idpar)
            : base(id, nom, dir, tel, rfc) {
                Idpart = idpar;
        }

        public override bool Agregar()
        {
            if (base.Agregar())
            {
                para = new empatiagamt.Parametros[2];
                para[0] = new Parametros("idpart", Idpart);
                para[1] = new Parametros("idDatosFac", Idpart);

                return EjecutarStore(para, "facturacionparticipanteAltas");

            }
            else return false;
        }

        public override bool Eliminar()
        {
            if (base.Eliminar())
            {

                return true;
            }
            else return false;
        }


        public override bool Modificar()
        {
            if (base.Modificar())
            {
                return true;
            }
            else return false;
        }

        public override bool Mostrar()
        {
            para = new Parametros[1];
            para[0] = new Parametros("idpart", Idpart);
            if (LeerTabla("facturacionparticipanteId", para))
            {
                Facturas f;
                ListaFacturas = new List<Facturas>();
                for (int i = 0; i < DTable.Rows.Count; i++)
                {
                    f = new empatiagamt.FactutaParticipante(Idpart);
                    f.IdFactura = DTable.Rows[i][0].ToString();
                    f.RazonSocial = DTable.Rows[i][1].ToString();
                    f.RFC = DTable.Rows[i][2].ToString();
                    f.Direccion = DTable.Rows[i][3].ToString();
                    f.Telefono = DTable.Rows[i][4].ToString();
                    //f.IdFactura = DTable.Rows[i][5].ToString();
                    ListaFacturas.Add(f); //llena una lista de facturas...
                }
                return true;
            }
            else
                return false;
        }

        /// <summary>
        /// busca una factura por su id 
        /// </summary>
        /// <returns></returns>
        public override bool BuscarPorID()
        {
            List<Facturas> lista = new List<Facturas>();
            para = new Parametros[1];
            para[0] = new Parametros("idFact", IdFactura);
            if (LeerTabla("datosFacturacionConsultarId", para))
            {
                if (DTable.Rows.Count == 1)
                {
                    empatiagamt.Facturas f;
                    for (int i = 0; i < DTable.Rows.Count; i++)
                    {
                        f = new empatiagamt.FactutaParticipante(Idpart);
                        f.IdFactura = DTable.Rows[i][0].ToString();
                        f.RazonSocial = DTable.Rows[i][1].ToString();
                        f.RFC = DTable.Rows[i][2].ToString();
                        f.Direccion = DTable.Rows[i][3].ToString();
                        f.Telefono = DTable.Rows[i][4].ToString();
                        lista.Add(f);
                    }
                    ListaFacturas = lista;
                    return true;
                }
                return false;
            }
            return false;
        }

    }

}