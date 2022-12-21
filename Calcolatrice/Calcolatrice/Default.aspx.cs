using System;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Media;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.EnterpriseServices;

public partial class _Default : System.Web.UI.Page
{
    // impposta variabili iniziali
    // da int ho cambiato a int? per impostarli come null
    static int? n1;
    static int? n2;
    static string op;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    // To smanett or not to smanett? Aggiunto una funzione di controllo per vedere se un numero e' null prima di provare a modificarlo
    public int? checkNull(int? num)
    {
        if (num == null)
        {
            num = 0;
        }
        return num;
    }

    protected void btn_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        int num = int.Parse(btn.Text);

        if (String.IsNullOrEmpty(op))
        {
            n1 = checkNull(n1);
            n1 = (n1 * 10) + num;
            txtDisplay.Text = txtDisplay.Text + num.ToString();
        }
        // se c'e' l'operatore concatena 1 al secondo numero
        else
        {
            n2 = checkNull(n2);
            n2 = (n2 * 10) + num;
            txtDisplay.Text = txtDisplay.Text + num.ToString();
        }
    }

    protected void btnOp_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        if (String.IsNullOrEmpty(op) && n1 != null && n2 == null)
        {
            switch (btn.ID)
            {
                case "btnPiu":
                    op = "+";
                    break;
                case "btnMeno":
                    op = "-";
                    break;
                case "btnPer":
                    op = "*";
                    break;
                case "btnDiviso":
                    op = "/";
                    break;
            }
            txtDisplay.Text = "";
        }

    }

    protected void btnUguale_Click(object sender, EventArgs e)
    {
        // se c'e' l'operatore ed il secondo numero, esegui il calcolo ADDIZIONE
        if (op == "+" && n2 != null)
        {
            txtDisplay.Text = (n1 + n2).ToString();
        }
        // se c'e' l'operatore ed il secondo numero, esegui il calcolo SOTTRAZIONE
        else if (op == "-" && n2 != null)
        {
            txtDisplay.Text = (n1 - n2).ToString();
        }
        // se c'e' l'operatore ed il secondo numero, esegui il calcolo MOLTIPLICAZIONE
        else if (op == "*" && n2 != null)
        {
            txtDisplay.Text = (n1 * n2).ToString();
        }
        // se c'e' l'operatore ed il secondo numero, esegui il calcolo DIVISIONE
        else if (op == "/" && n2 != null)
        {
            // se provi a dividere per 0 ti da un errore
            if (n2 == 0)
            {
                txtDisplay.Text = "SEI UN PIRLA";
            }
            else
            {
                txtDisplay.Text = (n1 / n2).ToString();
            }

        }
        // se premi uguale e hai impostato un solo numero senza operatore te lo stampa sul display
        else if (String.IsNullOrEmpty(op) && n1 != null && n2 == null)
        {
            txtDisplay.Text = n1.ToString();
        }
    }

    // cancella tutto il contenuto del display e dati salvati
    protected void btnC_Click(object sender, EventArgs e)
    {
        op = "";
        txtDisplay.Text = "";
        n1 = null;
        n2 = null;

    }

}