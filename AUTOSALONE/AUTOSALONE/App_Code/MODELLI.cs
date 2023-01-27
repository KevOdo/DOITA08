using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;


public class MODELLI
{
    public int chiave;
    public int chiaveMarca;
    public string modello;
    public string alimentazione;
    public string cambio;
    public string motorizzazione;
    
    public MODELLI()
    {
        
    }

    public void InsertModello()
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.AddWithValue("@chiaveMarca",chiaveMarca);
        DB.cmd.Parameters.AddWithValue("@modello",modello);
        DB.cmd.Parameters.AddWithValue("@alimentazione", alimentazione);
        DB.cmd.Parameters.AddWithValue("@cambio", cambio);
        DB.cmd.Parameters.AddWithValue("@motor", motorizzazione);
        DB.EseguiSPNonRead("MODELLI_InsertModello");
    }

    public void ModificaModello()
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.AddWithValue("@chiave", chiave);
        DB.cmd.Parameters.AddWithValue("@chiaveMarca", chiaveMarca);
        DB.cmd.Parameters.AddWithValue("@modello", modello);
        DB.cmd.Parameters.AddWithValue("@alimentazione", alimentazione);
        DB.cmd.Parameters.AddWithValue("@cambio", cambio);
        DB.cmd.Parameters.AddWithValue("@motorizzazione", motorizzazione);
        DB.EseguiSPNonRead("MODELLI_ModificaModello");
    }

    public DataTable GetDistinctModByMarca()
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.AddWithValue("@MARCA",chiave);
        DataTable DT = DB.EseguiSPRead("MODELLI_GetDistinctModelloByMarca");
        return DT;
    }

    public DataTable GetKeysByName()
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.AddWithValue("@modello",modello);
        DataTable DT = DB.EseguiSPRead("MODELLI_GetKeysByName");
        return DT;
    }

    public DataTable GetModelloByMarca()
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.AddWithValue("@MARCA", chiaveMarca);
        DataTable DT = DB.EseguiSPRead("MODELLI_GetModelloByMarca");
        return DT;
    }

    public DataTable GetModelloByName()
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.AddWithValue("@MODELLO", modello);
        DataTable DT = DB.EseguiSPRead("MODELLI_GetModelloByName");
        return DT;
    }

    public DataTable GetRecordByKey()
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.AddWithValue("@chiave", chiave);
        DataTable DT = DB.EseguiSPRead("MODELLI_GetRecordByKey");
        return DT;
    }
}