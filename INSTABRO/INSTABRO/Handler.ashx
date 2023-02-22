<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using System.Data;

public class Handler : IHttpHandler {

    public void ProcessRequest(HttpContext context)
    {
        // leggo la chiave passata da Default.aspx
        string chiave = context.Request.QueryString["c"].ToString();

        // leggo i dati dell'immagine dal db
        UTENTI u = new UTENTI();
        DataTable DT = u.SelectByKey(chiave);

        // leggo i dati dell'immagine dal datatable
        string titolo = "profile";
        string tipo = DT.Rows[0]["TIPOIMG"].ToString();
        byte[] ImgData = (byte[])DT.Rows[0]["IMGPROFILO"];

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