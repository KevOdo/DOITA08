using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class UserPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCarica_Click(object sender, EventArgs e)
    {
        UTENTI u = new UTENTI();
        //creo un array di bytes da riempire con i bytes del file
        byte[] imgData = flup.FileBytes;
        // salvo il tipo del file scelto leggendolo da file upload
        string tipo = flup.PostedFile.ContentType;
        string chiave = Session["USRchiave"].ToString();
        u.UpdateImgProfilo(chiave, imgData, tipo);
    }
}