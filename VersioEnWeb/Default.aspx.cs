//#define RELEASE
#define HORA_SERVER

using System;
using System.Configuration;
using System.Data;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

using System.Net;
using System.Net.Sockets;


using System.Security.Cryptography.X509Certificates;
using System.Security.Cryptography;

using RecursosProgramacio;
using MultiTools.General;
using EinaImportacio;


public partial class _Default : System.Web.UI.Page 
{
    //private ConectorLDAP.Conector mLDAP = null;
    private MultiTools.General.AppLog Log;
    private bool LoginOK;

    public static DateTime GetNetworkTime()
    {         
        string []ntpServers = {"ntp.udl.net","time.windows.com","time.nist.gov","europe.pool.ntp.org"};                
        DateTime networkDateTime = DateTime.Now;
        var ntpData = new byte[48];
        ntpData[0] = 0x1B; //LeapIndicator = 0 (no warning), VersionNum = 3 (IPv4 only), Mode = 3 (Client Mode)
        bool ServerOK = false;

        foreach (string ntpServer in ntpServers)
        {
            try
            {
                if (!ServerOK)
                {
                    var addresses = Dns.GetHostEntry(ntpServer).AddressList;
                    var ipEndPoint = new IPEndPoint(addresses[0], 123);
                    var socket = new Socket(AddressFamily.InterNetwork, SocketType.Dgram, ProtocolType.Udp);

                    socket.Connect(ipEndPoint);
                    socket.Send(ntpData);
                    socket.Receive(ntpData);
                    socket.Close();

                    ulong intPart = (ulong)ntpData[40] << 24 | (ulong)ntpData[41] << 16 | (ulong)ntpData[42] << 8 | (ulong)ntpData[43];
                    ulong fractPart = (ulong)ntpData[44] << 24 | (ulong)ntpData[45] << 16 | (ulong)ntpData[46] << 8 | (ulong)ntpData[47];
                    
                    //He afegit + 3600000 (1 hora): Tots els servers se suposa que donen la hora en UMC, cal sumar +1 del fus Espanyol
                    var milliseconds = ((intPart * 1000) + ((fractPart * 1000) / 0x100000000L)) + 3600000; 
                    networkDateTime = (new DateTime(1900, 1, 1)).AddMilliseconds((long)milliseconds);
                    
                    return networkDateTime;
                }
            }
            catch (Exception Error)
            {

            }
        }
        networkDateTime = System.DateTime.Now;
        return networkDateTime;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Log = new AppLog("", DateTime.Now);
        Log.WriteEntry("Càrrega inicial formulari");

        LoginOK = true;
        DateTime HoraReal;

#if HORA_SERVER
        HoraReal = System.DateTime.Now;
#else
       HoraReal = GetNetworkTime();
#endif
#if RELEASE
        if (Page.Request.ClientCertificate.IsPresent)
           {
               X509Certificate2 x509Cert2 = new X509Certificate2(Page.Request.ClientCertificate.Certificate);
               Log.WriteEntry("Certificat al " + x509Cert2.FriendlyName + " " + x509Cert2.Subject + " " + x509Cert2.Thumbprint);                        
            
               ControlCertificats AutenticacioCertificats = new ControlCertificats();
               if (!AutenticacioCertificats.ValidaCertificat(x509Cert2))
                   Response.Redirect("ControlError.aspx?Codi=-1");
           }
           else
           {
               Log.WriteEntry("No hi ha certificat al client");
               Response.Redirect("ControlError.aspx?Codi=0");
               LoginOK = false;
           }
#endif
        
    }
    protected void PostejaForm(object sender, EventArgs e)
    {
        //mLDAP = new ConectorLDAP.Conector();
        if (this.ArxiuCSV.HasFile)
        {                     
            if (this.ArxiuCSV.PostedFile.ContentType == "application/vnd.ms-excel" 
                ||
                this.ArxiuCSV.PostedFile.ContentType.Contains("csv"))
            {
                try
                {
                    string NomArxiu = RecursosProgramacio.EinesCadenes.GetMyRandomString(8)+"_ArxiuImportacio.CSV";
                    ArxiuCSV.SaveAs(Page.Server.MapPath(NomArxiu));

                    EinaImportacio.CVS2CAtalegServeis Es = new CVS2CAtalegServeis();
                    Log.WriteEntry("Tractant Arxiu " + Page.Server.MapPath(NomArxiu));
                    Es.ObreArxiu(Page.Server.MapPath(NomArxiu));
                    Es.Importa();
                    string LogErrors = Es.LogConsole;
                    Server.Transfer("resultat.aspx?ErrorLogConsole=" + new MultiTools.General.BASE64er().EnCode(LogErrors));
                }
                catch (Exception Error)
                {
                    Log.WriteEntry("ERROR AL IMPORT CSV " + Error.Message);
                    if(!Error.Message.Contains("Subproceso"))
                        Response.Redirect("ControlError.aspx?Codi=2"+"&Ex="+new MultiTools.General.BASE64er().EnCode(Error.Message));
                }
            }
        }
        else
            Server.Transfer("ControlError.aspx?Codi=1");
        
/*        if(mLDAP.ModificaAtribut_BusinessCategory(this.DNIUsuari.Text,this.UDLGrup.Text))           
            Server.Transfer("resultat.aspx");
        else
            Server.Transfer("error.html?ERROR=HaFallatLDAP");
 * */
    }


};

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
        
        //DNIs.Add("78073809X");
        //DNIs.Add("78080428G");
        
        //DNIs.Add("47689079M");        
        DNIs.Add("40893499M");
        DNIs.Add("78080428M");
        DNIs.Add("40889478D");
        DNIs.Add("43716052K");

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