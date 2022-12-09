using System;
using System.Collections.Generic;
using System.Linq;
using System.Media;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    // impposta variabili iniziali
    static int? n1;
    static int? n2;
    static string op;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public int? checkNull(int? num)
    {
        if (num == null)
        {
            num = 0;
        }
        return num;
    }

    protected void btn1_Click(object sender, EventArgs e)
    {
        // se non c'e' l'operatore concatena 1 al primo numero
        if (String.IsNullOrEmpty(op))
        {
            n1 = checkNull(n1);
            n1 = (n1 * 10) + 1;
            txtDisplay.Text = txtDisplay.Text + "1";
        }
        // se c'e' l'operatore concatena 1 al secondo numero
        else
        {
            n2 = checkNull(n2);
            n2 = (n2 * 10) + 1;
            txtDisplay.Text = txtDisplay.Text + "1";
        }
    }

    protected void btn2_Click(object sender, EventArgs e)
    {
        // se non c'e' l'operatore concatena 2 al primo numero
        if (String.IsNullOrEmpty(op))
        {
            n1 = checkNull(n1);
            n1 = (n1 * 10) + 2;
            txtDisplay.Text = txtDisplay.Text + "2";
        }
        // se c'e' l'operatore concatena 2 al secondo numero
        else
        {
            n2 = checkNull(n2);
            n2 = (n2 * 10) + 2;
            txtDisplay.Text = txtDisplay.Text + "2";
        }
    }

    protected void btn3_Click(object sender, EventArgs e)
    {
        // se non c'e' l'operatore concatena 3 al primo numero
        if (String.IsNullOrEmpty(op))
        {
            n1 = checkNull(n1);
            n1 = (n1 * 10) + 3;
            txtDisplay.Text = txtDisplay.Text + "3";
        }
        // se c'e' l'operatore concatena 3 al secondo numero
        else
        {
            n2 = checkNull(n2);
            n2 = (n2 * 10) + 3;
            txtDisplay.Text = txtDisplay.Text + "3";
        }
    }

    protected void btn4_Click(object sender, EventArgs e)
    {
        // se non c'e' l'operatore concatena 4 al primo numero
        if (String.IsNullOrEmpty(op))
        {
            n1 = checkNull(n1);
            n1 = (n1 * 10) + 4;
            txtDisplay.Text = txtDisplay.Text + "4";
        }
        // se c'e' l'operatore concatena 4 al secondo numero
        else
        {
            n2 = checkNull(n2);
            n2 = (n2 * 10) + 4;
            txtDisplay.Text = txtDisplay.Text + "4";
        }
    }

    protected void btn5_Click(object sender, EventArgs e)
    {
        // se non c'e' l'operatore concatena 5 al primo numero
        if (String.IsNullOrEmpty(op))
        {
            n1 = checkNull(n1);
            n1 = (n1 * 10) + 5;
            txtDisplay.Text = txtDisplay.Text + "5";
        }
        // se c'e' l'operatore concatena 5 al secondo numero
        else
        {
            n2 = checkNull(n2);
            n2 = (n2 * 10) + 5;
            txtDisplay.Text = txtDisplay.Text + "5";
        }
    }

    protected void btn6_Click(object sender, EventArgs e)
    {
        // se non c'e' l'operatore concatena 6 al primo numero
        if (String.IsNullOrEmpty(op))
        {
            n1 = checkNull(n1);
            n1 = (n1 * 10) + 6;
            txtDisplay.Text = txtDisplay.Text + "6";
        }
        // se c'e' l'operatore concatena 6 al secondo numero
        else
        {
            n2 = checkNull(n2);
            n2 = (n2 * 10) + 6;
            txtDisplay.Text = txtDisplay.Text + "6";
        }
    }

    protected void btn7_Click(object sender, EventArgs e)
    {
        // se non c'e' l'operatore concatena 7 al primo numero
        if (String.IsNullOrEmpty(op))
        {
            n1 = checkNull(n1);
            n1 = (n1 * 10) + 7;
            txtDisplay.Text = txtDisplay.Text + "7";
        }
        // se c'e' l'operatore concatena 7 al secondo numero
        else
        {
            n2 = checkNull(n2);
            n2 = (n2 * 10) + 7;
            txtDisplay.Text = txtDisplay.Text + "7";
        }
    }

    protected void btn8_Click(object sender, EventArgs e)
    {
        // se non c'e' l'operatore concatena 8 al primo numero
        if (String.IsNullOrEmpty(op))
        {
            n1 = checkNull(n1);
            n1 = (n1 * 10) + 8;
            txtDisplay.Text = txtDisplay.Text + "8";
        }
        // se c'e' l'operatore concatena 8 al secondo numero
        else
        {
            n2 = checkNull(n2);
            n2 = (n2 * 10) + 8;
            txtDisplay.Text = txtDisplay.Text + "8";
        }
    }

    protected void btn9_Click(object sender, EventArgs e)
    {
        // se non c'e' l'operatore concatena 9 al primo numero
        if (String.IsNullOrEmpty(op))
        {
            n1 = checkNull(n1);
            n1 = (n1 * 10) + 9;
            txtDisplay.Text = txtDisplay.Text + "9";
        }
        // se c'e' l'operatore concatena 9 al secondo numero
        else
        {
            n2 = checkNull(n2);
            n2 = (n2 * 10) + 9;
            txtDisplay.Text = txtDisplay.Text + "9";
        }
    }

    protected void btn0_Click(object sender, EventArgs e)
    {
        // se non c'e' l'operatore concatena 0 al primo numero
        if (String.IsNullOrEmpty(op))
        {
            n1 = checkNull(n1);
            n1 = n1 + 0;
            txtDisplay.Text = txtDisplay.Text + "0";
        }
        // se c'e' l'operatore concatena 0 al secondo numero
        else
        {
            n2 = checkNull(n2);
            n2 = n2 + 0;
            txtDisplay.Text = txtDisplay.Text + "0";
        }
    }

    protected void btnPiu_Click(object sender, EventArgs e)
    {
        // se non c'e' l'operatore, ed esiste il primo numero ma non il secondo, imposta l'operatore come +
        if (String.IsNullOrEmpty(op) && n1 != null && n2 == null)
        {
            op = "+";
            txtDisplay.Text = "";
        }
    }

    protected void btnMeno_Click(object sender, EventArgs e)
    {
        // se non c'e' l'operatore, ed esiste il primo numero ma non il secondo, imposta l'operatore come -
        if (String.IsNullOrEmpty(op) && n1 != null && n2 == null)
        {
            op = "-";
            txtDisplay.Text = "";
        }
    }

    protected void btnDiviso_Click(object sender, EventArgs e)
    {
        // se non c'e' l'operatore, ed esiste il primo numero ma non il secondo, imposta l'operatore come /
        if (String.IsNullOrEmpty(op) && n1 != null && n2 == null)
        {
            op = "/";
            txtDisplay.Text = "";
        }
    }

    protected void btnPer_Click(object sender, EventArgs e)
    {
        // se non c'e' l'operatore, ed esiste il primo numero ma non il secondo, imposta l'operatore come *
        if (String.IsNullOrEmpty(op) && n1 != null && n2 == null)
        {
            op = "*";
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
            txtDisplay.Text = (n1 / n2).ToString();
        }
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