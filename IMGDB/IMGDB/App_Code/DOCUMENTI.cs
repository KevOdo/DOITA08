using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descrizione di riepilogo per DOCUMENTI
/// </summary>
public class DOCUMENTI
{
    public DOCUMENTI()
    {
        
    }

    public void Carica(byte[] ImgData, string titolo, string tipo)
    {
        DATABASE.cmd.CommandType = CommandType.Text;
        DATABASE.query = "insert into DOCUMENTI values(@t,@d,@type)"; // y = type
        DATABASE.cmd.Parameters.AddWithValue("@t", titolo);
        DATABASE.cmd.Parameters.AddWithValue("@d", ImgData);
        DATABASE.cmd.Parameters.AddWithValue("@type", tipo);
        DATABASE.ExecuteNotReadQuery();
    }

    public DataTable Scarica()
    {
        DATABASE.cmd.CommandType = CommandType.Text;
        DATABASE.query = "select * from DOCUMENTI";
        DataTable DT = DATABASE.ExecuteReadQuery();
        return DT;
    }

    public DataTable Leggi(string chiave)
    {
        DATABASE.query = "select * from DOCUMENTI where chiave=" + chiave;
        return DATABASE.ExecuteReadQuery();
    }
}