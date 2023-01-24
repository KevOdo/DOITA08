using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _ModFiliale : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void grdFiliali_SelectedIndexChanged(object sender, EventArgs e)
    {       
        string chiave = grdFiliali.SelectedValue.ToString();

        SqlConnection conn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter DA = new SqlDataAdapter();
        DataTable DT = new DataTable();

        conn.ConnectionString = "Data Source=DESKTOP-QNAP4SN\\SQLEXPRESS;Initial Catalog=AUTOSALONI;Integrated Security=true";
        cmd.Connection = conn;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "FILIALI_GetByKey";
        cmd.Parameters.AddWithValue("@chiave", chiave);

        DA.SelectCommand = cmd;
        DA.Fill(DT);

        txtNome.Text = DT.Rows[0][0].ToString();
        txtIndirizzo.Text = DT.Rows[0][1].ToString();
        txtCitta.Text = DT.Rows[0][2].ToString();
        txtProvincia.Text = DT.Rows[0][3].ToString();
        txtCAP.Text = DT.Rows[0][4].ToString();
        txtTelefono.Text = DT.Rows[0][5].ToString();
        txtEmail.Text = DT.Rows[0][6].ToString();

        DataBind();
    }

    protected void btnSalva_Click(object sender, EventArgs e)
    {
        string chiave = grdFiliali.SelectedValue.ToString();
        string nome = txtNome.Text.Trim();
        string indirizzo = txtIndirizzo.Text.Trim();
        string citta = txtCitta.Text.Trim();
        string provincia = txtProvincia.Text.Trim();
        string cap = txtCAP.Text.Trim();
        string telefono = txtTelefono.Text.Trim();
        string email = txtEmail.Text.Trim();        

        SqlConnection conn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();

        conn.ConnectionString = "Data Source=DESKTOP-QNAP4SN\\SQLEXPRESS;Initial Catalog=AUTOSALONI;Integrated Security=true";
        cmd.Connection = conn;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "FILIALI_ModificaFiliale";

        cmd.Parameters.AddWithValue("@chiave", chiave);
        cmd.Parameters.AddWithValue("@nome",nome);
        cmd.Parameters.AddWithValue("@indirizzo", indirizzo);
        cmd.Parameters.AddWithValue("@citta", citta);
        cmd.Parameters.AddWithValue("@provincia", provincia);
        cmd.Parameters.AddWithValue("@cap", cap);
        cmd.Parameters.AddWithValue("@telefono", telefono);
        cmd.Parameters.AddWithValue("@email", email);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        DataBind();

    }
}