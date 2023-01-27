using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DATABASE DB = new DATABASE();

        //DB.query = "SELECT * FROM UTENTI";
        //grdUtenti.DataSource = DB.EseguiQueryRead();
        //grdUtenti.DataBind();

        DB.query = "UTENTI_SelectAll";
        grdUtenti.DataSource = DB.EseguiSPRead();
        grdUtenti.DataBind();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        DATABASE DB = new DATABASE();

        // inserimento con query
        //DB.query = "insert into UTENTI values('pippo','ciao','X')";
        //DB.EseguiQueryNonRead();
        //grdUtenti.DataBind();

        // inserimento con stored procedure
        DB.query = "UTENTI_Inserimento";
        DB.cmd.Parameters.AddWithValue("@u","pluto");
        DB.cmd.Parameters.AddWithValue("@p","ciapali");
        DB.cmd.Parameters.AddWithValue("@t","R");
        DB.EseguiSPNonRead();
        grdUtenti.DataBind();
    }
}