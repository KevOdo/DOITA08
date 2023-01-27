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

        CLIENTI CL = new CLIENTI();
        CL.chiave = int.Parse(gridClienti.SelectedValue.ToString());
        DataTable DT = CL.GetRecordByKey();

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
        CLIENTI CL = new CLIENTI();

        CL.chiave = int.Parse(gridClienti.SelectedValue.ToString());
        CL.cognome = txtCognomeMod.Text;
        CL.nome = txtNomeMod.Text;
        CL.RS = txtRSMod.Text;
        CL.indirizzo = txtIndirizzoMod.Text;
        CL.citta = txtCittaMod.Text;
        CL.provincia = txtProvinciaMod.Text;
        CL.cap = txtCAPMod.Text;

        CL.ModificaCliente();

        DataBind();
    }
        
}