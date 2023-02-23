using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Album : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ALBUM a = new ALBUM();
        DataTable DT = a.SelectByUtente(Session["USRchiave"].ToString());

        albums.InnerHtml = "";
        int i = 0;
        foreach (DataRow dr in DT.Rows)
        {
            if(i == 0)
            {
                albums.InnerHtml += "<div class='row py-1'>";
            }
            albums.InnerHtml += "<div class='col-lg-3'>";
            albums.InnerHtml += "<div class='album'>";
            albums.InnerHtml += "<div class='card'>";
            albums.InnerHtml += "<div class='card-body'>";
            albums.InnerHtml += dr["TITOLO"].ToString();
            albums.InnerHtml += "</div>";
            albums.InnerHtml += "</div>";
            albums.InnerHtml += "</div>";
            albums.InnerHtml += "</div>";
            if(i == 3)
            {
                albums.InnerHtml += "</div>";
                i = 0;
            } else
            {
                i++;
            }
        }

    }

    protected void btnCarica_Click(object sender, EventArgs e)
    {
        if (String.IsNullOrEmpty(txtAlbum.Text))
        {
            return;
        }
        ALBUM a = new ALBUM();
        a.Insert(Session["USRchiave"].ToString(), txtAlbum.Text.Trim());
        DataBind();
    }
}