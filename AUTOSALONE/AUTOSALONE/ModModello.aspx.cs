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

        MODELLI MOD = new MODELLI();
        MOD.chiave = int.Parse(gridModello.SelectedValue.ToString());
        DataTable DT = MOD.GetRecordByKey();

        txtModello.Text = DT.Rows[0][1].ToString();
        txtMotor.Text = DT.Rows[0][4].ToString();

        ddlAlimentazione.Text = DT.Rows[0][2].ToString().Trim();
        ddlCambio.Text = DT.Rows[0][3].ToString().Trim();

        ddlChangeMarca.SelectedValue = DT.Rows[0][0].ToString().Trim();

    }

    protected void btnModello_Click(object sender, EventArgs e)
    {
        MODELLI MOD = new MODELLI();
        MOD.chiave = int.Parse(gridModello.SelectedValue.ToString()); ;
        MOD.chiaveMarca = int.Parse(ddlChangeMarca.SelectedValue.ToString()); ;
        MOD.modello = txtModello.Text.Trim(); ;
        MOD.alimentazione = ddlAlimentazione.SelectedValue.ToString().Trim(); ;
        MOD.cambio = ddlCambio.SelectedValue.ToString().Trim(); ;
        MOD.motorizzazione = txtMotor.Text.Trim();
        MOD.ModificaModello();

        gridModello.DataBind();
    }

    protected void btnAggiorna_Click(object sender, EventArgs e)
    {
        gridModello.DataBind();
    }
}