using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnInserisci_Click(object sender, EventArgs e)
    {
        // controlli formali
        if(txtNuovoModello.Text.Trim() == "")
        {
            return;
        }
        // gestione oggetti per la connessione
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();

        conn.ConnectionString = "Data Source=DESKTOP-QNAP4SN\\SQLEXPRESS;Initial Catalog=AUTOSALONI;Integrated Security=true";
        cmd.Connection = conn;
        cmd.CommandText = "insert into MODELLI values("+ddlMarche.SelectedValue.ToString()+",'"+txtNuovoModello.Text+"')";
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        griglia.DataBind();
        // salvataggio
    }
}