using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _ModModello : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnModifica_Click(object sender, EventArgs e)
    {
        if (gridModello.SelectedValue == null)
        {
            return;
        }

        SqlConnection conn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter DA = new SqlDataAdapter();
        DataTable DT = new DataTable();
        conn.ConnectionString = "Data Source=DESKTOP-QNAP4SN\\SQLEXPRESS;Initial Catalog=AUTOSALONI;Integrated Security=true;";
        string chiave = gridModello.SelectedValue.ToString();

        cmd.Connection = conn;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "MODELLI_GetRecordByKey";
        cmd.Parameters.AddWithValue("@chiave", chiave);

        DA.SelectCommand = cmd;
        DA.Fill(DT);

        txtModello.Text = DT.Rows[0][1].ToString();
        txtMotor.Text = DT.Rows[0][4].ToString();

        ddlAlimentazione.Text = DT.Rows[0][2].ToString().Trim();
        ddlCambio.Text = DT.Rows[0][3].ToString().Trim();

        ddlChangeMarca.SelectedValue = DT.Rows[0][0].ToString().Trim();

    }

    protected void btnModello_Click(object sender, EventArgs e)
    {
        string chiave = gridModello.SelectedValue.ToString();
        string chiaveMarca = ddlChangeMarca.SelectedValue.ToString();
        string modello = txtModello.Text.Trim();
        string alimentazione = ddlAlimentazione.SelectedValue.ToString().Trim();
        string cambio = ddlCambio.SelectedValue.ToString().Trim();
        string motorizzazione = txtMotor.Text.Trim();

        SqlConnection conn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();

        conn.ConnectionString = "Data Source=DESKTOP-QNAP4SN\\SQLEXPRESS;Initial Catalog=AUTOSALONI;Integrated Security=true";
        cmd.Connection = conn;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "MODELLI_ModificaModello";

        cmd.Parameters.AddWithValue("@chiave", chiave);
        cmd.Parameters.AddWithValue("@chiaveMarca", chiaveMarca);
        cmd.Parameters.AddWithValue("@modello", modello);
        cmd.Parameters.AddWithValue("@alimentazione", alimentazione);
        cmd.Parameters.AddWithValue("@cambio", cambio);
        cmd.Parameters.AddWithValue("@motorizzazione", motorizzazione);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        //gridModello.DataBind();

    }

    protected void btnAggiorna_Click(object sender, EventArgs e)
    {
        gridModello.DataBind();
    }
}