using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pagine_PaginePopup_Immagine : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["imgKey"] == null)
        {
            return;
        }
        string chiave = Session["imgKey"].ToString();
        IMMAGINI i = new IMMAGINI();
        DataTable DT = i.SelectByKey(chiave);
        titolo.InnerText = DT.Rows[0]["TITOLO"].ToString();
        img.ImageUrl = "/AsyncHandler.ashx?c=" + chiave;
    }
}