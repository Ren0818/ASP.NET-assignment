using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = null;
        Label2.Text = null;
        Label3.Text = null;
        Label4.Text = null;
        Label5.Text = null;
        Label7.Text = null;
        Label8.Text = null;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        Label1.Text = signpageUN.Text;
        Label2.Text =signpageCP.Text;
        Label3.Text = signpageEm.Text;
        Label4.Text =  signpagePh.Text;
        Label5.Text = genderDropDownList.SelectedValue;
        Label7.Text =  RadioButtonListAge.SelectedValue;
       
        if (CheckBoxPrefer.Checked)
        {
            Label8.Text = typePerfer.Text;
           
        }
        else
        {
            Label8.Text = null;
        }
        usersdata.Insert();
       


    }


    protected void CheckBoxPrefer_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBoxPrefer.Checked)
        {
            Panel1.Visible = true;
        }
        else
        {
            Panel1.Visible = false;
        }
    }
}