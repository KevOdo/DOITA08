using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class _Default : System.Web.UI.Page
{
    static string input = string.Empty;
    static string operando1 = string.Empty;
    static string operando2 = string.Empty;
    static char operatore; // prenderà i valori "+", "-", "/", "*"
    int risultato;



    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btn1_Click(object sender, EventArgs e)
    {
        this.txtDisplay.Text = "";
        input += "1";
        this.txtDisplay.Text = input;
    }



    protected void btn2_Click(object sender, EventArgs e)
    {
        this.txtDisplay.Text = "";
        input += "2";
        this.txtDisplay.Text = input;
    }

    protected void btn3_Click(object sender, EventArgs e)
    {
        this.txtDisplay.Text = "";
        input += "3";
        this.txtDisplay.Text += input;
    }

    protected void btn4_Click(object sender, EventArgs e)
    {
        this.txtDisplay.Text = "";
        input += "4";
        this.txtDisplay.Text += input;
    }

    protected void btn5_Click(object sender, EventArgs e)
    {
        this.txtDisplay.Text = "";
        input += "5";
        this.txtDisplay.Text += input;
    }



    protected void btn6_Click(object sender, EventArgs e)
    {
        this.txtDisplay.Text = "";
        input += "6";
        this.txtDisplay.Text += input;
    }



    protected void btn7_Click(object sender, EventArgs e)
    {
        this.txtDisplay.Text = "";
        input += "7";
        this.txtDisplay.Text += input;
    }

    protected void btn8_Click(object sender, EventArgs e)
    {
        this.txtDisplay.Text = "";
        input += "8";
        this.txtDisplay.Text += input;
    }



    protected void btn9_Click(object sender, EventArgs e)
    {
        this.txtDisplay.Text = "";
        input += "9";
        this.txtDisplay.Text += input;
    }

    protected void btn0_Click(object sender, EventArgs e)
    {
        this.txtDisplay.Text = "";
        input += "0";
        this.txtDisplay.Text += input;
    }



    protected void btnPiu_Click(object sender, EventArgs e)
    {
        operando1 = input;
        operatore = '+';
        input = string.Empty;
    }

    protected void btnMeno_Click(object sender, EventArgs e)
    {
        operando1 = input;
        operatore = '-';
        input = string.Empty;
    }

    protected void btnDiviso_Click(object sender, EventArgs e)
    {
        operando1 = input;
        operatore = '/';
        input = string.Empty;
    }

    protected void btnPer_Click(object sender, EventArgs e)
    {
        operando1 = input;
        operatore = '*';
        input = string.Empty;
    }

    protected void btnUguale_Click(object sender, EventArgs e)
    {
        operando2 = input;
        int num1, num2;
        int.TryParse(operando1, out num1);
        int.TryParse(operando2, out num2);


        if (operatore == '+')
        {
            risultato = num1 + num2;
            txtDisplay.Text = risultato.ToString();
        }
        else if (operatore == '-')
        {
            risultato = num1 - num2;
            txtDisplay.Text = risultato.ToString();
        }
        else if (operatore == '*')
        {
            risultato = num1 * num2;
            txtDisplay.Text = risultato.ToString();
        }
        else if (operatore == '/')
        {
            if (num2 != 0)
            {
                risultato = num1 / num2;
                txtDisplay.Text = risultato.ToString();
            }
            else
            {
                txtDisplay.Text = "Non puoi dividere per ZERO!";
            }

        }

    }

    protected void btnC_Click(object sender, EventArgs e)
    {
        txtDisplay.Text = "";
        input = string.Empty;
        operando1 = string.Empty;
        operando2 = string.Empty;

    }
}