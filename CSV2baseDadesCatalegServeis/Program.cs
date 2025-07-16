using System;
using System.Collections.Generic;
using RecursosProgramacio;
using MultiTools;
using EinaImportacio;
using System.Text;

using System.IO;

namespace CSV2baseDadesCatalegServeis
{
    class Program
    {
        static void Main(string[] args)
        {
            EinaImportacio.CVS2CAtalegServeis p = new CVS2CAtalegServeis();
            p.ObreArxiu(args[0]);
            p.Importa();
            
        }
    }
}
