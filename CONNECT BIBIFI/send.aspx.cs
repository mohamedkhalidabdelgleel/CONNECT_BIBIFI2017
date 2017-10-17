using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class send : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text += Session["new"];
        if (Page.IsPostBack == true)
        {
            Response.Write("<script>alert('successfully sending')</script>");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection sql = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        {
            SqlCommand xp = new SqlCommand("INSERT INTO [Table](Sender,Receive,Message) values(@usr, @rusr, @msg)", sql);

            xp.Parameters.AddWithValue("@usr", Session["new"].ToString());
            xp.Parameters.AddWithValue("@rusr", TextBox1.Text);
            xp.Parameters.AddWithValue("@msg", TextBox2.Text);


            sql.Open();
            xp.ExecuteNonQuery();
            sql.Close();

            if (IsPostBack)
            {
                TextBox2.Text = "";
            }
        }

    }
}