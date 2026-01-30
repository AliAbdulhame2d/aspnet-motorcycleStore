using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class addProduct : System.Web.UI.Page
{


    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Asususer\Documents\Visual Studio 2013\WebSites\motorcycleStore\motorcycleDB.mdf;Integrated Security=True;Connect Timeout=30");
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {

       
        if (TextBox1.Text.Equals("") || TextBox2.Text.Equals("") || TextBox3.Text.Equals("") || TextBox4.Text.Equals("") || TextBox5.Text.Equals("") || TextBox10.Text.Equals(""))
        {
            Label15.Text = "Please Fill Empty Fields..";
            return;
        }
        else
        { 
            if(Session["New"]!=null){

                conn.Open();
                string getIdquery = "SELECT admin FROM USERS WHERE Id=" + int.Parse(Session["New"].ToString());
                SqlCommand getIcommand = new SqlCommand(getIdquery, conn);
                Object admin = getIcommand.ExecuteScalar();
                bool val=admin==null?false:(bool)admin;
               
                conn.Close();
                if(val==true){

            String fileName = "";
            file.SaveAs(Request.PhysicalApplicationPath + "images/" + file.FileName.ToString());
            fileName = file.FileName.ToString();


            String prdctName, makerName, glance, description = "";
            int price, amount, categoryId;

            prdctName = TextBox1.Text;
            makerName = TextBox2.Text;
            price = int.Parse(TextBox10.Text);
            amount = int.Parse(TextBox5.Text);
            categoryId = int.Parse(DropDownList2.SelectedValue.ToString());

            glance = TextBox3.Text;
            description = TextBox4.Text;


            conn.Open();
            string sqlquery = "insert into Products(productName,categoryId,price,makerName,imgName,description,glance,amount) values('" + prdctName + "','" + categoryId + "'," + price + ",'" + makerName + "','" + fileName + "','" + description + "','" + glance + "'," + amount + ")";
            SqlCommand command = new SqlCommand(sqlquery, conn);
            command.ExecuteNonQuery();
            conn.Close();
            addEvaluation(prdctName, makerName);

            Response.Redirect("Index.aspx");}
                else{
                    Label15.Text = "You are Not Admin..";

                    string script = "alert(\"You are Not Admin..\");";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                                          "ServerControlScript", script, true);
                }
            }else{
                
                Label15.Text = "You are Not Loged IN, Please Go To Home Page..";

            string script = "alert(\"You are Not Loged IN, Please Go To Home Page..!\");";
            ScriptManager.RegisterStartupScript(this, GetType(),
                                  "ServerControlScript", script, true);}
            
      }
    }
    
   public void addEvaluation(String productName,String makerName){
       int productId;
       conn.Open();
       string selectIdQuery = "SELECT Id FROM Products WHERE productName='" + productName + "' AND makerName='" + makerName + "'";
       SqlCommand selectIdCommand = new SqlCommand(selectIdQuery, conn);
       productId = Convert.ToInt32(selectIdCommand.ExecuteScalar().ToString());
       conn.Close();

       
       conn.Open();
       string defultEva = "insert into Evaluation(prdctId,userId)values(" + productId + ",2)";
       SqlCommand command = new SqlCommand(defultEva, conn);
       command.ExecuteNonQuery();


       conn.Close();
    }
}