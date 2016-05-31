using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ass2_displayAllUsers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void displayPW(object sender, GridViewCommandEventArgs e)
    {
        Label1.Text = "Password: " + GridView1.Rows[Convert.ToInt32(e.CommandArgument)].Cells[7].Text;
    }




}