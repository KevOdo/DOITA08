using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string USR = txtUSR.Text;
        string PWD = txtPWD.Text;
        // controlli formali
        if(String.IsNullOrEmpty(USR) || String.IsNullOrEmpty(PWD))
        {
            return;
        }

        UTENTI U = new UTENTI();
        U.email = USR;
        U.password = PWD;

        // controlla se dati corretti
        DataTable DT = U.Login();
        if (DT.Rows.Count == 0)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ERROR", "alert('Dati Incorretti');", true);
            return;
        }

        if (DT.Rows[0]["ATTIVO"].ToString() == "N")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ERROR", "alert('Utente Inattivo');", true);
            return;
        }

        Session["USR"] = USR;
        Session["PWD"] = PWD;
        Session["chiave"] = DT.Rows[0]["chiave"];

        if (DT.Rows[0]["PRIMAREG"].ToString() == "Y")
        {
            Response.Redirect("ChangePassword.aspx");
        } else
        {
            Response.Redirect("Home.aspx");
        }
    }
}