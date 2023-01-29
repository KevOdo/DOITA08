using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegistra_Click(object sender, EventArgs e)
    {
        // controlli formali
        if (String.IsNullOrEmpty(txtEmail.Text)) 
        {
            return;
        }

        UTENTI U = new UTENTI();
        U.email = txtEmail.Text;
        U.Registra();
    }
}