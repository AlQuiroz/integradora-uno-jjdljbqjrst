using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace empatiagamt
{
    public abstract class Facturas : empatiagamt.ICrud
    {
        #region : Get-Set
        private empatiagamt.Parametros[] param;
        private List<Facturas> listaFacturas;
        public List<Facturas> ListaFacturas
        {
            get { return listaFacturas; }
            set { listaFacturas = value; }
        }

        private string idFactura;

        public string IdFactura
        {
            get { return idFactura; }
            set { idFactura = value; }
        }
        private string _RazonSocial;

        public string RazonSocial
        {
            get { return _RazonSocial; }
            set { _RazonSocial = value; }
        }
        private string _RFC;

        public string RFC
        {
            get { return _RFC; }
            set { _RFC = value; }
        }
        private string _Direccion;

        public string Direccion
        {
            get { return _Direccion; }
            set { _Direccion = value; }
        }
        private string _Telefono;

        public string Telefono
        {
            get { return _Telefono; }
            set { _Telefono = value; }
        }
#endregion
        public Facturas(string id, string nom, string dir, string tel, string rfc) {
            RFC = rfc; RazonSocial = nom; Direccion = dir; Telefono = tel;
            IdFactura = id;
        }
        public Facturas() { }

        public override bool Agregar()
        {
            param = new empatiagamt.Parametros[4];
            param[0] = new Parametros("nom", RazonSocial);
            param[1] = new Parametros("p_rfc", RFC);
            param[2] = new Parametros("dir", Direccion);
            param[3] = new Parametros("tel", Telefono);

            return EjecutarStore(param,"datosfacturacionAltas");
        }

        public override bool Eliminar()
        {
            param = new empatiagamt.Parametros[1];
            param[0] = new Parametros("rfc",RFC);

            return EjecutarStore(param, "datosfacturacionBorrar");
        }

        public override bool Modificar()
        {
            param = new empatiagamt.Parametros[5];
            param[0] = new Parametros("nom", RazonSocial);
            param[1] = new Parametros("p_rfc", RFC);
            param[2] = new Parametros("dir", Direccion);
            param[3] = new Parametros("tel", Telefono);
            param[4] = new Parametros("idfact", IdFactura);
            return EjecutarStore(param, "datosfacturacionModificar");
        }

        public override bool Mostrar()
        {
            if (LeerTabla("datosFacturacionConsultar"))
            {
                return true;
            }
            else  { return false; }
        }
    }
}
