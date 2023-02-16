using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Descrizione di riepilogo per WSprimo
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Per consentire la chiamata di questo servizio Web dallo script utilizzando ASP.NET AJAX, rimuovere il commento dalla riga seguente. 
// [System.Web.Script.Services.ScriptService]
public class WSprimo : System.Web.Services.WebService
{

    public WSprimo()
    {

        //Rimuovere il commento dalla riga seguente se si utilizzano componenti progettati 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld()
    {
        return "Hello Peppino!";
    }

    [WebMethod]
    public DataTable ElencoUtenti()
    {
        DataTable dt = new DataTable();
    
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = @"Data Source=DESKTOP-QNAP4SN\SQLEXPRESS;Initial Catalog=AUTOSALONI;Integrated Security=true;Pooling=false;";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from UTENTI";
        SqlDataAdapter DA = new SqlDataAdapter();
        DA.SelectCommand = cmd;
        DA.Fill(dt);
        dt.TableName = "Utenti";

        return dt;
    }

}
