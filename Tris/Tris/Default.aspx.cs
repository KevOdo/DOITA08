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
    static int cnt = 0;
    static int vittorieX = 0;
    static int vittorie0 = 0;
    static bool vinto = false;

    protected void Page_Load(object sender, EventArgs e)
    {
        ltlTurno.Text = "Tocca a " + segno;
    }


    protected void btn_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
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
            btn.Text = segno;
            cnt++;
            if (segno == "X")
            {
                segno = "0";
            }
            else
            {
                segno = "X";
            }
            ltlTurno.Text = "Tocca a " + segno;
            controllaVittoria();
        }
    }

    protected void controllaVittoria()
    {
        string vincitore = "";
        if (riga1[0] == riga1[1] && riga1[0] == riga1[2] && !String.IsNullOrEmpty(riga1[0]))
        {
            vincitore = riga1[0];
        }
        else if (riga2[0] == riga2[1] && riga2[0] == riga2[2] && !String.IsNullOrEmpty(riga2[0]))
        {
            vincitore = riga2[0];
        }
        else if (riga3[0] == riga3[1] && riga3[0] == riga3[2] && !String.IsNullOrEmpty(riga3[0]))
        {
            vincitore = riga3[0];
        }
        else if (riga1[0] == riga2[0] && riga1[0] == riga3[0] && !String.IsNullOrEmpty(riga1[0]))
        {
            vincitore = riga1[0];
        }
        else if (riga1[1] == riga2[1] && riga1[1] == riga3[1] && !String.IsNullOrEmpty(riga1[1]))
        {
            vincitore = riga1[1];
        }
        else if (riga1[2] == riga2[2] && riga1[2] == riga3[2] && !String.IsNullOrEmpty(riga1[2]))
        {
            vincitore = riga1[2];
        }
        else if (riga1[0] == riga2[1] && riga1[0] == riga3[2] && !String.IsNullOrEmpty(riga1[0]))
        {
            vincitore = riga1[0];
        }
        else if (riga1[2] == riga2[1] && riga1[2] == riga3[0] && !String.IsNullOrEmpty(riga1[2]))
        {
            vincitore = riga1[2];
        }

        if (String.IsNullOrEmpty(vincitore))
        {
            if (cnt == 9)
            {
                vinto = true;
                lit1.Text = "Pareggio!";
            }
        }
        else
        {
            vinto = true;
            lit1.Text = "Ha vinto " + vincitore;
            if (vincitore == "X")
            {
                vittorieX++;
            }
            else
            {
                vittorie0++;
            }
            lit2.Text = "<br />Vittorie X: " + vittorieX + ". Vittorie 0: " + vittorie0;
        }
    }

    protected void clean()
    {
        btn1.Text = "";
        btn2.Text = "";
        btn3.Text = "";
        btn4.Text = "";
        btn5.Text = "";
        btn6.Text = "";
        btn7.Text = "";
        btn8.Text = "";
        btn9.Text = "";
        Array.Clear(riga1, 0, 3);
        Array.Clear(riga2, 0, 3);
        Array.Clear(riga3, 0, 3);
        cnt = 0;
        vinto = false;
        lit1.Text = "";
    }

    protected void btnNuovaPartita_Click(object sender, EventArgs e)
    {
        clean();
    }

    protected void btnNuovaSfida_Click(object sender, EventArgs e)
    {
        clean();
        vittorie0 = 0;
        vittorieX = 0;
        lit2.Text = "";
        segno = "X";
    }
}