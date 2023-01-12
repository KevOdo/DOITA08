using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Inizio : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnInvia_Click(object sender, EventArgs e)
    {
        // lo scopo e' passare il contenuto di txtCodice alla pagina destinazione

        //1^ Modo
        string cod = txtCodice.Text;
        //Response.Redirect("Destinazione.aspx?cod="+cod);

        //2^ Modo - SESSION
        Session["cod"] = cod;
        Response.Redirect("Destinazione.aspx");
    }
}