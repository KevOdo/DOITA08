using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string p; //dichiarazione di variabile

        p = "ciao"; //assegnazione di variabile

        if (p == "addio")
        {
            // se p e' = a "addio" faccio qualcosa qui sotto
        }
        else
        {
            // altrimenti lo faccio qui
        }

        // CICLI (for, while, e poi altri...) + foreach
        // FOR = conosco la durata del ciclo
        // WHILE = non conosco la durata

        for (int i = 0; i <= 10; i++)
        {
            litRisultato.Text += i.ToString() + "<br/>";
        }

        int y = 0;
        while (y < 10)
        {
            litRisultato.Text += y.ToString() + "<br/>";
            y++;
        }

        // ARRAY
        string[] pippo = { "ciao mondo", "ciao mamma", "ciao zio" };
        int[] pluto = { 1, 234, 23 };

        string var = pippo[1];
        int ris = pluto[2];

        string[] mesi = { "Gennaio", "Febbraio", "Marzo", "Aprile", "Maggio", "Giugno", "Luglio", "Agosto", "Settembre", "Ottobre", "Novembre", "Dicembre" };
        //litMesi.Text = mesi[2];

        for (int z = 0; z < 12; z++)
        {
            litMesi.Text += mesi[z] + "<br/>";
        }
    }
}