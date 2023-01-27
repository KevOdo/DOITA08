using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _InsModello : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnModello_Click(object sender, EventArgs e)
    {
        // controllo formale
        if (txtModello.Text.Trim() == "")
        {
            return;
        }

        // gestione oggetti per la connessione
        MODELLI MOD = new MODELLI();
        MOD.chiaveMarca = int.Parse(ddlMarca.SelectedValue.ToString()); ;
        MOD.modello = txtModello.Text.Trim(); ;
        MOD.alimentazione = ddlAlimentazione.SelectedValue.ToString(); ;
        MOD.cambio = ddlCambio.SelectedValue.ToString(); ;
        MOD.motorizzazione = txtMotor.Text.Trim(); ;

        MOD.InsertModello();

        DataBind();

    }
}