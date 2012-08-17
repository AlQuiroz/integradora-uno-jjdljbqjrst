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
    public class FactutaInstructor : empatiagamt.Facturas
    {
        private string idpart;

        public string Idpart
        {
            get { return idpart; }
            set { idpart = value; }
        }
        empatiagamt.Parametros[] para;
        public FactutaInstructor(string  idpart){
            Idpart = idpart;
        }

        public FactutaInstructor(string id, string nom, string rfc, string dir, string tel, string idpar)
            : base(id, nom, dir, tel, rfc) {
                Idpart = idpar;
        }

        public override bool Agregar()
        {
            if (base.Agregar())
            {
                para = new empatiagamt.Parametros[1];
                para[0] = new Parametros("idinstructor", Idpart);

                return EjecutarStore(para, "facturacioninstructorAltas");

            }
            else return false;
        }

        public override bool Eliminar()
        {
            para = new Parametros[1];
            para[0] = new Parametros("idFactura", IdFactura);

            if (EjecutarStore(para, "facturacioninstructorBorrar")) //se elimina la tabla generada por la relacion * * entre facturas y participante
            {
                return base.Eliminar();
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
            para[0] = new Parametros("idInst", Idpart);
            if (LeerTabla("facturacionInstructorId", para))
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