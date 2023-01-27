using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class DATABASE
{
    public SqlConnection conn = new SqlConnection();
    public string query;
    public SqlCommand cmd = new SqlCommand();
    public DataTable DT = new DataTable();
    public SqlDataAdapter DA = new SqlDataAdapter();

    public DATABASE()
    {
        conn.ConnectionString = "Data Source=DESKTOP-QNAP4SN\\SQLEXPRESS;Initial Catalog=AUTOSALONI;Integrated Security=true";
        cmd.Connection = conn;
    }

    // carica i dati dal DB con una query diretta, scritta in SQL
    public DataTable EseguiQueryRead()
    {        
        cmd.CommandText = query;
        cmd.CommandType = CommandType.Text;        
        DA.SelectCommand = cmd;
        
        DA.Fill(DT);
        return DT;
    }

    //esegue INS, UPD, e DEL del DB
    public void EseguiQueryNonRead()
    {
        cmd.CommandText = query;
        cmd.CommandType = CommandType.Text;
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }

    public void EseguiSPNonRead()
    {
        cmd.CommandText = query;
        cmd.CommandType = CommandType.StoredProcedure;
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }

    public DataTable EseguiSPRead()
    {
        cmd.CommandText = query;
        cmd.CommandType = CommandType.StoredProcedure;
        DA.SelectCommand = cmd;
        DA.Fill(DT);
        return DT;
    }
}