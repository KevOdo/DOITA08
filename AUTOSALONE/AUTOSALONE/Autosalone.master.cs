using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Autosalone : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // nascondi campi ADMIN
        dropMarche.Visible = false;
        dropModelli.Visible = false;
        dropAuto.Visible = false;
        dropFiliali.Visible = false;
        dropVenditori.Visible = false;
        dropReport.Visible = false;

        // se l'utente e' admin mostra quei campi
        if (Session["usrType"].ToString() == "A")
        {
            dropMarche.Visible = true;
            dropModelli.Visible = true;
            dropAuto.Visible = true;
            dropFiliali.Visible = true;
            dropVenditori.Visible = true;
            dropReport.Visible = true;
        }
    }

    // on logout clear session data
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["usrType"] = "";
    }
}
