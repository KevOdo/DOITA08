using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descrizione di riepilogo per DATABASE
/// </summary>
public class DATABASE
{

    public SqlConnection conn = new SqlConnection();
    public SqlCommand cmd = new SqlCommand();
    public SqlDataAdapter DA = new SqlDataAdapter();
    public DataTable DT = new DataTable();
    public string query;

    public DATABASE()
    {
        conn.ConnectionString = @"Data Source=DESKTOP-QNAP4SN\SQLEXPRESS;Initial Catalog=INSTABRO;Integrated Security=true;Pooling=false";
        cmd.Connection = conn;
    }

    // Select query 

    public DataTable ExecuteReadQuery()
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

    public DataTable ExecuteReadStoredP()
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
    public void ExecuteNotReadQuery()
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
    public void ExecuteNotReadStoredP()
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

    public void StaticNonReadSP(string query, string[,] parameters)
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