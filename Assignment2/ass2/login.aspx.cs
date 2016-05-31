using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ass2_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login_Authenticate(object sender, AuthenticateEventArgs e)
    {
        DS1.SelectCommand = "SELECT * FROM users WHERE UserName = '" + Login.UserName + "' AND Password = '" + Login.Password + "'";

        DS1.Select(DataSourceSelectArguments.Empty);
    }
    protected void CheckLogin(object sender,SqlDataSourceStatusEventArgs e)
    {
        if (e.AffectedRows > 0)
        {
            FormsAuthentication.RedirectFromLoginPage(Login.UserName,false);
           
        }
        else
        {
            Login.FailureText = "Invalid Login";
        }
    }
}