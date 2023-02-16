<%@ WebHandler Language="C#" Class="gestore" %>

using System;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class gestore : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        // leggo la chiave passata da Default.aspx
        int chiave = int.Parse(context.Request.QueryString["c"].ToString());

        // leggo i dati dell'immagine dal db
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = @"Data Source=DESKTOP-QNAP4SN\SQLEXPRESS;Initial Catalog=IMGDB;Integrated Security=true;Pooling=false;";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from DOCUMENTI where chiave=" + chiave.ToString();
        DataTable dt = new DataTable();
        SqlDataAdapter DA = new SqlDataAdapter();
        DA.SelectCommand = cmd;
        DA.Fill(dt);

        // leggo i dati dell'immagine dal datatable
        string titolo = dt.Rows[0]["TITOLO"].ToString();
        string tipo = dt.Rows[0]["TIPO"].ToString();
        byte[] ImgData = (byte[])dt.Rows[0]["DOC"];

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

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}