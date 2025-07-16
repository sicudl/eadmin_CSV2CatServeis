using System;
using System.Collections;
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


public partial class ControlError : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string CadenaDescError = "";
        switch (this.Request.QueryString["Codi"])
        {
            case "-1": CadenaDescError = "El seu certificat no ha estat autoritzat per usar aquest web.";
                break;
            case "0": CadenaDescError = "El navegador no té el certificat disponible, per tant el web no ha pogut llegir-lo.";
                break;
            case "1": CadenaDescError = "Error l'arxiu CSV no s'ha pogut tractar";
                break;
            case "2": if (!CadenaDescError.Contains("Subproceso"))
                    {
                        CadenaDescError = "Un error durant la importació : <br>";
                        CadenaDescError += new MultiTools.General.BASE64er().DeCode(this.Request.QueryString["Ex"]);
                    }
                break;
            default:
                break;
        }
        this.missatgeError.Text = CadenaDescError;// "if (Page.Request.ClientCertificate.IsPresent) X509Certificate2 x509Cert2 = new X509Certificate2(Page.Request.ClientCertificate.Certificate); else No hi ha certificat al client";

        /*X509Certificate2 x509Cert2 = new X509Certificate2(Page.Request.ClientCertificate.Certificate);
        if(x509Cert2==null)
            this.certInfo.Text="El seu certificat no ha arrivat al servidor";
        else
            this.certInfo.Text="El seu certificat té aquest número de sèrie " +x509Cert2.Thumbprint +" i aquesta informació al Subject "+ x509Cert2.Subject;        
         * */
    }
}
