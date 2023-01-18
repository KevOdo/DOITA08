using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _InsVenditore : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSalva_Click(object sender, EventArgs e)
    {
        string nome = txtNome.Text.Trim();
        string cognome = txtCognome.Text.Trim();
        string chiaveFiliale = ddlFiliale.SelectedValue.ToString();

        SqlConnection conn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();

        conn.ConnectionString = "Data Source=DESKTOP-QNAP4SN\\SQLEXPRESS;Initial Catalog=AUTOSALONI;Integrated Security=true;";
        cmd.Connection = conn;

        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "VENDITORI_InsertVenditore";
        cmd.Parameters.AddWithValue("@chiaveFiliale", chiaveFiliale);
        cmd.Parameters.AddWithValue("@cognome", cognome);
        cmd.Parameters.AddWithValue("@nome", nome);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        DataBind();

    }
}