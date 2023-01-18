using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    static string[] immagini = {"assets/images/ciliege.jpg", "assets/images/pera.jpg", "assets/images/uva.png" };
    static int soldi = 100;
    protected void Page_Load(object sender, EventArgs e)
    {
        ltlBilancio.Text = "Balance: €" + soldi.ToString();
    }

    protected void btnCarica_Click(object sender, EventArgs e)
    {
        if (soldi == 0)
        {
            ltlDisplay.Text = "You're Broke! Pirla!";
            return;
        }

        Random random = new Random();
        int probWin = 10;
        int randomNum1 = random.Next(0, immagini.Length);
        int randomNum2 = random.Next(0, immagini.Length);
        int randomNum3 = random.Next(0, immagini.Length);

        if (randomNum1 == randomNum2)
        {
            int prob = random.Next(0, 101);
            if (prob > (100 - probWin))
            {
                randomNum3 = randomNum1;
            }
            else
            {
                randomNum3 = randomNum1;
                while (randomNum3 == randomNum1)
                {
                    randomNum3 = random.Next(0, immagini.Length);
                }
            }
        }


        img1.Attributes["src"] = immagini[randomNum1];
        img2.Attributes["src"] = immagini[randomNum2];
        img3.Attributes["src"] = immagini[randomNum3];

        if (randomNum1 == randomNum2 && randomNum1 == randomNum3)
        {
            ltlDisplay.Text = "You Win!";
            divDisplay.Attributes["class"] = "display-5 d-flex justify-content-center gold";
            card1.Attributes["class"] = "card border-warning";
            card2.Attributes["class"] = "card border-warning";
            card3.Attributes["class"] = "card border-warning";
            soldi = soldi + 100;
        } else
        {
            ltlDisplay.Text = "You Lose!";
            divDisplay.Attributes["class"] = "display-5 d-flex justify-content-center";
            card1.Attributes["class"] = "card border-dark";
            card2.Attributes["class"] = "card border-dark";
            card3.Attributes["class"] = "card border-dark";
            soldi = soldi - 1;
        }

        ltlBilancio.Text = "Balance: €" + soldi.ToString();

    }
}