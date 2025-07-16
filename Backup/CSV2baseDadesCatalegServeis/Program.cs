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
            EinaImportacio.CVS2CAtalegServeis.ObreArxiu(args[0]);
            EinaImportacio.CVS2CAtalegServeis.Importa();
            
        }
    }
}
