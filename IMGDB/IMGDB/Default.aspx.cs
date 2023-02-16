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

        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = @"Data Source=DESKTOP-QNAP4SN\SQLEXPRESS;Initial Catalog=IMGDB;Integrated Security=true";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into DOCUMENTI values(@t,@d,@type)"; // y = type
        cmd.Parameters.AddWithValue("@t", titolo);
        cmd.Parameters.AddWithValue("@d", ImgData);
        cmd.Parameters.AddWithValue("@type", tipo);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }

    protected void btnLeggi_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = @"Data Source=DESKTOP-QNAP4SN\SQLEXPRESS;Initial Catalog=IMGDB;Integrated Security=true";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from DOCUMENTI";
        DataTable DT = new DataTable();
        SqlDataAdapter DA = new SqlDataAdapter();
        DA.SelectCommand = cmd;
        DA.Fill(DT);

        lit.Text = "";
        foreach (DataRow dr in DT.Rows)
        {
            lit.Text += "<img src='gestore.ashx?c=" + dr["chiave"].ToString() + "' />";
        }
    }
}