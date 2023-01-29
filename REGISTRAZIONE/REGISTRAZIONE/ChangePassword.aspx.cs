using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ltlOldPWD.Text = "Old Password: " + Session["PWD"];
    }

    protected void btnChangePWD_Click(object sender, EventArgs e)
    {
        string PWD = txtNewPWD.Text;

        // controlli formali
        if (String.IsNullOrEmpty(PWD))
        {
            return;
        }
        if (PWD == Session["PWD"].ToString())
        {
            return;
        }

        UTENTI U = new UTENTI();
        U.password = PWD;
        U.chiave = Session["chiave"].ToString();
        U.ChangePWD();
        Session["PWD"] = PWD;
        Response.Redirect("Home.aspx");
    }
}