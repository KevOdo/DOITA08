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

        TRANSAZIONI TR = new TRANSAZIONI();
        TR.chiaveAutomobile = int.Parse(gridAuto.SelectedValue.ToString());
        TR.chiaveCliente = int.Parse(gridClienti.SelectedValue.ToString());
        TR.chiaveVenditore = int.Parse(GridVend.SelectedValue.ToString());
        TR.dataTransazione = txtData.Text;
        TR.metodoPagamento = txtMP.Text;
        TR.acquistoVendita = ddlAV.SelectedValue.ToString();
        TR.prezzo = int.Parse(txtPrezzo.Text);
        TR.InsertTransazione();

        DataBind();

    }
}