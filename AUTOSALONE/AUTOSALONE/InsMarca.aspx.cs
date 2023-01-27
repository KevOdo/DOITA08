using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _InsMarca : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnMarca_Click(object sender, EventArgs e)
    {
        // controlli formali
        if (txtMarca.Text.Trim() == "")
        {
            return;
        }

        // database operations
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.AddWithValue("@marca", txtMarca.Text.Trim());
        DB.EseguiSPNonRead("MARCHE_InsertMarca");
        DataBind();

    }
}