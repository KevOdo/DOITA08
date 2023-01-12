using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _ModMarca : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnMarca_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        conn.ConnectionString = "Data Source=DESKTOP-QNAP4SN\\SQLEXPRESS;Initial Catalog=AUTOSALONI;Integrated Security=true;";

        string marca = txtNomeNuovo.Text.Trim();
        string chiave = ddlMarcaMod.SelectedValue;

        cmd.Connection = conn;
        cmd.CommandType= CommandType.StoredProcedure;
        cmd.CommandText = "MARCHE_ModificaMarca";
        cmd.Parameters.AddWithValue("@marca", marca);
        cmd.Parameters.AddWithValue("@chiave", chiave);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        DataBind();
    }
}