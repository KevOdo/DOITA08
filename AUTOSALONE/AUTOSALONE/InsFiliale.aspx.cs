using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _InsFiliale : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSalva_Click(object sender, EventArgs e)
    {
        string nome = txtNome.Text.Trim();
        string indirizzo = txtIndirizzo.Text.Trim();
        string citta = txtCitta.Text.Trim();
        string provincia = txtProvincia.Text.Trim();
        string cap = txtCAP.Text.Trim();
        string telefono = txtTelefono.Text.Trim();
        string email = txtEmail.Text.Trim();

        DATABASE DB = new DATABASE();
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();

        DB.cmd.Parameters.AddWithValue("@nomefiliale", nome);
        DB.cmd.Parameters.AddWithValue("@indirizzo", indirizzo);
        DB.cmd.Parameters.AddWithValue("@citta", citta);
        DB.cmd.Parameters.AddWithValue("@provincia", provincia);
        DB.cmd.Parameters.AddWithValue("@cap", cap);
        DB.cmd.Parameters.AddWithValue("@telefono", telefono);
        DB.cmd.Parameters.AddWithValue("@email", email);

        DB.EseguiSPNonRead("FILIALI_InsertFiliale");

        DataBind();
    }
}