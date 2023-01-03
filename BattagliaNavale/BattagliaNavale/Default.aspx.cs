using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void bntHit_Click(object sender, EventArgs e)
    {
        string row = txtRiga.Text;
        string col = txtColonna.Text;

        string id = col + row;

        /* quetso commento e' solo per nascondere la smanettaggine piu' intensa che si sia mai vista. No, seriamente, non vale la pena vedere cosa giace oltre. Stai ancora leggendo? Torna indietro pirla! */HtmlGenericControl cell = (HtmlGenericControl)FindControl(id);
        cell.InnerText = "X";
        cell.Style.Add("background","red");

    }
}