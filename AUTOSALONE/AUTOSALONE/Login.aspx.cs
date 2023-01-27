using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string usr = USR.Text.Trim();
        string pwd = PWD.Text.Trim();

        // Controlli Formali
        if (usr == "" || pwd == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Non ti conosco');", true);
            return;
        }

        // istanzio la classe utenti
        UTENTI U = new UTENTI();

        U.USR = USR.Text.Trim();
        U.PWD = PWD.Text.Trim();    

        // esegui login e salva response in un datatable
        DataTable DT = U.Login();

        // verifico se user esiste nel database
        if (DT.Rows.Count == 0)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Non ti conosco');", true);
            return;
        }

        Session["usrType"] = DT.Rows[0][0].ToString();
        Response.Redirect("Home.aspx");

    }
}