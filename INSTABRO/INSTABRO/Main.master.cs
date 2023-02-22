using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Main : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        menuPhotos.Visible = false;
        menuAlbums.Visible = false;
        menuLogout.Visible = false;
        menuUser.Visible = false;
        if (Session["USRchiave"] != null)
        {
            menuPhotos.Visible = true;
            menuAlbums.Visible = true;
            menuLogout.Visible = true;
            menuUser.Visible = true;

            menuLogin.Visible = false;

            if (Session["TIPOIMG"] != null && !String.IsNullOrEmpty(Session["TIPOIMG"].ToString()))
            {
                usrIcon.InnerHtml = "<img class='menu-icon' src='/Handler.ashx?c=" + Session["USRchiave"].ToString() + "' />";
            }

        }
    }
}
