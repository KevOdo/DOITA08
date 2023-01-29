using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ActivationRequests : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnApprove_Click(object sender, EventArgs e)
    {
        string selectedUSR = grdRequests.SelectedValue.ToString();
        var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        var stringChars = new char[8];
        var random = new Random();

        for (int i = 0; i < stringChars.Length; i++)
        {
            stringChars[i] = chars[random.Next(chars.Length)];
        }

        var password = new String(stringChars);
        UTENTI U = new UTENTI();
        U.password = password;
        U.chiave = selectedUSR;
        U.ActivateUSR();

        DataTable DT = U.GetUSRByKey();
        string email = DT.Rows[0][0].ToString();

        // imposto il server di invio della mail
        SmtpClient client = new SmtpClient();
        client.Credentials = new NetworkCredential("generation@brovia.it", "!Pr0secc0!");
        client.Port = 25;
        client.Host = "brovia.it";

        // imposto il messaggio
        MailMessage mail = new MailMessage();
        mail.From = new MailAddress("generation@brovia.it");
        mail.To.Add(email);
        mail.IsBodyHtml = true;
        mail.Subject = "Account Attivato";
        mail.Body = "<h4>Account Attivato.</h4></br>";
        mail.Body += "<h4>Password temporanea: "+password+"</h4>";
        mail.Body += "<h4>Login here: http://localhost:57854/Login.aspx</h4>";

        client.Send(mail);
        DataBind();
    }
}