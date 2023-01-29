using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;


public class UTENTI
{
    public string email;
    public string password;
    public string chiave;
    public UTENTI()
    {
               
    }

    public void Registra()
    {
        DATABASE DB = new DATABASE();
        string query = "insert into UTENTI values('"+email+"','','N','Y')";
        DB.EseguiQueryNonRead(query);
    }

    public DataTable GetRecordByUSR()
    {
        DATABASE DB = new DATABASE();
        string query = "select * from UTENTI where USR='" + email + "'";
        DataTable DT = DB.EseguiQueryRead(query);
        return DT;
    }

    public void ActivateUSR()
    {
        DATABASE DB = new DATABASE();
        string query = "update UTENTI set PWD='"+password+"',ATTIVO='Y' where chiave="+chiave;
        DB.EseguiQueryNonRead(query);
    }

    public DataTable GetUSRByKey()
    {
        DATABASE DB = new DATABASE();
        string query = "select USR from UTENTI where chiave="+chiave;
        DataTable DT = DB.EseguiQueryRead(query);
        return DT;
    }

    public DataTable Login()
    {
        DATABASE DB = new DATABASE();
        string query = "select * from UTENTI where USR='"+email+"' and PWD='"+password+"'";
        DataTable DT = DB.EseguiQueryRead(query);
        return DT;
    }

    public void ChangePWD()
    {
        DATABASE DB = new DATABASE();
        string query = "update UTENTI set PWD='"+password+"', PRIMAREG='N' where chiave="+chiave;
        DB.EseguiQueryNonRead(query);
    }
}