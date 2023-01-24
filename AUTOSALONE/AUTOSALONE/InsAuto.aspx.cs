using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _InsAuto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAuto_Click(object sender, EventArgs e)
    {
        // controlli formali
        if (txtAnno.Text.Trim() == "" || txtColore.Text.Trim() == "" || txtPrezzo.Text.Trim() == "")
        {
            return;
        }

        // gestione oggetti per la connessione
        SqlConnection conn = new SqlConnection();
        SqlCommand cmdAuto = new SqlCommand();

        string chiaveModello = grdModelli.SelectedValue.ToString();
        string anno = txtAnno.Text.ToString();
        string targa = txtTarga.Text.Trim();
        string KM = txtKM.Text.Trim();
        string colore = txtColore.Text.Trim();
        string prezzo = txtPrezzo.Text.Trim();

        conn.ConnectionString = "Data Source=DESKTOP-QNAP4SN\\SQLEXPRESS;Initial Catalog=AUTOSALONI;Integrated Security=true";
        cmdAuto.Connection = conn;
        cmdAuto.CommandType = CommandType.StoredProcedure;
        cmdAuto.CommandText = "AUTOMOBILI_InsertAuto";
        cmdAuto.Parameters.AddWithValue("@chiaveModello", chiaveModello);
        cmdAuto.Parameters.AddWithValue("@anno", anno);
        cmdAuto.Parameters.AddWithValue("@targa", targa);
        cmdAuto.Parameters.AddWithValue("@KM", KM);
        cmdAuto.Parameters.AddWithValue("@colore", colore);
        cmdAuto.Parameters.AddWithValue("@prezzo", prezzo);

        conn.Open();
        cmdAuto.ExecuteNonQuery();
        conn.Close();

        DataBind();
    }

    protected void ddlModello_SelectedIndexChanged(object sender, EventArgs e)
    {
        grdModelli.DataBind();
    }
}