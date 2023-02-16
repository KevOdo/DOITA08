using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;


public class UTENTI
{
    public int chiave;
    public string email;
    public string pwd;
    public int operatore;

    public UTENTI()
    {
       
    }

    public DataTable Login()
    {
        DataTable dt = new DataTable();
        DATABASE.query = "UTENTI_Login";
        DATABASE.cmd.Parameters.AddWithValue("email", email);
        DATABASE.cmd.Parameters.AddWithValue("PWD", pwd);
        dt = DATABASE.EseguiSPRead();
        return dt;
    }

    public void Insert()
    {
        DATABASE.query = "UTENTI_Registrazione";
        DATABASE.cmd.Parameters.AddWithValue("email", email);
        DATABASE.cmd.Parameters.AddWithValue("PWD", pwd);
        DATABASE.EseguiSPNonRead();
    }

    public void UpdatePassword()
    {
        DATABASE.query = "UTENTI_UpdatePassword";
        DATABASE.cmd.Parameters.AddWithValue("chiave", chiave);
        DATABASE.cmd.Parameters.AddWithValue("PWD", pwd);
        DATABASE.EseguiSPNonRead();
    }
}