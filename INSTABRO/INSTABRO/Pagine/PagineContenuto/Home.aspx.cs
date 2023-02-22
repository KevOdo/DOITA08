using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Web.UI.HtmlControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            IMMAGINI im = new IMMAGINI();
            DataTable DT = im.Last50();

            lit.InnerHtml = "";
            int i = 0;
            foreach (DataRow dr in DT.Rows)
            {
                if (i == 0)
                {
                    lit.InnerHtml += "<div class='row py-1'>";
                    lit.InnerHtml += "<div class='col-lg-1'></div>";

                }
                string chiave = dr["chiave"].ToString();
                lit.InnerHtml += "<div class=col-lg-2>";
                //lit.InnerHtml += "<asp:ImageButton ID='ImageButton1' runat='server' CssClass='image' ImageUrl='/AsyncHandler.ashx?c=" + chiave + "' /> ";
                lit.InnerHtml += "<img runat='server' onclick='showPopup(" + chiave+"); imgClick(" + chiave+");' alt='" + chiave + "' class='image' src='/AsyncHandler.ashx?c=" + chiave + "' />";
                lit.InnerHtml += "</div>";
                if (i == 4)
                {
                    lit.InnerHtml += "<div class='col-lg-1'></div>";
                    lit.InnerHtml += "</div>";
                    i = 0;
                }
                else
                {
                    i++;
                }
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string searchTerm = txtSearch.Text.Trim();
        IMMAGINI im = new IMMAGINI();
        DataTable DT = im.FilterSearchBar(searchTerm);

        lit.InnerHtml = "";
        int i = 0;
        foreach (DataRow dr in DT.Rows)
        {
            if (i == 0)
            {
                lit.InnerHtml += "<div class='row py-1'>";
                lit.InnerHtml += "<div class='col-lg-1'></div>";

            }
            string chiave = dr["chiave"].ToString();
            lit.InnerHtml += "<div class=col-lg-2>";
            lit.InnerHtml += "<img runat='server' onclick='imgClick("+chiave+")' alt='" + chiave + "' class='image' src='/AsyncHandler.ashx?c=" + chiave + "' />";
            lit.InnerHtml += "</div>";
            if (i == 4)
            {
                lit.InnerHtml += "<div class='col-lg-1'></div>";
                lit.InnerHtml += "</div>";
                i = 0;
            }
            else
            {
                i++;
            }
        }
    }

    [WebMethod]
    public static void setKey(string chiave)
    {
        HttpContext.Current.Session["imgKey"] = chiave;
    }

    protected void pnlModifica_Load(object sender, EventArgs e)
    {
        Iframe1.Visible= true;
        Iframe1.DataBind();
    }
}