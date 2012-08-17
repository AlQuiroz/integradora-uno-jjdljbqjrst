using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace empatiagamt
{
    public class Instructor : Persona
    {
        List<empatiagamt.Instructor> listaInstructor;

        public List<empatiagamt.Instructor> ListaInstructor
        {
            get { return listaInstructor; }
            set { listaInstructor = value; }
        }

        private string rutaCurriculum;
        public string RutaCurriculum
        {
            get { return rutaCurriculum; }
            set { rutaCurriculum = value; }
        }
        private Parametros[] param;
    
        public Instructor()
        {
            
        }

        public Instructor(string idpersona,string no, string ap, string am, string fnac, string ecivil,List<Parametros[]> tels, string email, string rutafoto) :base(idpersona,no,ap,am,fnac,ecivil,tels,email,rutafoto)
        {
            
        }

        public override bool Agregar()
        {
            param = new Parametros[2];
            param[0] = new Parametros("Curr", RutaCurriculum);
            if (base.Agregar())
            {
                param[1] = new Parametros("idPers", ultimaPersona());//tomo el ultima persona 
                return EjecutarStore(param, "instructorAltas");
            }
            return false;
        }

        public override bool Eliminar()
        {
            param = new Parametros[1];
            param[0] = new Parametros("idPers", "" + Idpersona);
            if (EjecutarStore(param, "ParticipanteBajas"))
                return base.Eliminar();
            return false;
        }

        public override bool Modificar()
        {
            if (RutaCurriculum != "")
            {
                param = new Parametros[1];
                param[0] = new Parametros("idPers", "" + Idpersona);
                return EjecutarStore(param, "instructorModificar");
            }

            else if (base.Modificar()){
                return true;
            }
            return false;
        }

        public override bool Mostrar()
        {
            if (LeerTabla("instructorConsutar"))
            {
                if (DTable.Rows.Count > 0) {
                    listaInstructor = new List<Instructor>();
                    empatiagamt.Instructor ins;
                    for (int i = 0; i < DTable.Rows.Count; i++) {
                        ins = new empatiagamt.Instructor();
                        ins.Idpersona = DTable.Rows[i][0].ToString();
                        ins.Nombre = DTable.Rows[i][1].ToString();
                        ins.APaterno = DTable.Rows[i][2].ToString();
                        ins.AMaterno = DTable.Rows[i][3].ToString();
                        ins.FNac = DTable.Rows[i][4].ToString();
                        ins.EdoCivil = DTable.Rows[i][5].ToString();
                        ins.Email = DTable.Rows[i][6].ToString();
                        ins.RutaFoto = DTable.Rows[i][7].ToString();
                        ins.RutaCurriculum = DTable.Rows[i][8].ToString();
                        listaInstructor.Add(ins);
                    }
                    return true;
                }
                return false;
            }
            else { return false; }
        }

        public bool BuscarInstructor() {
            param = new Parametros[1];
            param[0] = new Parametros("idInst", "" + Idpersona);
            if (LeerTabla("instructorBuscarId", param))
            {
                if (DTable.Rows.Count == 1)
                { 
                    return true;
                }
                return false;
            }
            else { return false; }
        }
    }
}
