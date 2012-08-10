using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace empatiagamt
{
    public class Curriculum : Instructor
    {
        private string path;

        public Curriculum(string p)
        {
            Path = p;
        }

        public string Path
        {
            get { return path; }
            set { path = value; }
        }



        public bool CargarArchivo()
        {
            throw new System.NotImplementedException();
        }

        private bool ValidarDuplicidad()
        {
            throw new System.NotImplementedException();
        }
    }
}
