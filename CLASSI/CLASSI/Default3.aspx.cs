using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCrypt_Click(object sender, EventArgs e)
    {
        Crypt cr = new Crypt();
        lblRisultato.Text = cr.Crypta(txtUno.Text);
    }

    protected void btnDecrypt_Click(object sender, EventArgs e)
    {
        Crypt cr = new Crypt();
        lblRisultato2.Text = cr.Decrypta(txtDue.Text);
    }
}