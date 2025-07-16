using System;
using System.Configuration;
using System.Data;

using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;


using System.Security.Cryptography.X509Certificates;
using System.Security.Cryptography;

using RecursosProgramacio;
using MultiTools.General;

namespace EinesWeb
{


public partial class _Default : System.Web.UI.Page 
{
    //private ConectorLDAP.Conector mLDAP = null;
    private MultiTools.General.AppLog Log;

    protected void Page_Load(object sender, EventArgs e)
    {
        Log = new AppLog("", DateTime.Now);
        Log.WriteEntry("Càrrega inicial formulari");

        if (this.ArxiuCSV.HasFile)
        {
            string xxx = this.ArxiuCSV.PostedFile.ContentType;
            ArxiuCSV.SaveAs("ArxiuImportacio.CSV");
        }

        if (Page.Request.ClientCertificate.IsPresent)
        {
            X509Certificate2 x509Cert2 = new X509Certificate2(Page.Request.ClientCertificate.Certificate);
            Log.WriteEntry("Certificat al " + x509Cert2.FriendlyName + " " + x509Cert2.Subject + " " + x509Cert2.Thumbprint);
            MultiTools.General.CardIdentity p;
            
            
            ControlCertificats AutenticacioCertificats = new ControlCertificats();
            if (!AutenticacioCertificats.ValidaCertificat(x509Cert2))
                Response.Redirect("error.html?ERROR=noEsUnCertificatAdmes");
        }
        else
        {
            Log.WriteEntry("No hi ha certificat al client");
            Response.Redirect("error.html?ERROR=noHiHaCertificat");
        }
    }
    protected void PostejaForm(object sender, EventArgs e)
    {
        //mLDAP = new ConectorLDAP.Conector();
        if (this.ArxiuCSV.HasFile)
        {
            string xxx = this.ArxiuCSV.PostedFile.ContentType;
            ArxiuCSV.SaveAs("ArxiuImportacio.CSV");
            Server.Transfer("resultat.aspx");
        }
        else
            Server.Transfer("error.html?ERROR=HaFallatLDAP");
        
/*        if(mLDAP.ModificaAtribut_BusinessCategory(this.DNIUsuari.Text,this.UDLGrup.Text))           
            Server.Transfer("resultat.aspx");
        else
            Server.Transfer("error.html?ERROR=HaFallatLDAP");
 * */
    }
}

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