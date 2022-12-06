using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAccedi_Click(object sender, EventArgs e)
    {
        string strUtente = txtUtente.Text;
        string strPassword = txtPassword.Text;

        //--------------controlli formali--------------//

        // se txtUtente e' vuoto gli dico che e' un asino e interrompo il lavoro
        if (strUtente.Trim() == "")
        {
            lblMessaggio.Text = "SOMARO";
            return;
        }
        else if (strPassword.Trim() == "")
        {
            lblMessaggio.Text = "MA SEI PROPRIO PIRLA";
            return;
        }
        else
        {
            lblMessaggio.Text = "";
        }

        // verifico nome utente e password
        if (strUtente == "pippo" && strPassword == "ciao")
        {
            // vado a default.spx
            Response.Redirect("Default.aspx");
        }
        else
        {
            // mando messaggio
            lblMessaggio.Text = "Non ti conosco";
        }

        // se dati sbagliati mando un messaggio

        // se dati corretti vado a default.aspx

    }
}