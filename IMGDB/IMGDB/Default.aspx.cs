using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCarica_Click(object sender, EventArgs e)
    {
        //creo un array di bytes da riempire con i bytes del file
        byte[] ImgData = flup1.FileBytes;
        // imposto il titolo uguale al nome del file scelto
        string titolo = flup1.PostedFile.FileName;
        // salvo il tipo del file scelto leggendolo da file upload
        string tipo = flup1.PostedFile.ContentType;

        DOCUMENTI DOC = new DOCUMENTI();
        DOC.Carica(ImgData, titolo, tipo);
    }

    protected void btnLeggi_Click(object sender, EventArgs e)
    {
        DOCUMENTI DOC = new DOCUMENTI();
        DataTable DT = DOC.Scarica();

        lit.Text = "";
        foreach (DataRow dr in DT.Rows)
        {
            lit.Text += "<img src='gestore.ashx?c=" + dr["chiave"].ToString() + "' />";
        }
    }
}