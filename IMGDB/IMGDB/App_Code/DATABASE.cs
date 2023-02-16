using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

static class DATABASE
{
    public static SqlConnection conn = new SqlConnection();
    public static SqlCommand cmd = new SqlCommand();
    public static SqlDataAdapter DA = new SqlDataAdapter();
    public static DataTable DT = new DataTable();
    public static string query;

    static DATABASE()
    {
        conn.ConnectionString = @"Data Source=DESKTOP-QNAP4SN\SQLEXPRESS;Initial Catalog=IMGDB;Integrated Security=true;Pooling=false";
        cmd.Connection = conn;
    }

    // Select query 

    public static DataTable ExecuteReadQuery()
    {
        conn.Close();
        DT.Clear();
        cmd.CommandText = query;
        cmd.CommandType = CommandType.Text;
        DA.SelectCommand = cmd;
        DA.Fill(DT);
        conn.Close();
        return DT;
    }

    // Select Store Procedure

    public static DataTable ExecuteReadStoredP()
    {
        conn.Close();
        DT.Clear();
        cmd.CommandText = query;
        cmd.CommandType = CommandType.StoredProcedure;
        DA.SelectCommand = cmd;
        DA.Fill(DT);
        conn.Close();
        return DT;
    }

    // Insert into, update or delete query
    public static void ExecuteNotReadQuery()
    {
        conn.Close();
        DT.Clear();
        cmd.CommandText = query;
        cmd.CommandType = CommandType.Text;
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }

    // Insert into, update or delete Store Procedure
    public static void ExecuteNotReadStoredP()
    {
        DT.Clear();
        // dico al cmd che deve eseguire la query, specificando che si tratta di una store procedure.
        // Query ha preso il suo valore nella classe UTENTI
        conn.Close();
        cmd.CommandText = query;
        cmd.CommandType = CommandType.StoredProcedure;
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }

    public static void StaticNonReadSP(string query, string[,] parameters)
    {
        DT.Clear();
        cmd.CommandText = query;
        cmd.CommandType = CommandType.StoredProcedure;
        for (int i = 0; i < parameters.Length; i++)
        {
            cmd.Parameters.AddWithValue(parameters[i, 0], parameters[i, 1]);
        }
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
}