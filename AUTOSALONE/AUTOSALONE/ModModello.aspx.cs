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
    protected void btnModello_Click(object sender, EventArgs e)
    {
        string modello = txtModello.Text.Trim();
        string alimentazione = ddlAlimentazione.SelectedValue.ToString();
        string cambio = ddlCambio.SelectedValue.ToString();
        string motorizzazione = txtMotor.Text.Trim();

        SqlConnection conn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        conn.ConnectionString = "Data Source=DESKTOP-QNAP4SN\\SQLEXPRESS;Initial Catalog=AUTOSALONI;Integrated Security=true";
        cmd.Connection = conn;

        string qry = "update MODELLI set";
        if (chkMod.Checked == true)
        {
            if (modello == "")
            {
                return;
            }
            qry += " MODELLO='" + modello + "',";
        }
        if (chkAlim.Checked == true)
        {
            if (alimentazione == "")
            {
                return;
            }
            qry += " ALIMENTAZIONE='" + alimentazione + "',";
        }
        if (chkCambio.Checked == true)
        {
            if (cambio == "")
            {
                return;
            }
            qry += " CAMBIO='" + cambio + "',";
        }
        if (chkMotor.Checked == true)
        {
            if (motorizzazione == "")
            {
                return;
            }
            qry += " MOTORIZZAZIONE='" + motorizzazione + "',";
        }
        if (qry.EndsWith(","))
        {
            qry = qry.Remove(qry.Length - 1);
        }
        qry += " where chiave=" + ddlChiaveModello.SelectedValue;

        cmd.CommandText = qry;
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        DataBind();
    }
}