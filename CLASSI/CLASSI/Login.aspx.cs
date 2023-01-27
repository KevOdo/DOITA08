using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnInvia_Click(object sender, EventArgs e)
    {
        // imposto il server di invio della mail
        SmtpClient client = new SmtpClient();
        client.Credentials = new NetworkCredential("generation@brovia.it","!Pr0secc0!");
        client.Port = 25;        
        client.Host = "brovia.it";

        // imposto il messaggio
        MailMessage mail = new MailMessage();
        mail.From = new MailAddress("generation@brovia.it");
        mail.To.Add("simogiorusso@gmail.com");
        mail.IsBodyHtml= true;
        mail.Subject = "";
        mail.Body = "<h4>Sei proprio tu, John Wayne?</h4>";

        client.Send(mail);
    }
}