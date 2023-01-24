using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnModifica_Click(object sender, EventArgs e)
    {
        string chiave = GridVend.SelectedValue.ToString();

        SqlConnection conn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter DA = new SqlDataAdapter();
        DataTable DT = new DataTable();
        conn.ConnectionString = "Data Source=DESKTOP-QNAP4SN\\SQLEXPRESS;Initial Catalog=AUTOSALONI;Integrated Security=true;";
        
        cmd.Connection = conn;
        cmd.CommandText = "VENDITORI_GetByKey";
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@chiave", chiave);

        DA.SelectCommand = cmd;
        DA.Fill(DT);

        ddlfil.SelectedValue = DT.Rows[0][1].ToString();
        txtCognome.Text = DT.Rows[0][2].ToString();
        txtNome.Text = DT.Rows[0][3].ToString();

        DataBind();
    }

    protected void btnSalva_Click(object sender, EventArgs e)
    {
        string chiave = GridVend.SelectedValue.ToString();
        string chiaveFiliale = ddlfil.Text.Trim();
        string nome = txtNome.Text.Trim();
        string cognome = txtCognome.Text.Trim();

        if (txtNome.Text.Trim() == "" || txtCognome.Text.Trim() == "")
        {
            return;
        }

        SqlConnection conn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter DA = new SqlDataAdapter();
        DataTable DT = new DataTable();
        
        conn.ConnectionString = "Data Source=DESKTOP-QNAP4SN\\SQLEXPRESS;Initial Catalog=AUTOSALONI;Integrated Security=true;";
        cmd.Connection = conn;
        cmd.CommandType = CommandType.StoredProcedure;        
        cmd.CommandText = "VENDITORI_ModificaVenditore";

        cmd.Parameters.AddWithValue("@nome", nome);
        cmd.Parameters.AddWithValue("@cognome", cognome);
        cmd.Parameters.AddWithValue("@chiave", chiave);
        cmd.Parameters.AddWithValue("@chiaveFiliale", chiaveFiliale);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        DataBind();
    }
}