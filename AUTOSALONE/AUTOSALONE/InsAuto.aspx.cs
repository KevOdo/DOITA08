using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class InsAuto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAuto_Click(object sender, EventArgs e)
    {
        // controlli formali
        if(txtAnno.Text.Trim() == "" || txtColore.Text.Trim() == "" || txtPrezzo.Text.Trim() == "")
        {
            return;
        }

        // gestione oggetti per la connessione
        SqlConnection conn = new SqlConnection();
        SqlCommand cmdAuto = new SqlCommand();

        conn.ConnectionString = "Data Source=DESKTOP-QNAP4SN\\SQLEXPRESS;Initial Catalog=AUTOSALONI;Integrated Security=true";
        cmdAuto.Connection = conn;
        cmdAuto.CommandText = "insert into AUTOMOBILI values("+ddlModello.SelectedValue.ToString()+",'"+txtAnno.Text.ToString()+"','"+txtTarga.Text.Trim()+"','"+txtKM.Text.Trim()+"','"+txtColore.Text.Trim()+"','"+txtPrezzo.Text.Trim()+"')";
        conn.Open();
        cmdAuto.ExecuteNonQuery();
        conn.Close();
    }
}