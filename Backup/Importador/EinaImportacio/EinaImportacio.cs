using System;
using System.Collections.Generic;
using RecursosProgramacio;
using MultiTools;
using ConectordbER;
using System.Text;

using System.IO;

namespace EinaImportacio
{
    public class CVS2CAtalegServeis
    {
        protected StreamReader bufferArxiu_B;

        public bool ObreArxiu(string NomArxiu)
        {
            FileStream DNI_B = new FileStream(NomArxiu, FileMode.Open, FileAccess.Read, FileShare.Read);

            bufferArxiu_B = new StreamReader(DNI_B, System.Text.Encoding.GetEncoding(28593));
            return true;
        }
        
        public bool Importa()
        {
            MultiTools.General.AppLog miLog = new MultiTools.General.AppLog();
            // ****************************************
            //SERVEIS.CSV import cataleg serveis eSEU
            // ****************************************
            //DadesCitaPrevia = new ConectordbER.Conector("seupreprod.udl.cat", "developer", "eseu_catalegServeis", "A.123.45", "",true);

            ConectordbER.Conector DadesCitaPrevia;
            //DadesCitaPrevia = new ConectordbER.Conector("seupreprod.udl.cat", "eseu_catalegserveis", "developer", "A.123.45");
            DadesCitaPrevia = new ConectordbER.Conector("seuelectronica.udl.cat", "eseu_catalegserveis", "developer", "A.123.45");

            /*FileStream DNI_B = new FileStream(System.Environment.app"C:\\Serveis.csv", FileMode.Open, FileAccess.Read, FileShare.Read);*/
            //miLog.WriteEntry(args[0]);
            //return;
            /*if (args.Length == 0)
            {
                miLog.WriteEntry("Cal passar un nom d'arxiu! Drag Drop del CSV al EXE");
                return false;
            }
            */
           
            string Linea_FitxerB = "";
            Linea_FitxerB = bufferArxiu_B.ReadLine();
            Linea_FitxerB = bufferArxiu_B.ReadLine();
            //La primera i segona línea son basura
            Linea_FitxerB = bufferArxiu_B.ReadLine();

            DadesCitaPrevia.ExecutaSQL("DELETE FROM serveis");
            DadesCitaPrevia.ExecutaSQL("DELETE FROM serveis_subambits");

            //Mentre no final de [B]
            bool bLineaEsBona = true;
            while (!bufferArxiu_B.EndOfStream && bLineaEsBona)
            {
                Linea_FitxerB = Linea_FitxerB.Replace("X", "1");
                string[] Camps = Linea_FitxerB.Split(';');

                try
                {
                    int CodiServei = System.Convert.ToInt16(Camps[1]);
                    int EST = 0, SOC = 0, PDI = 0, PAS = 0;
                    if (Camps[3] == "1") EST = 1;
                    if (Camps[4] == "1") SOC = 1;
                    if (Camps[5] == "1") PDI = 1;
                    if (Camps[6] == "1") PAS = 1;
                    Camps[26] = Camps[26].Replace("1", "X");

                    DadesCitaPrevia.ExecutaSQL("INSERT INTO serveis (Codi,Nom,PerfilEst,PerfilSOC,PerfilPDI,PerfilPAS,URLform) VALUES(" +
                        CodiServei + ",'" + Camps[2].Replace("'", "''") + "'," + EST + "," + SOC + "," + PDI + "," + PAS + ",'" + Camps[26] + "')");

                    int idSubAmbit = 1;
                    for (int C = 7; C < 26; C++)
                    {
                        if (!String.IsNullOrEmpty(Camps[C]))
                            DadesCitaPrevia.ExecutaSQL("INSERT INTO serveis_subambits (Serveis_id,SubAmbits_id) VALUES(" + CodiServei + "," + idSubAmbit + ")");

                        idSubAmbit++;
                    }

                    Linea_FitxerB = bufferArxiu_B.ReadLine();
                    Camps = Linea_FitxerB.Split(';');
                    if (Camps[0].Length == 0)
                        bLineaEsBona = false;
                }
                catch (Exception e)
                {
                    miLog.WriteSimpleTextLine(e.Message);
                    return false;
                    // System.Windows.Forms.MessageBox.Show(e.Message, "Error en l'aplicació");
                }
            }

            bufferArxiu_B.Close();
            return true;
        }
    }
}
