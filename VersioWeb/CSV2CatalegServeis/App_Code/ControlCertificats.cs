using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Collections;

using System.Security.Cryptography.X509Certificates;
using System.Security.Cryptography;

using RecursosProgramacio;
using MultiTools.General;

/// <summary>
/// Descripción breve de ControlCertificats
/// </summary>
public class ControlCertificats
{
    private MultiTools.General.AppLog Log;
    private ArrayList Empremtes; 
    private ArrayList DNIs;

    public ControlCertificats()
    {
        Log=new MultiTools.General.AppLog();
        Empremtes = new ArrayList();
        DNIs=new ArrayList();
        
        //Credencials d'accés admeses!
        Empremtes.Add("1374F226EC79CEBF111EB09FABD5C18D69588671");
        DNIs.Add("43716052K");
        DNIs.Add("78073809X");
        //DNIs.Add("47689079M");
        DNIs.Add("40893499M");
        
        
    }

    public bool ValidaCertificat(X509Certificate2 x509Cert2)
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
        try
        {
            string DNI = "";
            string Emprempta = "";
            string Nom = "";
            string SubjectCert = "";

            Log = new AppLog("", DateTime.Now);
            Log.WriteEntry("----------------Càrrega inicial formulari--------------------------------------------------------");

            SubjectCert = x509Cert2.Subject;
            Log.WriteEntry(SubjectCert);

            SubjectCert = SubjectCert.Replace(", ", "#");
            string[] Camps = SubjectCert.Split('#');

            foreach (string campo in Camps)
            {
                if (campo.Contains("SERIALNUMBER"))
                {
                    DNI = campo.Replace("SERIALNUMBER=", "");
                    Log.WriteEntry(DNI);
                }
                if (campo.Contains("CN"))
                {
                    Nom = campo.Replace("CN=", "");
                    Log.WriteEntry(Nom);
                }
                
            }

            Emprempta = x509Cert2.Thumbprint;
            //this.Empremtes.Contains(Emprempta) && 
            if (this.DNIs.Contains(DNI))
                return true;
            else
                return false;
        }
        catch (Exception Ex)
        {
            return false;
        }

        return false;
    }

};
