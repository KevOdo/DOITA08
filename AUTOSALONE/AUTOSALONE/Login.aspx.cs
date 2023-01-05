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
        // Controlli Formali
        if (USR.Text.Trim() == "" || PWD.Text.Trim() == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Non ti conosco');", true);
            return;
        }

        // Controlla se l'user esiste nel database
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=DESKTOP-QNAP4SN\\SQLEXPRESS;Initial Catalog=AUTOSALONI;Integrated Security=true;";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        string qry = "select * from UTENTI where USR = '" + USR.Text.Trim() + "' and PWD = '" + PWD.Text.Trim() + "'";
        cmd.CommandText = qry;
        SqlDataAdapter DA = new SqlDataAdapter();
        DA.SelectCommand = cmd;
        DataTable DT = new DataTable();
        conn.Open();
        DA.Fill(DT);
        conn.Close();

        if (DT.Rows.Count == 0)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Non ti conosco');", true);
            return;
        }

        Response.Redirect("Default.aspx");

    }
}