using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class ass2_searchUsers : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

     

    }

 


    protected void ButtonSearch_Click(object sender, EventArgs e)
    {
        string strConnection = "Provider = Microsoft.Jet.OLEDB.4.0; Data Source = " + Server.MapPath("Assign2user.mdb") + ";";
        string strSQL = "";
        strSQL = "SELECT * FROM users WHERE Gender = '" + DropDownListGender.SelectedValue.ToString() + "' and userName LIKE '%" + TextBoxSearchByName.Text.Trim(' ') + "%' and Age = '" + RadioButtonListAge.SelectedValue.ToString() +"'";

        DataSet objDataSet = new DataSet();

        OleDbConnection objConnection = new OleDbConnection(strConnection);
        OleDbDataAdapter objAdapter = new OleDbDataAdapter(strSQL, objConnection);
        try
        {
            int rec;
            rec = objAdapter.Fill(objDataSet, "searchuser");
            if (rec != 0)
            {
                DataView objDataView =
                   new DataView(objDataSet.Tables["searchuser"]);

                GridView1.DataSource = objDataView;
                GridView1.DataBind();
                log.Visible = true;
                error.Visible = false;
            }
            else if (rec == 0)
            {
                error.Text = "NO RECORDS WERE FOUND!!!";
                log.Visible = false;
                error.Visible = true;
            }
        }
        catch(Exception ex)
        {
            Response.Write(ex);
        }

    }
}