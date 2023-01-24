using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _InsTransazione : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void gridAuto_SelectedIndexChanged(object sender, EventArgs e)
    {
        gridAuto.DataBind();
    }

    protected void btnCerca_Click(object sender, EventArgs e)
    {
        gridClienti.DataBind();
    }

    protected void btnCercaRS_Click(object sender, EventArgs e)
    {
        gridClienti.DataBind();
    }

    protected void btnSalva_Click(object sender, EventArgs e)
    {
        string chiaveAuto = gridAuto.SelectedValue.ToString();
        string chiaveCliente = gridClienti.SelectedValue.ToString();
        string chiaveVenditore = GridVend.SelectedValue.ToString();
        string data = txtData.Text;
        string MP = txtMP.Text;
        string AV = ddlAV.SelectedValue.ToString();
        string prezzo = txtPrezzo.Text;

        SqlConnection conn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter DA = new SqlDataAdapter();
        DataTable DT = new DataTable();
        conn.ConnectionString = "Data Source=DESKTOP-QNAP4SN\\SQLEXPRESS;Initial Catalog=AUTOSALONI;Integrated Security=true;";
        cmd.Connection = conn;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "TRANSAZIONI_InsertTransazione";
        cmd.Parameters.AddWithValue("@chiaveAuto", chiaveAuto);
        cmd.Parameters.AddWithValue("@chiaveCliente", chiaveCliente);
        cmd.Parameters.AddWithValue("@chiaveVenditore", chiaveVenditore);
        cmd.Parameters.AddWithValue("@data", data);
        cmd.Parameters.AddWithValue("@MP", MP);
        cmd.Parameters.AddWithValue("@AV", AV);
        cmd.Parameters.AddWithValue("@prezzo", prezzo);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

    }
}