using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _InsNuovoCliente : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegistra_Click(object sender, EventArgs e)
    {
        string nome = txtNome.Text.Trim();
        string cognome = txtCognome.Text.Trim();
        string RS = txtRS.Text.Trim();
        string indirizzo = txtIndirizzo.Text.Trim();
        string CAP = txtCAP.Text.Trim();
        string citta = txtCitta.Text.Trim();
        string provincia = txtProvincia.Text.Trim();

        // Controlli Formali
        if (indirizzo == "" || CAP == "" || citta == "" || provincia == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ERROR", "alert('Dati Mancanti');", true);
            return;
        }
        else
        {
            if (RS == "" && (nome == "" || cognome == ""))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "ERROR", "alert('Dati Personali Mancanti');", true);
                return;
            }
            else if (RS != "" && (nome != "" || cognome != ""))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "ERROR", "alert('Dati Personali Superflui');", true);
                return;
            }
        }

        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=DESKTOP-QNAP4SN\\SQLEXPRESS;Initial Catalog=AUTOSALONI;Integrated Security=true;";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        string qry = "insert into CLIENTI values('" + cognome + "','" + nome + "','" + RS + "','" + indirizzo + "','" + citta + "','" + provincia + "','" + CAP + "')";
        cmd.CommandText = qry;
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        ClientScript.RegisterStartupScript(this.GetType(), "SUCCESS", "alert('Registrazione Cliente Completata');", true);
        DataBind();
        return;

    }
}