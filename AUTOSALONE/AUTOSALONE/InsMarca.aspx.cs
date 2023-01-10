using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _InsMarca : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnMarca_Click(object sender, EventArgs e)
    {
        // controlli formali
        if (txtMarca.Text.Trim() == "")
        {
            return;
        }

        // database operations
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=DESKTOP-QNAP4SN\\SQLEXPRESS;Initial Catalog=AUTOSALONI;Integrated Security=true";
        SqlCommand cmdMarca = new SqlCommand();
        cmdMarca.Connection = conn;
        cmdMarca.CommandText = "insert into MARCHE values(@marca)";
        cmdMarca.Parameters.AddWithValue("@marca", txtMarca.Text.Trim());

        conn.Open();
        cmdMarca.ExecuteNonQuery();
        conn.Close();

        DataBind();

    }
}