using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;
using System;
using System.Web;
using System.Web.UI;
using CONNECT_BIBIFI;

public partial class Account_Login : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        RegisterHyperLink.NavigateUrl = "Register";
        
        var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
        if (!String.IsNullOrEmpty(returnUrl))
        {
            RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
        }
    }

    protected void LogIn(object sender, EventArgs e)
    {
        if (IsValid)
        {

            Session["new"] = UserName.Text;
            string ack1 = Password.Text;
            Session[" passr"] = Password.Text;
            string ack = Session["passr"].ToString();
           
            if(ack==ack1 )
            {
                Response.Redirect("inbox.aspx");
            }
            else
            {
                Response.Write("<script>alert('You enterd a wrong password ')</script>");
            }
         
            
        }
    }
}