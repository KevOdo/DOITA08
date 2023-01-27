using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCalcola_Click(object sender, EventArgs e)
    {
        string s;
        // DataTable = classe ~~~ DT = oggetto ~~~ DataTable() = costruttore
        DataTable DT = new DataTable();

        //lblRisultato.Text = (int.Parse(txtUno.Text) + int.Parse(txtDue.Text)).ToString();
        CALCOLI c = new CALCOLI();
        c.op1 = txtUno.Text;
        c.op2 = txtDue.Text;
        lblRisultato.Text = c.Somma().ToString();
    }
}