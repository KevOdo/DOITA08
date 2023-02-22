using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PhotoUpload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            ALBUM al = new ALBUM();
            DataTable DT = al.SelectByUtente("1");
            foreach (DataRow dr in DT.Rows)
            {
                ListItem it = new ListItem();
                it.Text = dr["TITOLO"].ToString();
                it.Value = dr["chiave"].ToString();
                ddlAlbum.Items.Add(it);
            }
        }
    }
    protected void btnCarica_Click(object sender, EventArgs e)
    {
        //creo un array di bytes da riempire con i bytes del file
        byte[] imgData = flup.FileBytes;
        // imposto il titolo uguale al nome del file scelto
        string titolo = txtTitolo.Text.Trim();
        // salvo il tipo del file scelto leggendolo da file upload
        string tipo = flup.PostedFile.ContentType;

        string descrizione = txtDescrizione.Text.Trim();
        string data = DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss");
        string chiaveAlbum = ddlAlbum.SelectedValue.ToString();

        IMMAGINI DOC = new IMMAGINI();
        DOC.Carica(chiaveAlbum, imgData, titolo, descrizione, tipo, data);
    }
}