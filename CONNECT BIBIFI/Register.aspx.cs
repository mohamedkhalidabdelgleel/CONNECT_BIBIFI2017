using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using CONNECT_BIBIFI;
using System.Data.SqlClient;
using System.Configuration;

partial class Account_Register : System.Web.UI.Page
{
    

   
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        Session["passr"] = TextBox3.Text;
     
        Response.Redirect("Login.aspx");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}

