using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btnCalcola_Click(object sender, EventArgs e)
    {
        lblOut.Text = "";
        int num1 = 0;
        try
        {
            num1 = int.Parse(txtNum.Text);
        } catch(Exception ex)
        {
            lblOut.Text = ex.Message;
        }

        int result = 0;
        if (num1 > 0)
        {
            result = ((num1 - (num1 % 2)) / 2);

        }
        lblOut.Text = result.ToString() + " ";

        int count = 0;
        for (int i = 1; i < num1; i += 2)
        {
            count += 1;
        }
        lblOut.Text += count.ToString();
    }

    protected void btnCalcola2_Click(object sender, EventArgs e)
    {
        int[] arr = { 10, 1, -100, 22, 11 };
        double total = 0;
        int count = 0;
        for (int i = 0; i < arr.Length; i++)
        {
            if (arr[i] > 10)
            {
                total += arr[i];
                count += 1;
            }
        }

        if(total > 0)
        {
            lblMedia.Text = (total / count).ToString();
        }
    }

    protected void btnCalcola3_Click(object sender, EventArgs e)
    {
        lblMedia2.Text = "";
        int a = 0;
        int b = 0;

        try
        {
            a = int.Parse(numA.Value);
            b = int.Parse(numB.Value);
        } catch(Exception ex)
        {
            lblMedia2.Text = ex.Message;
        }


        int high;
        int low;

        if(a > b)
        {
            high = a;
            low = b;
        } else
        {
            high = b;
            low = a;
        }

        if (low < 0)
        {
            low = 0;
        }
        if (high < 0)
        {
            high = 0;
        }

        double totale = 0;
        int count = 0;

        for (int i = low; i <= high; i++)
        {
            totale += i;
            count++;
        }

        lblMedia2.Text += (totale / count).ToString();
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        lblOut.Text = "";
        lblMedia.Text = "";
        lblMedia2.Text = "";
        numA.Value = "";
        numB.Value = "";
        txtNum.Text = "";
    }
}