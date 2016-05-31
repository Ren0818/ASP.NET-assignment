using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
     
        
    }

    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        // Change the background color of the days in the month
        // to yellow.
        if (!e.Day.IsOtherMonth && e.Day.IsWeekend)
            e.Cell.BackColor = System.Drawing.Color.Cyan;

        // Add custom text to cell in the Calendar control.

        string strConnection = "Provider = Microsoft.Jet.OLEDB.4.0; Data Source = " + Server.MapPath("Assign2user.mdb") + ";";
        //All Event
        string strSQL = "SELECT * FROM events";

        OleDbConnection objConnection = new OleDbConnection(strConnection);
        OleDbCommand objCommand = new OleDbCommand(strSQL, objConnection);

        OleDbDataReader objDataReader = null;

        objConnection.Open();
        objDataReader = objCommand.ExecuteReader();

        while (objDataReader.Read() == true)
        { 
            if (e.Day.Date.Date == Convert.ToDateTime(objDataReader[2]))
            {
                e.Cell.Controls.Add(new LiteralControl("<br/>Event"));
            }

            if (Convert.ToDateTime(objDataReader[2]) == DateTime.Today)
            {
                Label1.Text = "Check event for today!";
            }
            else
            {
                Label1.Text = "No event for today";
            }
            
        }
       
        objDataReader.Close();
        objConnection.Close();

    }
}
