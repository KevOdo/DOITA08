using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// per utilizzare il Data Table
using System.Data;
// per lavorare con SQL Server
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCaricaDati_Click(object sender, EventArgs e)
    {
        //1 creo una connessione
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=DESKTOP-QNAP4SN\\SQLEXPRESS;Initial Catalog=AUTOSALONI;Integrated Security=true;";

        //2 apro la connessione
        conn.Open();

        //3 rifilo la query al command
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        string qry = "select * from CLIENTI";
        cmd.CommandText = qry;

        //4 mando il command al db con la query
        SqlDataAdapter DA = new SqlDataAdapter();
        DA.SelectCommand = cmd;

        //5 leggo cosa mi restituisce il command(nel data adapter)
        //6 il DA mni crea una tabella
        DataTable DT = new DataTable();
        DA.Fill(DT);

        //chiudo la connessione
        conn.Close();

        //7 leggo la tabella e la presento a video
        //litDati.Text = "Numero di records letti: " + DT.Rows.Count.ToString();

        //litDati.Text = DT.Rows[0]["COGNOME"].ToString();

        foreach (DataRow riga in DT.Rows)
        {
            litDati.Text += riga["COGNOME"].ToString() + "<br/>";
        }
    }
}