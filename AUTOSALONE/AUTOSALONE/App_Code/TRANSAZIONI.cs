using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;


public class TRANSAZIONI
{
    public int chiave;
    public int chiaveAutomobile;
    public int chiaveCliente;
    public int chiaveFiliale;
    public int chiaveModello;
    public int chiaveVenditore;
    public int chiaveMarca;
    public string dataTransazione;
    public string metodoPagamento;
    public string acquistoVendita;
    public int prezzo;
    public TRANSAZIONI()
    {
        
    }

    public DataTable SortByFiliale()
    {
        DATABASE DB = new DATABASE();
        DataTable DT = DB.EseguiSPRead("TRANSAIZONI_SortByFiliale");
        return DT;
    }

    public DataTable ChooseFilter(int anno, int mese)
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.AddWithValue("@anno", anno);
        DB.cmd.Parameters.AddWithValue("@mese", mese);
        DB.cmd.Parameters.AddWithValue("@chiaveFiliale", chiaveFiliale);
        DB.cmd.Parameters.AddWithValue("@chiaveVenditore", chiaveVenditore);
        DB.cmd.Parameters.AddWithValue("@chiaveMarca", chiaveMarca);
        DB.cmd.Parameters.AddWithValue("@chiaveModello", chiaveModello);
        DataTable DT = DB.EseguiSPRead("TRANSAZIONI_ChooseFilter");
        return DT;
    }

    public DataTable GetAnniTransazioni()
    {
        DATABASE DB = new DATABASE();
        DataTable DT = DB.EseguiSPRead("TRANSAZIONI_GetAnniTransazioni");
        return DT;
    }

    public DataTable GetFiliale()
    {
        DATABASE DB = new DATABASE();
        DataTable DT = DB.EseguiSPRead("TRANSAZIONI_GetFiliale");
        return DT;
    }

    public DataTable GetMarca()
    {
        DATABASE DB = new DATABASE();
        DataTable DT = DB.EseguiSPRead("TRANSAZIONI_GetMarca");
        return DT;
    }

    public DataTable GetMeseByAnno(int anno)
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.AddWithValue("@anno", anno);
        DataTable DT = DB.EseguiSPRead("TRANSAZIONI_GetMeseByAnno");
        return DT;
    }

    public DataTable GetModelloByMarca()
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.AddWithValue("@chiave",chiaveMarca);
        DataTable DT = DB.EseguiSPRead("TRANSAZIONI_GetModelloByMarca");
        return DT;
    }

    public DataTable GetVenditoreByFiliale()
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.AddWithValue("@chiave", chiaveFiliale);
        DataTable DT = DB.EseguiSPRead("TRANSAZIONI_GetVenditoreByFiliale");
        return DT;
    }

    public void InsertTransazione()
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.AddWithValue("@chiaveAuto", chiaveAutomobile);
        DB.cmd.Parameters.AddWithValue("@chiaveCliente", chiaveCliente);
        DB.cmd.Parameters.AddWithValue("@chiaveVenditore", chiaveVenditore);
        DB.cmd.Parameters.AddWithValue("@data", dataTransazione);
        DB.cmd.Parameters.AddWithValue("@MP", metodoPagamento);
        DB.cmd.Parameters.AddWithValue("@AV", acquistoVendita);
        DB.cmd.Parameters.AddWithValue("@prezzo", prezzo);
        DataTable DT = DB.EseguiSPRead("TRANSAZIONI_InsertTransazione");
    }

    public DataTable SortByAnno()
    {
        DATABASE DB = new DATABASE();
        DataTable DT = DB.EseguiSPRead("TRANSAZIONI_SortByAnno");
        return DT;
    }

    public DataTable SortByMeseGetByAnno(int anno)
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.AddWithValue("@anno", anno);
        DataTable DT = DB.EseguiSPRead("TRANSAZIONI_SortByMeseGetByAnno");
        return DT;
    }

    public DataTable SortByVenditore()
    {
        DATABASE DB = new DATABASE();
        DataTable DT = DB.EseguiSPRead("TRANSAZIONI_SortByVenditore");
        return DT;
    }

    
}