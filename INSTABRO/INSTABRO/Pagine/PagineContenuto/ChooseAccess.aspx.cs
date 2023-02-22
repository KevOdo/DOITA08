using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChooseAccess : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string email = txtEmailLogin.Text.Trim();
        string PWD = txtPWD.Text.Trim();
        if(String.IsNullOrEmpty(email) || String.IsNullOrEmpty(PWD))
        {
            return;
        }
        UTENTI u = new UTENTI();
        ENCODEDECODE ed = new ENCODEDECODE();
        var EncodedPWD = ed.Encode(PWD);

        DataTable DT = u.Login(email, EncodedPWD);
        if(DT.Rows.Count > 0 )
        {
            Session["USRchiave"] = DT.Rows[0]["chiave"];
            Session["TIPOIMG"] = DT.Rows[0]["TIPOIMG"];
            Response.Redirect("/Pagine/PagineContenuto/Home.aspx");
        }
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        string email = txtEmailRegister.Text.Trim();
        if(String.IsNullOrEmpty(email))
        {
            return;
        }
        var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        var stringChars = new char[8];
        var random = new Random();

        for (int i = 0; i < stringChars.Length; i++)
        {
            stringChars[i] = chars[random.Next(chars.Length)];
        }

        var temporaryPWD = new String(stringChars);
        ENCODEDECODE ed = new ENCODEDECODE();
        UTENTI u = new UTENTI();
        var EncodedTemporaryPWD = ed.Encode(temporaryPWD);
        u.Registra(email, EncodedTemporaryPWD);

        string subject = "Registrazione InstaBro";
        string body = "Registrazione a InstaBro effettuata con successo. Per accedere e' stata generata una password random: " + temporaryPWD;
        EMAIL em = new EMAIL();
        em.SendEmail(email, subject, body);


    }
}