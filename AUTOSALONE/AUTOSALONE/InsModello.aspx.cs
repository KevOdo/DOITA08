using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class InsModello : System.Web.UI.Page
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

        conn.ConnectionString = "Data Source=DESKTOP-QNAP4SN\\SQLEXPRESS;Initial Catalog=AUTOSALONI;Integrated Security=true";
        cmdModello.Connection = conn;
        cmdModello.CommandText = "insert into MODELLI values(" + ddlMarca.SelectedValue.ToString() + ",'" + txtModello.Text.Trim() + "','" + ddlAlimentazione.SelectedValue.ToString() + "','" + ddlCambio.SelectedValue.ToString() + "','" + txtMotor.Text.Trim() + "')";
        conn.Open();
        cmdModello.ExecuteNonQuery();
        conn.Close();

        DataBind();

    }
}