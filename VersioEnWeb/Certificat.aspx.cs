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

public partial class Certificat : System.Web.UI.Page
{
    private MultiTools.General.AppLog Log;

    protected void Page_Load(object sender, EventArgs e)
    {
        string DNI = "";
        string Emprempta = "";
        string Nom = "";
        string SubjectCert = "";

       
        


        Log = new AppLog("", DateTime.Now);
        Log.WriteEntry("----------------Càrrega inicial formulari--------------------------------------------------------");

        if (Page.Request.ClientCertificate.IsPresent)
        {
             
     
            string para = "<div style='margin: 10px 0 0 0; font-weight: bold'>{0}</div>";
            string subpara = "<div style='margin-left: 15px; font-size: 90%'>{0}</div>";

            //x509Cert2.Subject

            try
            {
                Log.WriteEntry("hi ha certificat al navegador client!!");
                Response.Write("<hr /><div style='width: 500px; margin: 20px auto'>");
                Response.Write("<h3 style='width: 500px; margin: 20px auto'>Client Certificate Information</h3><br>");

                X509Certificate2 x509Cert2 = new X509Certificate2(Page.Request.ClientCertificate.Certificate);

                SubjectCert = x509Cert2.Subject;
                Response.Write(string.Format(para, "Issued To:"));
                Response.Write(string.Format(subpara, x509Cert2.Subject));

                Response.Write(string.Format(para, "Issued By:"));
                Response.Write(string.Format(subpara, x509Cert2.Issuer));

                Response.Write(string.Format(para, "Friendly Name:"));
                Response.Write(string.Format(subpara, string.IsNullOrEmpty(x509Cert2.FriendlyName) ? "(None Specified)" : x509Cert2.FriendlyName));

                Response.Write(string.Format(para, "Valid Dates:"));
                Response.Write(string.Format(subpara, "From: " + x509Cert2.GetEffectiveDateString()));
                Response.Write(string.Format(subpara, "To: " + x509Cert2.GetExpirationDateString()));

                Response.Write(string.Format(para, "Thumbprint:"));
                Response.Write(string.Format(subpara, x509Cert2.Thumbprint));

                //Response.Write(string.Format(para, "Public Key:"));
                //Response.Write(string.Format(subpara, x509Cert2.GetPublicKeyString()));


                #region Subject Alternative Name Section
                X509Extension sanExtension = (X509Extension)x509Cert2.Extensions["Subject Alternative Name"];
                if (sanExtension != null)
                {
                    Response.Write(string.Format(para, "Subject Alternative Name:"));
                    Response.Write(string.Format(subpara, sanExtension.Format(true)));
                }
                else
                {
                    Response.Write(string.Format(para, "No Subject Alternative Name Data"));
                }

                #endregion // Subject Alternative Name Section

                #region Certificate Policies Section
                X509Extension policyExtension = (X509Extension)x509Cert2.Extensions["Certificate Policies"];
                if (policyExtension != null)
                {
                    Response.Write(string.Format(para, "Certificate Policies:"));
                    Response.Write(string.Format(subpara, policyExtension.Format(true)));
                }
                else
                {
                    Response.Write(string.Format(para, "No Certificate Policies Data"));
                }
                #endregion //Certificate Policies Section


                SubjectCert = SubjectCert.Replace(", ", "#");
                string[] Camps = SubjectCert.Split('#');

                foreach (string campo in Camps)
                {
                    if (campo.Contains("SERIALNUMBER"))
                    {
                        DNI = campo.Replace("SERIALNUMBER=", "");
                    }
                    if (campo.Contains("CN"))
                    {
                        Nom = campo.Replace("CN=", "");
                    }
                
                }

                Emprempta = x509Cert2.Thumbprint;
                
                Log.WriteEntry("######### Accés per a ? ==>" + Emprempta + " " + DNI+" "+Nom);
                // Example on how to enumerate all extensions
                //foreach (X509Extension extension in x509Cert2.Extensions)
                //    Response.Write(string.Format(para, extension.Oid.FriendlyName + "(" + extension.Oid.Value + ")"));
            }
            catch (Exception ex)
            {
                Response.Write(string.Format(para, "An error occured:"));
                Response.Write(string.Format(subpara, ex.Message));
                Response.Write(string.Format(subpara, ex.StackTrace));
            }
            finally
            {
                Response.Write("</div>");
            }

            




                 try
            {
                Log.WriteEntry("hi ha certificat al navegador client!!");
                Log.WriteEntry("<hr /><div style='width: 500px; margin: 20px auto'>");
                Log.WriteEntry("<h3 style='width: 500px; margin: 20px auto'>Client Certificate Information</h3><br>");

                X509Certificate2 x509Cert2 = new X509Certificate2(Page.Request.ClientCertificate.Certificate);

                Log.WriteEntry(string.Format(para, "Issued To:"));
                Log.WriteEntry(string.Format(subpara, x509Cert2.Subject));

                Log.WriteEntry(string.Format(para, "Issued By:"));
                Log.WriteEntry(string.Format(subpara, x509Cert2.Issuer));

                Log.WriteEntry(string.Format(para, "Friendly Name:"));
                Log.WriteEntry(string.Format(subpara, string.IsNullOrEmpty(x509Cert2.FriendlyName) ? "(None Specified)" : x509Cert2.FriendlyName));

                Log.WriteEntry(string.Format(para, "Valid Dates:"));
                Log.WriteEntry(string.Format(subpara, "From: " + x509Cert2.GetEffectiveDateString()));
                Log.WriteEntry(string.Format(subpara, "To: " + x509Cert2.GetExpirationDateString()));

                Log.WriteEntry(string.Format(para, "Thumbprint:"));
                Log.WriteEntry(string.Format(subpara, x509Cert2.Thumbprint));

                //Response.Write(string.Format(para, "Public Key:"));
                //Response.Write(string.Format(subpara, x509Cert2.GetPublicKeyString()));


                #region Subject Alternative Name Section
                X509Extension sanExtension = (X509Extension)x509Cert2.Extensions["Subject Alternative Name"];
                if (sanExtension != null)
                {
                    Log.WriteEntry(string.Format(para, "Subject Alternative Name:"));
                    Log.WriteEntry(string.Format(subpara, sanExtension.Format(true)));
                }
                else
                {
                    Log.WriteEntry(string.Format(para, "No Subject Alternative Name Data"));
                }

                #endregion // Subject Alternative Name Section

                #region Certificate Policies Section
                X509Extension policyExtension = (X509Extension)x509Cert2.Extensions["Certificate Policies"];
                if (policyExtension != null)
                {
                    Log.WriteEntry(string.Format(para, "Certificate Policies:"));
                    Log.WriteEntry(string.Format(subpara, policyExtension.Format(true)));
                }
                else
                {
                    Log.WriteEntry(string.Format(para, "No Certificate Policies Data"));
                }
                #endregion //Certificate Policies Section


                // Example on how to enumerate all extensions
                //foreach (X509Extension extension in x509Cert2.Extensions)
                //    Response.Write(string.Format(para, extension.Oid.FriendlyName + "(" + extension.Oid.Value + ")"));
            }
            catch (Exception ex)
            {
                Log.WriteEntry(string.Format(para, "An error occured:"));
                Log.WriteEntry(string.Format(subpara, ex.Message));
                Log.WriteEntry(string.Format(subpara, ex.StackTrace));
            }
            finally
            {
                Log.WriteEntry("</div>");
            }

                 Log.WriteEntry("----------------Càrrega Final formulari--------------------------------------------------------");
        }



  //      string Aleat = System.DateTime.Now.Ticks.ToString();
//        SSOID.Value = RecursosProgramacio.EinesCadenes.GetMD5Hash(Aleat);

        //   this.fo
        //Page.Form"infoDATAWebX"]["SSOID"].value="kasldfk";

        //Si les variables de Nom Usuari i Usuari Validat son incorrectes.
    }

    protected void SendMail()
    {
        /*// Gmail Address from where you send the mail
        var fromAddress = "Gmail@gmail.com";
        // any address where the email will be sending
        var toAddress = YourEmail.Text.ToString();
        //Password of your gmail address
        const string fromPassword = "Password";
        // Passing the values and make a email formate to display
        string subject = YourSubject.Text.ToString();
        string body = "From: " + YourName.Text + "\n";
        body += "Email: " + YourEmail.Text + "\n";
        body += "Subject: " + YourSubject.Text + "\n";
        body += "Question: \n" + Comments.Text + "\n";
        // smtp settings
        var smtp = new System.Net.Mail.SmtpClient();
        {
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
            smtp.Timeout = 20000;
        }
        // Passing values to smtp object
        smtp.Send(fromAddress, toAddress, subject, body);
         * */
    }
}
