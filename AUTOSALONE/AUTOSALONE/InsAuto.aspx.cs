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
        DATABASE DB = new DATABASE();

        string chiaveModello = grdModelli.SelectedValue.ToString();
        string anno = txtAnno.Text.ToString();
        string targa = txtTarga.Text.Trim();
        string KM = txtKM.Text.Trim();
        string colore = txtColore.Text.Trim();
        string prezzo = txtPrezzo.Text.Trim();

        DB.cmd.Parameters.AddWithValue("@chiaveModello", chiaveModello);
        DB.cmd.Parameters.AddWithValue("@anno", anno);
        DB.cmd.Parameters.AddWithValue("@targa", targa);
        DB.cmd.Parameters.AddWithValue("@KM", KM);
        DB.cmd.Parameters.AddWithValue("@colore", colore);
        DB.cmd.Parameters.AddWithValue("@prezzo", prezzo);
        DB.EseguiSPNonRead("AUTOMOBILI_InsertAuto");

        DataBind();
    }

    protected void ddlModello_SelectedIndexChanged(object sender, EventArgs e)
    {
        grdModelli.DataBind();
    }
}