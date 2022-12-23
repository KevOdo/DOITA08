using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    static string[] riga1 = { "", "", "" };
    static string[] riga2 = { "", "", "" };
    static string[] riga3 = { "", "", "" };

    static string segno = "X";
    static int cntMosse = 0;
    static int vittorieX = 0;
    static int vittorie0 = 0;
    static bool vinto = false;
    static int contPartite = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        // imposta il display per il turno la prima volta che la pagina viene caricata
        if (!IsPostBack)
        {
            litTurno.Text = "Tocca a " + segno;
        }
    }


    protected void btn_Click(object sender, EventArgs e)
    {
        // quando un bottone viene cliccato, salva il valore del bottone in una variabile
        Button btn = (Button)sender;
        // in base all'ID del bottone, assegna il segno alla posizione dell'array rappresentata da quel bottone
        if (btn.Text == "" && vinto == false)
        {
            switch (btn.ID)
            {
                case "btn1":
                    riga1[0] = segno;
                    break;
                case "btn2":
                    riga1[1] = segno;
                    break;
                case "btn3":
                    riga1[2] = segno;
                    break;
                case "btn4":
                    riga2[0] = segno;
                    break;
                case "btn5":
                    riga2[1] = segno;
                    break;
                case "btn6":
                    riga2[2] = segno;
                    break;
                case "btn7":
                    riga3[0] = segno;
                    break;
                case "btn8":
                    riga3[1] = segno;
                    break;
                case "btn9":
                    riga3[2] = segno;
                    break;
            }
            // cambia il testo del bottone, inverti il segno, e cambia il display di turno
            btn.Text = segno;
            cntMosse++;
            if (segno == "X")
            {
                segno = "0";
            }
            else
            {
                segno = "X";
            }
            litTurno.Text = "Tocca a " + segno;
            // ogni volta, controlla se una delle condizioni di vittoria e' stata soddisfatta
            controllaVittoria();
        }
    }

    protected void controllaVittoria()
    {
        string vincitore = "";
        // per ogni controllo, controlla se ogni valore sia uguale e che le celle non siano vuote
        // controllo prima riga
        if (riga1[0] == riga1[1] && riga1[0] == riga1[2] && !String.IsNullOrEmpty(riga1[0]))
        {
            vincitore = riga1[0];
        }
        // controllo seconda riga
        else if (riga2[0] == riga2[1] && riga2[0] == riga2[2] && !String.IsNullOrEmpty(riga2[0]))
        {
            vincitore = riga2[0];
        }
        // controllo terza riga
        else if (riga3[0] == riga3[1] && riga3[0] == riga3[2] && !String.IsNullOrEmpty(riga3[0]))
        {
            vincitore = riga3[0];
        }
        // controllo prima colonna
        else if (riga1[0] == riga2[0] && riga1[0] == riga3[0] && !String.IsNullOrEmpty(riga1[0]))
        {
            vincitore = riga1[0];
        }// controllo seconda colonna
        else if (riga1[1] == riga2[1] && riga1[1] == riga3[1] && !String.IsNullOrEmpty(riga1[1]))
        {
            vincitore = riga1[1];
        }// controllo terza colonna
        else if (riga1[2] == riga2[2] && riga1[2] == riga3[2] && !String.IsNullOrEmpty(riga1[2]))
        {
            vincitore = riga1[2];
        }
        // controllo prima diagonale (alto sinistra => basso destra)
        else if (riga1[0] == riga2[1] && riga1[0] == riga3[2] && !String.IsNullOrEmpty(riga1[0]))
        {
            vincitore = riga1[0];
        }
        // controllo seconda diagonale (basso sinistra => alto destra)
        else if (riga1[2] == riga2[1] && riga1[2] == riga3[0] && !String.IsNullOrEmpty(riga1[2]))
        {
            vincitore = riga1[2];
        }

        if (String.IsNullOrEmpty(vincitore))
        {
            // controlla se tutte le mosse sono state giocate
            if (cntMosse == 9)
            {
                vinto = true;
                litVittoria.Text = "Pareggio!";
            }
        }
        else
        {
            // display chi ha vinto, e cambia il contatore di vittorie di quel giocatore
            vinto = true;
            litVittoria.Text = "Ha vinto " + vincitore;
            if (vincitore == "X")
            {
                vittorieX++;
            }
            else
            {
                vittorie0++;
            }
            litConto.Text = "<br />Vittorie X: " + vittorieX + ". Vittorie 0: " + vittorie0;
        }
    }

    // resetta il campo di gioco
    protected void clean() // subroutine
    {
        // resetta il segno mostrato dai bottoni
        btn1.Text = "";
        btn2.Text = "";
        btn3.Text = "";
        btn4.Text = "";
        btn5.Text = "";
        btn6.Text = "";
        btn7.Text = "";
        btn8.Text = "";
        btn9.Text = "";
        // resetta gli array
        Array.Clear(riga1, 0, 3);
        Array.Clear(riga2, 0, 3);
        Array.Clear(riga3, 0, 3);
        cntMosse = 0;
        vinto = false;
        litVittoria.Text = "";
    }

    protected int funzioneSomma() // funzione
    {
        int a = 2;
        int b = 3;
        int res = a + b;
        return res;
    }

    protected string Saluta(string a, string b)
    {
        string ris = a + ", " + b;
        return ris;
    }

    protected void btnNuovaPartita_Click(object sender, EventArgs e)
    {
        // ogni partita viene alternato chi parte, senza badare a chi vince o perde
        // per le partite pari gioca prima X, per quelle dispari prima 0
        contPartite++;
        if (contPartite % 2 == 0)
        {
            segno = "X";
        }
        else
        {
            segno = "0";
        }
        litTurno.Text = "Tocca a " + segno;
        clean();
    }

    protected void btnNuovaSfida_Click(object sender, EventArgs e)
    {
        clean();
        // oltre a resettare il campo di gioco, resetta il conto di chi ha vinto quante partite
        vittorie0 = 0;
        vittorieX = 0;
        contPartite = 0;
        litConto.Text = "";
        segno = "X";
    }
}