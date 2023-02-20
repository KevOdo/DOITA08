using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descrizione di riepilogo per IMMAGINI
/// </summary>
public class IMMAGINI
{
    public IMMAGINI()
    {
        
    }

    public DataTable Last50()
    {
        SRInstaBro.WSInstaBroSoapClient c = new SRInstaBro.WSInstaBroSoapClient();
        DataTable DT = c.IMGLast50();
        return DT;
    }
}