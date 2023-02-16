using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Configuration;


public static class DATABASE
{
    public static SqlConnection conn = new SqlConnection();
    public static string query;
    public static SqlCommand cmd = new SqlCommand();
    public static SqlDataAdapter DA = new SqlDataAdapter();
    public static DataTable DT = new DataTable();

    static DATABASE()
    {
        conn.ConnectionString = "DESKTOP-QNAP4SN\\SQLEXPRESS;Initial Catalog=LIBRERIA;Integrated Security=True;";
        //conn.ConnectionString = ConfigurationManager.ConnectionStrings["AGAMENNONEConnectionString"].ConnectionString;
        cmd.Connection = conn;
    }

    //carica i dati db con una query diretta scritta in SQL
    public static DataTable EseguiQueryRead()
    {
        cmd.CommandText = query;
        cmd.CommandType = CommandType.Text;
        DataTable DT = new DataTable();
        DA.SelectCommand = cmd;
        DA.Fill(DT);
        return DT;
    }

    //esegue ins, upd, del sul db
    public static void EseguiQueryNonRead()
    {
        cmd.CommandText = query;
        cmd.CommandType = CommandType.Text;
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }

    //eseguo una stored procedure senza ritorno di dati
    public static void EseguiSPNonRead()
    {
        cmd.CommandText = query;
        cmd.CommandType = CommandType.StoredProcedure;
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }

    public static DataTable EseguiSPRead()
    {
        cmd.CommandText = query;
        cmd.CommandType = CommandType.StoredProcedure;
        DA.SelectCommand = cmd;
        DA.Fill(DT);
        return DT;
    }
}