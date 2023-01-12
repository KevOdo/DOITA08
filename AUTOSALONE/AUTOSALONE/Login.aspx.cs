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

        // Controlla se l'user esiste nel database
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter DA = new SqlDataAdapter();
        DataTable DT = new DataTable();

        conn.ConnectionString = "Data Source=DESKTOP-QNAP4SN\\SQLEXPRESS;Initial Catalog=AUTOSALONI;Integrated Security=true;";
        cmd.Connection = conn;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "UTENTI_Login";
        cmd.Parameters.AddWithValue("@usr", usr);
        cmd.Parameters.AddWithValue("@pwd", pwd);

        DA.SelectCommand = cmd;
        

        conn.Open();
        DA.Fill(DT);
        conn.Close();

        if (DT.Rows.Count == 0)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Non ti conosco');", true);
            return;
        }
        Session["usrType"] = DT.Rows[0][1].ToString();
        Response.Redirect("Home.aspx");

    }
}