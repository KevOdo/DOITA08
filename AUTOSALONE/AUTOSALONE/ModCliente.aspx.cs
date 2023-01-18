using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _ModCliente : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnCerca_Click(object sender, EventArgs e)
    {
        DataBind();
    }

    protected void btnCercaRS_Click(object sender, EventArgs e)
    {
        DataBind();
    }

    protected void btnModifica_Click(object sender, EventArgs e)
    {
        if (gridClienti.SelectedValue == null)
        {
            return;
        }

        SqlConnection conn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter DA = new SqlDataAdapter();
        DataTable DT = new DataTable();
        conn.ConnectionString = "Data Source=DESKTOP-QNAP4SN\\SQLEXPRESS;Initial Catalog=AUTOSALONI;Integrated Security=true;";
        string chiave = gridClienti.SelectedValue.ToString();

        cmd.Connection = conn;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "CLIENTI_GetRecordByKey";
        cmd.Parameters.AddWithValue("@chiave", chiave);

        DA.SelectCommand = cmd;
        DA.Fill(DT);

        txtCognomeMod.Text = DT.Rows[0][1].ToString();
        txtNomeMod.Text = DT.Rows[0][2].ToString();
        txtRSMod.Text = DT.Rows[0][3].ToString();
        txtIndirizzoMod.Text = DT.Rows[0][4].ToString();
        txtCittaMod.Text = DT.Rows[0][5].ToString();
        txtProvinciaMod.Text = DT.Rows[0][6].ToString();
        txtCAPMod.Text = DT.Rows[0][7].ToString();
    }

    protected void btnRegistra_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter DA = new SqlDataAdapter();
        DataTable DT = new DataTable();
        conn.ConnectionString = "Data Source=DESKTOP-QNAP4SN\\SQLEXPRESS;Initial Catalog=AUTOSALONI;Integrated Security=true;";

        string chiave = gridClienti.SelectedValue.ToString();
        string cognome = txtCognomeMod.Text;
        string nome = txtNomeMod.Text;
        string rs = txtRSMod.Text;
        string indirizzo = txtIndirizzoMod.Text;
        string citta = txtCittaMod.Text;
        string provincia = txtProvinciaMod.Text;
        string cap = txtCAPMod.Text;

        cmd.Connection = conn;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "CLIENTI_ModificaCliente";
        cmd.Parameters.Clear();
        cmd.Parameters.AddWithValue("@chiave", chiave);
        cmd.Parameters.AddWithValue("@cognome", cognome);
        cmd.Parameters.AddWithValue("@nome", nome);
        cmd.Parameters.AddWithValue("@rs", rs);
        cmd.Parameters.AddWithValue("@indirizzo", indirizzo);
        cmd.Parameters.AddWithValue("@citta", citta);
        cmd.Parameters.AddWithValue("@provincia", provincia);
        cmd.Parameters.AddWithValue("@cap", cap);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();


        DataBind();
    }
        
}