using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descrizione di riepilogo per ALBUM
/// </summary>
public class ALBUM
{
    public ALBUM()
    {
        
    }

    public DataTable SelectAll()
    {
        SRInstaBro.WSInstaBroSoapClient c = new SRInstaBro.WSInstaBroSoapClient();
        DataTable DT = c.ALB_SelectAll();
        return DT;
    }

    public DataTable SelectByUtente(string chiaveUTENTE)
    {
        SRInstaBro.WSInstaBroSoapClient c = new SRInstaBro.WSInstaBroSoapClient();
        DataTable DT = c.ALB_SelectByUtente(chiaveUTENTE);
        return DT;
    }

    public void Insert(string chiaveUTENTE, string titolo)
    {
        SRInstaBro.WSInstaBroSoapClient c = new SRInstaBro.WSInstaBroSoapClient();
        c.ALB_Insert(chiaveUTENTE, titolo);
    }
}