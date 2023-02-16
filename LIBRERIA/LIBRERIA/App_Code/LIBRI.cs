using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;

public class LIBRI
{
    public int chiave;
    public Image copertina;
    public string titolo;
    public string descrizione;
    public string datapubblicazione;
    public string genere;
    public string autore;
    public string searchTerm;

    public LIBRI()
    {
        
    }

    public void Insert()
    {
        DATABASE.cmd.Parameters.Clear();
        //DATABASE DB = new DATABASE();
        DATABASE.query = "LIBRI_Insert";     
        DATABASE.cmd.Parameters.AddWithValue("copertina", copertina);
        DATABASE.cmd.Parameters.AddWithValue("titolo", titolo);
        DATABASE.cmd.Parameters.AddWithValue("descrizione", descrizione);
        DATABASE.cmd.Parameters.AddWithValue("datapubblicazione", datapubblicazione);
        DATABASE.cmd.Parameters.AddWithValue("genere", genere);
        DATABASE.cmd.Parameters.AddWithValue("autore", autore);
        DATABASE.EseguiSPNonRead();
    }

    public void Update()
    {
        DATABASE.cmd.Parameters.Clear();
        //DATABASE DB = new DATABASE();
        DATABASE.query = "LIBRI_Update";
        DATABASE.cmd.Parameters.AddWithValue("chiave", chiave);
        DATABASE.cmd.Parameters.AddWithValue("copertina", copertina);
        DATABASE.cmd.Parameters.AddWithValue("titolo", titolo);
        DATABASE.cmd.Parameters.AddWithValue("descrizione", descrizione);
        DATABASE.cmd.Parameters.AddWithValue("datapubblicazione", datapubblicazione);
        DATABASE.cmd.Parameters.AddWithValue("genere", genere);
        DATABASE.cmd.Parameters.AddWithValue("autore", autore);
        DATABASE.EseguiSPNonRead();
    }

    public void Delete()
    {
        DATABASE.cmd.Parameters.Clear();      
        DATABASE.query = "LIBRI_Delete";
        DATABASE.cmd.Parameters.AddWithValue("@chiave", chiave);
        DATABASE.EseguiSPNonRead();
    }

    public DataTable SelectAll()
    {
        DATABASE.cmd.Parameters.Clear();
        DataTable dt = new DataTable();
        DATABASE.query = "LIBRI_SelectAll";
        dt = DATABASE.EseguiSPRead();
        return dt;
    }

    public DataTable SelectByKey()
    {
        DATABASE.cmd.Parameters.Clear();
        DataTable dt = new DataTable();
        DATABASE.query = "LIBRI_SelectByKey";
        DATABASE.cmd.Parameters.AddWithValue("@chiave", chiave);
        dt = DATABASE.EseguiSPRead();
        return dt;
    }

    public DataTable SelectWithFilter()
    {
        DATABASE.cmd.Parameters.Clear();
        DataTable dt = new DataTable();
        DATABASE.query = "LIBRI_SelectWithFilter";
        DATABASE.cmd.Parameters.AddWithValue("@searchTerm", searchTerm);
        dt = DATABASE.EseguiSPRead();
        return dt;
    }
}