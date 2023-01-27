using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _InsVenditore : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSalva_Click(object sender, EventArgs e)
    {
        string nome = txtNome.Text.Trim();
        string cognome = txtCognome.Text.Trim();
        string chiaveFiliale = ddlFiliale.SelectedValue.ToString();

        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.AddWithValue("@chiaveFiliale", chiaveFiliale);
        DB.cmd.Parameters.AddWithValue("@cognome", cognome);
        DB.cmd.Parameters.AddWithValue("@nome", nome);

        DB.EseguiSPNonRead("VENDITORI_InsertVenditore");

        DataBind();

    }
}