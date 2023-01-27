using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;


public class CLIENTI
{
    public int chiave;
    public string cognome;
    public string nome;
    public string RS;
    public string indirizzo;
    public string citta;
    public string provincia;
    public string cap;
    public CLIENTI()
    {

    }

    public void InsertCliente()
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.AddWithValue("@cognome", cognome);
        DB.cmd.Parameters.AddWithValue("@nome", nome);
        DB.cmd.Parameters.AddWithValue("@RS", RS);
        DB.cmd.Parameters.AddWithValue("@indirizzo", indirizzo);
        DB.cmd.Parameters.AddWithValue("@citta", citta);
        DB.cmd.Parameters.AddWithValue("@provincia", provincia);
        DB.cmd.Parameters.AddWithValue("@cap", cap);
        DB.EseguiSPNonRead("CLIENTI_InsertCliente");
    }

    public void ModificaCliente()
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.AddWithValue("@chiave", chiave);
        DB.cmd.Parameters.AddWithValue("@cognome", cognome);
        DB.cmd.Parameters.AddWithValue("@nome", nome);
        DB.cmd.Parameters.AddWithValue("@RS", RS);
        DB.cmd.Parameters.AddWithValue("@indirizzo", indirizzo);
        DB.cmd.Parameters.AddWithValue("@citta", citta);
        DB.cmd.Parameters.AddWithValue("@provincia", provincia);
        DB.cmd.Parameters.AddWithValue("@cap", cap);
        DB.EseguiSPNonRead("CLIENTI_ModificaCliente");
    }

    public DataTable GetAllClienti()
    {
        DATABASE DB = new DATABASE();
        DataTable DT = DB.EseguiSPRead("CLIENTI_GetAllClienti");
        return DT;
    }

    public DataTable GetClientiByCognomeNome()
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.AddWithValue("@cognome", cognome);
        DB.cmd.Parameters.AddWithValue("@nome", nome);
        DataTable DT = DB.EseguiSPRead("CLIENTI_GetClientiByNomeCognome");
        return DT;
    }

    public DataTable GetRecordByKey()
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.AddWithValue("@chiave", chiave);
        DataTable DT = DB.EseguiSPRead("CLIENTI_GetRecordByKey");
        return DT;
    }
}