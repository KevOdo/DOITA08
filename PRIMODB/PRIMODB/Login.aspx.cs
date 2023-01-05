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

    protected void btnAccedi_Click(object sender, EventArgs e)
    {
        // 1 - Controlli formali
        // Controlla che i dati siano stati immessi
        if (txtUSR.Text.Trim() == "" || txtPWD.Text.Trim() == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Non ti conosco')", true);
            return;
        }

        // 2 - Verifico che la coppia USR e PWD esistano sullo stesso record nel DB
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=DESKTOP-QNAP4SN\\SQLEXPRESS;Initial Catalog=AUTOSALONI;Integrated Security=true;";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        string qry = "select * from UTENTI where USR = '" + txtUSR.Text.Trim() + "' and PWD = '" + txtPWD.Text.Trim() + "'";
        cmd.CommandText = qry;
        SqlDataAdapter DA = new SqlDataAdapter();
        DA.SelectCommand= cmd;
        DataTable DT = new DataTable();
        conn.Open();
        DA.Fill(DT);
        conn.Close();

        // 3 - Se non esistono => messaggio "Non ti conosco"
        if(DT.Rows.Count == 0)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Non ti conosco')", true);
            return;
        }

        // 4 - Se esistono => benvenuto e lo mando a Default.aspx
        Response.Redirect("Default.aspx");
    }
}