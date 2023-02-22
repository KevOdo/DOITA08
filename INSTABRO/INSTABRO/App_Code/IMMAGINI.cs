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
        DataTable DT = c.IMG_Last50();
        return DT;
    }

    public void Carica(string chiaveAlbum, byte[] imgData, string titolo, string descrizione, string tipo, string data)
    {
        SRInstaBro.WSInstaBroSoapClient c = new SRInstaBro.WSInstaBroSoapClient();
        c.IMG_UploadImg(chiaveAlbum, imgData, titolo, descrizione, tipo, data);
    }

    public DataTable SelectByKey(string chiave)
    {
        SRInstaBro.WSInstaBroSoapClient c = new SRInstaBro.WSInstaBroSoapClient();
        DataTable DT = c.IMG_SelectByKey(chiave);
        return DT;
    }

    public DataTable FilterSearchBar(string searchTerm)
    {
        SRInstaBro.WSInstaBroSoapClient c = new SRInstaBro.WSInstaBroSoapClient();
        DataTable DT = c.FilterSearchBar(searchTerm);
        return DT;
    }
}