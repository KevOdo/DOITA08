using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnModifica_Click(object sender, EventArgs e)
    {
        string chiave = GridVend.SelectedValue.ToString();

        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.AddWithValue("@chiave", chiave);
        DataTable DT = DB.EseguiSPRead("VENDITORI_GetByKey");

        ddlfil.SelectedValue = DT.Rows[0][1].ToString();
        txtCognome.Text = DT.Rows[0][2].ToString();
        txtNome.Text = DT.Rows[0][3].ToString();

        DataBind();
    }

    protected void btnSalva_Click(object sender, EventArgs e)
    {
        string chiave = GridVend.SelectedValue.ToString();
        string chiaveFiliale = ddlfil.Text.Trim();
        string nome = txtNome.Text.Trim();
        string cognome = txtCognome.Text.Trim();

        if (txtNome.Text.Trim() == "" || txtCognome.Text.Trim() == "")
        {
            return;
        }

        DATABASE DB = new DATABASE();

        DB.cmd.Parameters.AddWithValue("@nome", nome);
        DB.cmd.Parameters.AddWithValue("@cognome", cognome);
        DB.cmd.Parameters.AddWithValue("@chiave", chiave);
        DB.cmd.Parameters.AddWithValue("@chiaveFiliale", chiaveFiliale);

        DB.EseguiSPNonRead("VENDITORI_ModificaVenditore");

        DataBind();
    }
}