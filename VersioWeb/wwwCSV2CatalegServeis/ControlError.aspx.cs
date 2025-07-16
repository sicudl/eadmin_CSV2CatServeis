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
        this.missatgeError.Text="if (Page.Request.ClientCertificate.IsPresent) X509Certificate2 x509Cert2 = new X509Certificate2(Page.Request.ClientCertificate.Certificate); else No hi ha certificat al client";

        X509Certificate2 x509Cert2 = new X509Certificate2(Page.Request.ClientCertificate.Certificate);
        if(x509Cert2==null)
            this.certInfo.Text="El seu certificat no ha arrivat al servidor";
        else
            this.certInfo.Text="El seu certificat té aquest número de sèrie " +x509Cert2.Thumbprint +" i aquesta informació al Subject "+ x509Cert2.Subject;        
    }
}
