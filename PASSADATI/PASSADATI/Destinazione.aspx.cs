﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Destinazione : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //string codiceSpedito = Request.QueryString["cod"];

        string varSession = Session["cod"].ToString();
    }
}