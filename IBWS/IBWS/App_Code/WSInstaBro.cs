using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descrizione di riepilogo per WSInstaBro
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Per consentire la chiamata di questo servizio Web dallo script utilizzando ASP.NET AJAX, rimuovere il commento dalla riga seguente. 
// [System.Web.Script.Services.ScriptService]
public class WSInstaBro : System.Web.Services.WebService
{

    public WSInstaBro()
    {

        //Rimuovere il commento dalla riga seguente se si utilizzano componenti progettati 
        //InitializeComponent(); 
    }

    [WebMethod]
    public DataTable IMGLast50()
    {
        DATABASE.query = "spIMMAGINI_SelectLast50";
        DataTable DT = DATABASE.ExecuteReadStoredP();
        DT.TableName = "IMMAGINI";

        return DT;
    }

}
