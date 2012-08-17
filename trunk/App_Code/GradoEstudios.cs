using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace empatiagamt
{
    public class GradoEstudios :  ICrud
    {
        #region : get set
        private List<GradoEstudios> listaGradosEstudio;

        public List<GradoEstudios> ListaGradosEstudio
        {
            get { return listaGradosEstudio; }
            set { listaGradosEstudio = value; }
        }
        private string idGrado;

        public string IdGrado
        {
            get { return idGrado; }
            set { idGrado = value; }
        }
        private string grado;

        public string Grado
        {
            get { return grado; }
            set { grado = value; }
        }
        private string ncedula;

        public string Ncedula
        {
            get { return ncedula; }
            set { ncedula = value; }
        }
        private string fterminacion;

        public string Fterminacion
        {
            get { return fterminacion; }
            set { fterminacion = value; }
        }

        private string idInst;
        private empatiagamt.Parametros[] para;
        public string IdInst
        {
            get { return idInst; }
            set { idInst = value; }
        }

        #endregion
        
            
        public GradoEstudios(string instr, string id, string gr, string ced,string fec)
        {
            IdInst = instr; IdGrado = id; Grado = gr; Ncedula = ced; Fterminacion = fec;
        }
        public GradoEstudios()
        {

        }

        public override bool Agregar()
        {
            para = new Parametros[4];
            para[0] = new Parametros("idInstruc", IdInst);
            para[1] = new Parametros("nced", Ncedula);
            para[2] = new Parametros("fterminacion", Fterminacion);
            para[3] = new Parametros("grad", Grado);

            return EjecutarStore(para, "grado_estudiosAltas");
        }

        public override bool Eliminar()
        {
            para = new Parametros[1];
            para[0] = new Parametros("idGrado", IdGrado);
            return EjecutarStore(para, "grado_estudiosBorrar");
        }

        public override bool Modificar()
        {
            para = new Parametros[4];
            para[0] = new Parametros("nced", Ncedula);
            para[1] = new Parametros("fterminacion", Fterminacion);
            para[2] = new Parametros("grad", Grado);
            para[3] = new Parametros("idgrado", IdGrado);
            return EjecutarStore(para, "grado_estudiosModificar");
        }

        public override bool Mostrar()
        {
            para = new Parametros[1];
            para[0] = new Parametros("idInstruct", IdInst);
            if (LeerTabla("grado_estudiosConsultar", para) && DTable.Rows.Count>0) {
                GradoEstudios g;
                listaGradosEstudio = new List<GradoEstudios>(); // crear la lista nueva de grado de estudios
                for (int i = 0; i < DTable.Rows.Count; i++)
                {
                    g = new GradoEstudios();
                    g.IdGrado = DTable.Rows[i][0].ToString();
                    g.Grado = DTable.Rows[i][1].ToString();
                    g.Ncedula = DTable.Rows[i][2].ToString();
                    g.Fterminacion = Convert.ToDateTime( DTable.Rows[i][3].ToString()).ToString("yyyy-MM-dd");
                    listaGradosEstudio.Add(g); //añadir los registros a la lista
                }
                return true;
            }
            return false;
        }

        public bool BuscarGradoEstudioId()
        {
            para = new Parametros[1];
            para[0] = new Parametros("idgrad", IdGrado);
            if (LeerTabla("grado_estudiosConsultarId", para) && DTable.Rows.Count > 0)
            {
                GradoEstudios g;
                listaGradosEstudio = new List<GradoEstudios>(); // crear la lista nueva de grado de estudios
                for (int i = 0; i < DTable.Rows.Count; i++)
                {
                    g = new GradoEstudios();
                    g.IdGrado = DTable.Rows[i][0].ToString();
                    g.Grado = DTable.Rows[i][1].ToString();
                    g.Ncedula = DTable.Rows[i][2].ToString();
                    g.Fterminacion = Convert.ToDateTime(DTable.Rows[i][3].ToString()).ToString("yyyy-MM-dd");
                    listaGradosEstudio.Add(g); //añadir los registros a la lista
                }
                return true;
            }
            return false;
        }
    }
}
