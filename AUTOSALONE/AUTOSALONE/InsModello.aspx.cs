using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _InsModello : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnModello_Click(object sender, EventArgs e)
    {
        // controllo formale
        if (txtModello.Text.Trim() == "")
        {
            return;
        }

        // gestione oggetti per la connessione
        SqlConnection conn = new SqlConnection();
        SqlCommand cmdModello = new SqlCommand();

        string marca = ddlMarca.SelectedValue.ToString();
        string modello = txtModello.Text.Trim();
        string alimentazione = ddlAlimentazione.SelectedValue.ToString();
        string cambio = ddlCambio.SelectedValue.ToString();
        string motor = txtMotor.Text.Trim();

        conn.ConnectionString = "Data Source=DESKTOP-QNAP4SN\\SQLEXPRESS;Initial Catalog=AUTOSALONI;Integrated Security=true";
        cmdModello.Connection = conn;
        cmdModello.CommandText = "insert into MODELLI values(@marca,@modello,@alimentazio@cambio,@motor)";
        cmdModello.Parameters.AddWithValue("@marca", marca);
        cmdModello.Parameters.AddWithValue("@modello", modello);
        cmdModello.Parameters.AddWithValue("@alimentazione", alimentazione);
        cmdModello.Parameters.AddWithValue("@cambio", cambio);
        cmdModello.Parameters.AddWithValue("@motor", motor);

        conn.Open();
        cmdModello.ExecuteNonQuery();
        conn.Close();

        DataBind();

    }
}