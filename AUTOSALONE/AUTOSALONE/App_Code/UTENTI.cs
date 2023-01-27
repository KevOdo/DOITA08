using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;


public class UTENTI
{
    public int chiave;
    public string USR;
    public string PWD;
    public string TIPO;

    public UTENTI()
    {
        
    }

    public void Inserimento()
    {

    }

    public void Modifica()
    {

    }

    public DataTable Login()
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.AddWithValue("@usr",USR);
        DB.cmd.Parameters.AddWithValue("@pwd",PWD);
        DataTable DT = DB.EseguiSPRead("UTENTI_Login");
        return DT;
    }

    public DataTable SelectAll()
    {
        DataTable DT = new DataTable();
        return DT;
    }
}