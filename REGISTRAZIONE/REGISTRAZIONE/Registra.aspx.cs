using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registra : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegistra_Click(object sender, EventArgs e)
    {
        UTENTI U = new UTENTI();
        // controlli formali
        if(String.IsNullOrEmpty(txtEmail.Text))
        {
            return;
        }

        // controlla se email esiste gia'
        U.email = txtEmail.Text;
        DataTable DT = U.GetRecordByUSR();
        if (DT.Rows.Count > 0)
        {
            return;
        }
        // se email nuova, inserisci utente
        U.Registra();

        // invia mail alla segretaria
        // imposto il server di invio della mail
        SmtpClient client = new SmtpClient();
        client.Credentials = new NetworkCredential("generation@brovia.it", "!Pr0secc0!");
        client.Port = 25;
        client.Host = "brovia.it";

        // imposto il messaggio
        string mailSeg = "kev.odas@gmail.com";
        MailMessage mail = new MailMessage();
        mail.From = new MailAddress("generation@brovia.it");
        mail.To.Add(mailSeg);
        mail.IsBodyHtml = true;
        mail.Subject = "Approva nuovo utente";
        mail.Body = "<h4>Nuovo utente creato con mail: "+txtEmail.Text+"</h4><br />";
        mail.Body += "<h4>Approva tramite app FILOMENA</h4>";

        client.Send(mail);
        ClientScript.RegisterStartupScript(this.GetType(), "ERROR", "alert('Registrazione completata. Le tua mail e' in attesa di approvazione.');", true);
    }
}