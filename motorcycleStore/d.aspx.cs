using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class d : System.Web.UI.Page
{

    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Asususer\Documents\Visual Studio 2013\WebSites\motorcycleStore\motorcycleDB.mdf;Integrated Security=True;Connect Timeout=30");
   
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.Open();
        string sqlquery = "select uName,password from USERS";
        SqlCommand command = new SqlCommand(sqlquery, conn);
        command.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(command);
        da.Fill(dt);
        productList.DataSource = dt;
        productList.DataBind();
    }
}