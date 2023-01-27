using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.NetworkInformation;

public partial class _ModMarca : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnModifica_Click(object sender, EventArgs e)
    {
        if (gridMarche.SelectedValue == null)
        {
            return;
        }

        DATABASE DB = new DATABASE();
        string chiave = gridMarche.SelectedValue.ToString();
        DB.cmd.Parameters.AddWithValue("@chiave", chiave);

        DataTable DT = DB.EseguiSPRead("MARCHE_GetRecordByKey");

        txtMarca.Text = DT.Rows[0][0].ToString();
        txtNazione.Text = DT.Rows[0][1].ToString();
    }

    protected void btnSalva_Click(object sender, EventArgs e)
    {
        DATABASE DB = new DATABASE();

        string chiave = gridMarche.SelectedValue.ToString();
        string marca = txtMarca.Text.Trim();
        string nazione = txtNazione.Text.Trim();
        DB.cmd.Parameters.AddWithValue("@marca", marca);
        DataTable DT = DB.EseguiSPRead("MARCHE_GetRecordByMarca");
        
        if(DT.Rows.Count != 0 && chiave != DT.Rows[0][0].ToString())
        {
            return;
        }

        DB.cmd.Parameters.Clear();
        DB.cmd.Parameters.AddWithValue("@chiave", chiave);
        DB.cmd.Parameters.AddWithValue("@marca", marca);
        DB.cmd.Parameters.AddWithValue("@nazione", nazione);

        DB.EseguiSPNonRead("MARCHE_ModificaMarca");

        DataBind();
    }

    
}