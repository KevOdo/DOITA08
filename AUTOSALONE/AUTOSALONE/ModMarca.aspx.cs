using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.NetworkInformation;

public partial class _ModMarca : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnModifica_Click(object sender, EventArgs e)
    {
        if (gridMarche.SelectedValue == null)
        {
            return;
        }

        SqlConnection conn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter DA = new SqlDataAdapter();
        DataTable DT = new DataTable();
        conn.ConnectionString = "Data Source=DESKTOP-QNAP4SN\\SQLEXPRESS;Initial Catalog=AUTOSALONI;Integrated Security=true;";
        string chiave = gridMarche.SelectedValue.ToString();

        cmd.Connection = conn;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "MARCHE_GetRecordByKey";
        cmd.Parameters.AddWithValue("@chiave", chiave);

        DA.SelectCommand = cmd;
        DA.Fill(DT);

        txtMarca.Text = DT.Rows[0][0].ToString();
        txtNazione.Text = DT.Rows[0][1].ToString();
    }

    protected void btnSalva_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter DA = new SqlDataAdapter();
        DataTable DT = new DataTable();
        conn.ConnectionString = "Data Source=DESKTOP-QNAP4SN\\SQLEXPRESS;Initial Catalog=AUTOSALONI;Integrated Security=true;";

        string chiave = gridMarche.SelectedValue.ToString();
        string marca = txtMarca.Text.Trim();
        string nazione = txtNazione.Text.Trim();

        cmd.Connection = conn;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "MARCHE_GetRecordByMarca";
        cmd.Parameters.AddWithValue("@marca", marca);

        DA.SelectCommand = cmd;
        DA.Fill(DT);
        
        if(DT.Rows.Count != 0)
        {
            return;
        }

        cmd.CommandText = "MARCHE_ModificaMarca";
        cmd.Parameters.Clear();
        cmd.Parameters.AddWithValue("@chiave", chiave);
        cmd.Parameters.AddWithValue("@marca", marca);
        cmd.Parameters.AddWithValue("@nazione", nazione);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();


        DataBind();
    }

    
}