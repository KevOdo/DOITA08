using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descrizione di riepilogo per UTENTI
/// </summary>
public class UTENTI
{
    public UTENTI()
    {
        //
        // TODO: aggiungere qui la logica del costruttore
        //
    }

    public void Registra(string email, string PWD)
    {
        SRInstaBro.WSInstaBroSoapClient c = new SRInstaBro.WSInstaBroSoapClient();
        c.USR_Registra(email, PWD);
    }

    public DataTable Login(string email, string PWD)
    {
        SRInstaBro.WSInstaBroSoapClient c = new SRInstaBro.WSInstaBroSoapClient();
        DataTable DT = c.USR_Login(email, PWD);
        return DT;
    }

    public DataTable SelectByKey(string chiave)
    {
        SRInstaBro.WSInstaBroSoapClient c = new SRInstaBro.WSInstaBroSoapClient();
        DataTable DT = c.USR_SelectByKey(chiave);
        return DT;
    }

    public void UpdateImgProfilo(string chiave, byte[] imgData, string tipo)
    {
        SRInstaBro.WSInstaBroSoapClient c = new SRInstaBro.WSInstaBroSoapClient();
        c.USR_UpdateImgProfilo(chiave, imgData, tipo);
    }
}