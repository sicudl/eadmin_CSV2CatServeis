using System;
using System.Configuration;
using System.Data;
//using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Collections;
using System.Collections.Specialized;

using System.Security.Cryptography.X509Certificates;
using System.Security.Cryptography;

using RecursosProgramacio;
using MultiTools.General;

public partial class _Default : System.Web.UI.Page 
{
    //private ConectorLDAP.Conector LDAP = null;
    private MultiTools.General.AppLog Log;

    protected void Page_Load(object sender, EventArgs e)
    {
        Log = new AppLog("", DateTime.Now);
        Log.WriteEntry("Càrrega inicial formulari");


        if (Page.Request.ClientCertificate.IsPresent)
        {
            X509Certificate2 x509Cert2 = new X509Certificate2(Page.Request.ClientCertificate.Certificate);
            Log.WriteEntry("Certificat al " + x509Cert2.FriendlyName + " " + x509Cert2.Subject+" " +x509Cert2.Thumbprint);
            
            ControlCertificats AutenticacioCertificats = new ControlCertificats();
            if (!AutenticacioCertificats.ValidaCertificat(x509Cert2))
                Response.Redirect("error.html");
        }
        else
        {
            Log.WriteEntry("No hi ha certificat al client");
            Response.Redirect("error.html");
        }
        
        NameValueCollection nvc=null;
        if(Request.Form!=null)
            nvc = Request.Form;

        if (nvc != null)
        {
            /*string[] Valors = Request.Form.GetValues(0);
            foreach (string valorcamp in Valors)
            {
                Response.Write(valorcamp);
                Log.WriteEntry(valorcamp);
            }
            */
            Log.WriteEntry("CANVI REALITZAT!");
            Log.WriteEntry("field1 : " + nvc["UDLGrup"]);
            Log.WriteEntry("field2 : " + nvc["DNIUsuari"]);

            this.lbInfoREsultat.Text = "S'ha actualitza el camp LDAP Bussiness category de l'usuari " + (string)nvc["DNIUsuari"] + " amb valor =" + (string)nvc["UDLGrup"];
        }
    }



    public class ControlCertificats
    {
        private MultiTools.General.AppLog Log;
        private ArrayList Empremtes;
        private ArrayList DNIs;

        public ControlCertificats()
        {
            Log = new MultiTools.General.AppLog();
            Empremtes = new ArrayList();
            DNIs = new ArrayList();

            //Credencials d'accés admeses!
            Empremtes.Add("1374F226EC79CEBF111EB09FABD5C18D69588671");
            DNIs.Add("43716052K");
            //DNIs.Add("78073809X");
            DNIs.Add("78080428G");
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
}

/*
if (Request.QueryString.Keys.Count > 0)
{
    //foreach (String s in Request.QueryString)
    //{
        //Response.Write(s + " = " + Request.QueryString[s]);
    //}
              

    if (Request.QueryString["Data"].Length > 0)
    {
        string LoggedUserDataValues = Request.QueryString["Data"];
        string inSSOID = Request.QueryString["SSOID"];
        string[] UserDataValues = null;

        if (LoggedUserDataValues.Length > 0)
        {
            UserDataValues = LoggedUserDataValues.Split(';');
            Log.WriteEntry(UserDataValues[0] + ";" + UserDataValues[1] + ";" + UserDataValues[2] + ";" + UserDataValues[3]);
        }

        Log.WriteEntry(LoggedUserDataValues + "__" + inSSOID);
    }
}
else //Error sense clau accés.
{
    Session["FirstName"]
}
*/