<%@ WebHandler Language="C#" Class="AsyncHandler" %>

using System;
using System.Web;
using System.Threading.Tasks;
using System.Data;

public class AsyncHandler : HttpTaskAsyncHandler {

    public override async Task ProcessRequestAsync(HttpContext context) 
    {
        // leggo la chiave passata da Default.aspx
        string chiave = context.Request.QueryString["c"].ToString();

        // leggo i dati dell'immagine dal db
        IMMAGINI im = new IMMAGINI();
        DataTable DT = im.SelectByKey(chiave);

        // leggo i dati dell'immagine dal datatable
        string titolo = DT.Rows[0]["TITOLO"].ToString();
        string tipo = DT.Rows[0]["TIPO"].ToString();
        byte[] ImgData = (byte[])DT.Rows[0]["DOC"];

        // preparo il file in memoria
        context.Response.Buffer = true;
        context.Response.Charset = "";
        context.Response.AppendHeader("Content-Disposition", "attachement; filename=" + titolo);
        context.Response.Cache.SetCacheability(HttpCacheability.NoCache);
        context.Response.ContentType = tipo;
        context.Response.BinaryWrite(ImgData);
        context.Response.Flush();
        context.Response.End();
    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}