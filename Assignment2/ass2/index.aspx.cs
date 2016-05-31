using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        String url = Image1.ImageUrl;
        Image1.ImageUrl = Image2.ImageUrl;
        Image2.ImageUrl = Image3.ImageUrl;
        Image3.ImageUrl = url;
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        slideshow();
    }

    protected void slideshow()
    {
        string url = Image3.ImageUrl;
        Image3.ImageUrl = Image2.ImageUrl;
        Image2.ImageUrl = Image1.ImageUrl;
        Image1.ImageUrl = url;
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        slideshow();
    }
}