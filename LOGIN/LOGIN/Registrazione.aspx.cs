using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registrazione : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegistrati_Click(object sender, EventArgs e)
    {
        // assegna i valori delle TextBox a dei string
        string strUtente = txtUtente.Text;
        string strPassword = txtPassword.Text;
        string strNome = txtNome.Text;
        string strCognome = txtCognome.Text;
        string strIndirizzo = txtIndirizzo.Text;
        string strCap = txtCap.Text;
        string strCitta = txtCitta.Text;
        string strProvincia = txtProvincia.Text;

        //----------------controlli formali----------------//
        // controlla se l'utente e' info@brovia.it, che e' gia' registrato
        if (strUtente == "info@brovia.it")
        {
            lblError.Text = "Email gia' in uso";
            return;
        }
        // controlla se i campi sono vuoti
        else if (strUtente == "" || strPassword == "" || strNome == "" || strCognome == "" || strIndirizzo == "" || strCap == "" || strCitta == "" || strProvincia == "")
        {
            lblError.Text = "Sei un pirla";
            return;
        }
        //carica la pagina Default.aspx
        else
        {
            lblError.Text = "";
            Response.Redirect("Default.aspx");
        }
    }
}