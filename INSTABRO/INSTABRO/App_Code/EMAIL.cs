using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Xml.Linq;

/// <summary>
/// Descrizione di riepilogo per EMAIL
/// </summary>
public class EMAIL
{
    public EMAIL()
    {
        //
        // TODO: aggiungere qui la logica del costruttore
        //
    }

    public void SendEmail(string mailTo, string subject, string body)
    {
        SmtpClient client = new SmtpClient();
        client.Credentials = new NetworkCredential("generation@brovia.it", "!Pr0secc0!");
        client.Port = 25;
        client.Host = "brovia.it"; // l'host è il server

        MailMessage mail = new MailMessage();
        mail.From = new MailAddress("generation@brovia.it");
        mail.To.Add(mailTo);
        mail.IsBodyHtml = true;
        mail.Subject = subject;
        mail.Body = body;
        client.Send(mail);
    }
}