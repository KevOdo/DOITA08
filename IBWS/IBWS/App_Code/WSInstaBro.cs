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
    public DataTable IMG_Last50()
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.query = "spIMMAGINI_SelectLast50";
        DataTable DT = DB.ExecuteReadStoredP();
        DT.TableName = "IMMAGINI";

        return DT;
    }

    [WebMethod]
    public void IMG_UploadImg(string chiaveAlbum, byte[] imgData, string titolo, string descrizione, string tipo, string data)
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.query = "spIMMAGINI_Insert";
        DB.cmd.Parameters.AddWithValue("@chiaveALBUM", chiaveAlbum);
        DB.cmd.Parameters.AddWithValue("@DOC", imgData);
        DB.cmd.Parameters.AddWithValue("@TITOLO", titolo);
        DB.cmd.Parameters.AddWithValue("@DESCRIZIONE", descrizione);
        DB.cmd.Parameters.AddWithValue("@TIPO", tipo);
        DB.cmd.Parameters.AddWithValue("@DATACARICAMENTO", data);
        DB.ExecuteNotReadStoredP();
    }

    [WebMethod]
    public DataTable IMG_SelectByKey(string chiave)
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.cmd.Parameters.AddWithValue("@chiave", chiave);
        DB.query = "spIMMAGINI_SelectByKey";
        DataTable DT = DB.ExecuteReadStoredP();
        DT.TableName = "IMMAGINE";

        return DT;
    }

    [WebMethod]
    public DataTable IMG_SelectByAlbum(string chiaveALBUM)
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.cmd.Parameters.AddWithValue("@chiaveALBUM", chiaveALBUM);
        DB.query = "spIMMAGINI_SelectByKey";
        DataTable DT = DB.ExecuteReadStoredP();
        DT.TableName = "IMMAGINI";

        return DT;
    }

    [WebMethod]
    public DataTable IMG_SelectAll()
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.query = "spIMMAGINI_SelectAll";
        DataTable DT = DB.ExecuteReadStoredP();
        DT.TableName = "IMMAGINI";

        return DT;
    }

    [WebMethod]
    public DataTable FilterSearchBar(string searchTerm)
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.cmd.Parameters.AddWithValue("@searchTerm", searchTerm);
        DB.query = "sp_FilterSearchBar";
        DataTable DT = DB.ExecuteReadStoredP();
        DT.TableName = "IMMAGINI";

        return DT;
    }

    [WebMethod]
    public void ALB_Insert(string chiaveUTENTE, string titolo)
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.query = "spALBUM_Insert";
        DB.cmd.Parameters.AddWithValue("@chiaveUTENTE", chiaveUTENTE);
        DB.cmd.Parameters.AddWithValue("@TITOLO", titolo);
        DB.ExecuteNotReadStoredP();
    }

    [WebMethod]
    public void ALB_Update(string chiave, string chiaveUTENTE, string titolo)
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.query = "spALBUM_Update";
        DB.cmd.Parameters.AddWithValue("@chiave", chiave);
        DB.cmd.Parameters.AddWithValue("@chiaveUTENTE", chiaveUTENTE);
        DB.cmd.Parameters.AddWithValue("@TITOLO", titolo);
        DB.ExecuteNotReadStoredP();
    }

    [WebMethod]
    public DataTable ALB_SelectByKey(string chiave)
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.cmd.Parameters.AddWithValue("@chiave", chiave);
        DB.query = "spALBUM_SelectByKey";
        DataTable DT = DB.ExecuteReadStoredP();
        DT.TableName = "ALBUM";

        return DT;
    }

    [WebMethod]    
    public DataTable ALB_SelectByUtente(string chiaveUTENTE)
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.cmd.Parameters.AddWithValue("@chiaveUTENTE", chiaveUTENTE);
        DB.query = "spALBUM_SelectUtente";
        DataTable DT = DB.ExecuteReadStoredP();
        DT.TableName = "ALBUM";

        return DT;
    }

    [WebMethod]
    public DataTable ALB_SelectAll()
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.query = "spALBUM_SelectAll";
        DataTable DT = DB.ExecuteReadStoredP();
        DT.TableName = "ALBUM";

        return DT;
    }

    [WebMethod]
    public void USR_Registra(string email, string PWD)
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.query = "spUTENTI_Registra";
        DB.cmd.Parameters.AddWithValue("@EMAIL", email);
        DB.cmd.Parameters.AddWithValue("@PWD", PWD);
        DB.ExecuteNotReadStoredP();
    }

    [WebMethod]
    public DataTable USR_Login(string email, string PWD)
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.cmd.Parameters.AddWithValue("@EMAIL", email);
        DB.cmd.Parameters.AddWithValue("@PWD", PWD);
        DB.query = "spUTENTI_Login";
        DataTable DT = DB.ExecuteReadStoredP();
        DT.TableName = "UTENTE";

        return DT;
    }

    [WebMethod]
    public DataTable USR_SelectByKey(string chiave)
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.cmd.Parameters.AddWithValue("@chiave", chiave);
        DB.query = "spUTENTI_SelectByKey";
        DataTable DT = DB.ExecuteReadStoredP();
        DT.TableName = "UTENTE";

        return DT;
    }

    [WebMethod]
    public void USR_CambiaPWD(string chiave, string PWD)
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.query = "spUTENTI_CambiaPWD";
        DB.cmd.Parameters.AddWithValue("@chiave", chiave);
        DB.cmd.Parameters.AddWithValue("@PWD", PWD);
        DB.ExecuteNotReadStoredP();
    }

    [WebMethod]
    public void USR_Update(string chiave, string NOME, string COGNOME, string EMAIL)
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.query = "spUTENTI_CambiaPWD";
        DB.cmd.Parameters.AddWithValue("@chiave", chiave);
        DB.cmd.Parameters.AddWithValue("@NOME", NOME);
        DB.cmd.Parameters.AddWithValue("@COGNOME", COGNOME);
        DB.cmd.Parameters.AddWithValue("@EMAIL", EMAIL);
        DB.ExecuteNotReadStoredP();
    }

    [WebMethod]
    public void USR_UpdateImgProfilo(string chiave, byte[] imgData, string tipo)
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.query = "spUTENTI_CambiaPWD";
        DB.cmd.Parameters.AddWithValue("@chiave", chiave);
        DB.cmd.Parameters.AddWithValue("@IMGPROFILO", imgData);
        DB.cmd.Parameters.AddWithValue("@TIPOIMG", tipo);
        DB.ExecuteNotReadStoredP();
    }


}
