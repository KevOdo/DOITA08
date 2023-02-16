using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // leggo il webservice dall'altro sito
        RIFSER.WSprimoSoapClient c = new RIFSER.WSprimoSoapClient();
        
        DataTable DT = new DataTable();
        DT = c.ElencoUtenti();
        grd.DataSource = DT;
        grd.DataBind();
    }
}