using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class registration : System.Web.UI.Page
{

    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Asususer\Documents\Visual Studio 2013\WebSites\motorcycleStore\motorcycleDB.mdf;Integrated Security=True;Connect Timeout=30");
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void addUser()
    {

        String usrName, password,education,occupation,region="";
        int cars, age;
        float income;
        int gender, marital, homOwn, credit;

        usrName = TextBox1.Text;
        password = TextBox2.Text;

        cars = int.Parse(TextBox9.Text);
        age = int.Parse(TextBox10.Text);
        income = float.Parse(TextBox9.Text);

        gender = int.Parse(DropDownList2.SelectedValue.ToString());
        marital = int.Parse(DropDownList1.SelectedValue.ToString());
        homOwn = int.Parse(DropDownList3.SelectedValue.ToString());
        credit = int.Parse(DropDownList7.SelectedValue.ToString());

        education = DropDownList5.SelectedItem.ToString();
        occupation= DropDownList6.SelectedItem.ToString();
        region = DropDownList4.SelectedItem.ToString();
       
        conn.Open();
        string sqlquery = "insert into USERS(uName,password, maritalStat,Gender,Income,Education,Occupation,home,Cars,Region,Age) values('" + usrName + "','" + password + "'," + marital + "," + gender + "," + income + ",'" + education + "','" + occupation + "'," + homOwn + "," + cars + ",'" + region + "'," + age + ")";
        SqlCommand command = new SqlCommand(sqlquery, conn);
        command.ExecuteNonQuery();


        conn.Close();
        Response.Redirect("Index.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Equals("") || TextBox2.Text.Equals("") || TextBox4.Text.Equals("") || TextBox9.Text.Equals("") || TextBox10.Text.Equals(""))
        {
            Label15.Text = "Please Fill Empty Fields..";
            return; 
        }
        else
        { 
        addUser();
        }
    }
}