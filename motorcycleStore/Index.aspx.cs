
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using System.Web.UI;
    using System.Web.UI.WebControls;
    using System.Data.SqlClient;
    using System.Configuration;
    using System.Data;



public partial class Index : System.Web.UI.Page
{

    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Asususer\Documents\Visual Studio 2013\WebSites\motorcycleStore\motorcycleDB.mdf;Integrated Security=True;Connect Timeout=30");
    MasterPage m = new MasterPage();
    int userID=0;
  
 

    public void Page_Load(object sender, EventArgs e)
    {

       

        loadProdcts("Category.catName like'%%'");
        

        Button b1 = (Button)this.Master.FindControl("Button1");
        b1.Click += b1_Click;
        

        Button b2 = (Button)this.Master.FindControl("Button2");
        b2.Click += b2_Click;

        Button b3 = (Button)this.Master.FindControl("Button3");
        b3.Click += b3_Click;

        Button b4 = (Button)this.Master.FindControl("Button4");
        b4.Click += b4_Click;

        Button b5 = (Button)this.Master.FindControl("Button5");
        b5.Click += b5_Click;

        Button b6 = (Button)this.Master.FindControl("Button6");
        b6.Click += b6_Click;

        Button b7 = (Button)this.Master.FindControl("Button7");
        b7.Click += b7_Click;

        if (Session["New"] != null)
        {
            Label2.Visible = false;
            Label3.Visible = false;
            TextBox1.Visible = false;
            TextBox2.Visible = false;
            Button2.Visible = false;
            Button1.Visible = true;

            conn.Open();
            string getIdquery = "SELECT uName FROM USERS WHERE Id=" + int.Parse(Session["New"].ToString()) ;
            SqlCommand getIcommand = new SqlCommand(getIdquery, conn);
            String uName = getIcommand.ExecuteScalar().ToString();
            Label1.Text = "Welcome " + uName;
            conn.Close();


        }
        else
        {
            Label2.Visible = true;
            Label3.Visible = true;
            TextBox1.Visible = true;
            TextBox2.Visible = true;
            Button2.Visible = true;
            Button1.Visible = false;

        }

    }

    void b7_Click(object sender, EventArgs e)
    {

        loadProdcts("Category.catName='Accessories'");
        Label15.Text = "Accessories";
        //throw new NotImplementedException();
    }

    void b6_Click(object sender, EventArgs e)
    {

        loadProdcts("Category.catName='Replacement parts'");
        Label15.Text = "Replacement parts";
        //throw new NotImplementedException();
    }

    void b5_Click(object sender, EventArgs e)
    {

        loadProdcts("Category.catName='ATV Motorcycle'");
        Label15.Text = "ATV Motorcycle";
        //throw new NotImplementedException();
    }

    void b4_Click(object sender, EventArgs e)
    {

        loadProdcts("Category.catName='Small Motorcycle'");
        Label15.Text = "Small Motorcycle";
        //throw new NotImplementedException();
    }

    void b3_Click(object sender, EventArgs e)
    {

        loadProdcts("Category.catName='Ordinary Motorcycle'");
        Label15.Text = "Ordinary Motorcycle";
        //throw new NotImplementedException();
    }

    void b2_Click(object sender, EventArgs e)
    {

        loadProdcts("Category.catName='Mountain Motorcycle'");
        Label15.Text = "Mountain Motorcycle";
        //throw new NotImplementedException();
    }

    void b1_Click(object sender, EventArgs e)
    {
       
        loadProdcts("Category.catName='Speed_Motorcycle'");
        Label15.Text = "Speed Motorcycle";
        //throw new NotImplementedException();
       
        
       
    }

  /*  protected String starsAverage(int avg)
    {
        
        
       conn.Open();
        string avgQery = "SELECT AVG(evaAmount),prdctId from Evaluation GROUP BY prdctId ";
        SqlCommand avgCommand = new SqlCommand(avgQery, conn);
        avg = Convert.ToInt32(avgCommand.ExecuteScalar().ToString());
        conn.Close();
   
    
    } */

    public String starsAverageI1(int avg)
    {
        if (avg >= 1)
        {
            return "~/images/fullstar.gif";
        }
        else
        {
            return "~/images/emptystar.png";
        }

    }
    public String starsAverageI2(int avg)
    {
        if (avg >= 2)
        {
            return "~/images/fullstar.gif";
        }
        else
        {
            return "~/images/emptystar.png";
        }

    }
    public String starsAverageI3(int avg)
    {
        if (avg >= 3)
        {
            return "~/images/fullstar.gif";
        }
        else
        {
            return "~/images/emptystar.png";
        }

    }
    public String starsAverageI4(int avg)
    {
        if (avg >= 4)
        {
            return "~/images/fullstar.gif";
        }
        else
        {
            return "~/images/emptystar.png";
        }

    }
    public String starsAverageI5(int avg)
    {
        if (avg == 5)
        {
            return "~/images/fullstar.gif";
        }
        else
        {
            return "~/images/emptystar.png";
        }

    }

    public void loadProdcts(String s)
    {
       
        conn.Open();
        string sqlquery = "select Products.Id,productName,price,imgName,glance,catName,AVG(evaAmount) AS VAL from Products,Category,Evaluation where(("+s+")and(Products.categoryID=Category.Id)and(Evaluation.prdctId=Products.Id)) GROUP BY Products.Id,Products.productName,Products.price,Products.imgName,Products.glance,Category.catName ";
        
        SqlCommand command = new SqlCommand(sqlquery, conn);
        command.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(command);
        da.Fill(dt);
        productList.DataSource = dt;
        productList.DataBind();
        conn.Close();
     


    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        String userName= "";
        String password = "";
        userName = TextBox1.Text;
        password = TextBox2.Text;



        if (TextBox1.Text.Equals("") || TextBox2.Text.Equals(""))
        {
            Label1.Text = "Please Fill Empty Fields..";
            return;
        }
        else
        {

            if (IsPostBack)
            {

                conn.Open();
                string sqlquery = "SELECT Count(*) FROM USERS WHERE uName='" + userName + "' AND password='" + password + "'";
                SqlCommand command = new SqlCommand(sqlquery, conn);
               
                int temp = Convert.ToInt32(command.ExecuteScalar().ToString());

                if (temp == 1)
                {
                    
                    
                    Label1.Text = "Welcome "+userName;

                    Label2.Visible = false;
                    Label3.Visible = false;
                    TextBox1.Visible = false;
                    TextBox2.Visible = false;
                    Button2.Visible = false;
                    Button1.Visible = true;

                }
                else
                {

                    Label1.Text = "Wrong UserName Or Password";
                }

                  conn.Close();



                  conn.Open();
                  string getIdquery = "SELECT Id FROM USERS WHERE uName='" + userName + "' AND password='" + password + "'";
                  SqlCommand getIcommand = new SqlCommand(getIdquery, conn);
           
                if (getIcommand.ExecuteScalar()!=null)
                  userID = Convert.ToInt32(getIcommand.ExecuteScalar().ToString());

                  if (userID >0)
                  {

                      Session["New"] = userID;
                      

                  }
                 


                conn.Close();




   }
        }


                  /*SqlDataReader dr = getIcommand.ExecuteReader();
                   while (dr.Read())
                   {
                       Response.Write(dr["Id"].ToString());
                       usrNameDb = dr["uName"].ToString();
                       passwordDb = dr["password"].ToString();
                       if ((userName.Equals( usrNameDb)) && (password.Equals(passwordDb)))
                       {
                           Session["New"] = dr["Id"];
                           Response.Write(Session["New"].ToString());
                           string script = "alert(\"You are Not Loged IN, Please Go To Home Page..!\");";
                           ScriptManager.RegisterStartupScript(this, GetType(),
                                                 "ServerControlScript", script, true);
                       }
                   }*/

                  

                
         
    }


    protected void Button8_Click(object sender, EventArgs e)
    {
        loadProdcts("speed");


    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        loadProdcts("speed1");
    }
    


    protected void searchSubmit_Click(object sender, EventArgs e)
    {
        
        String s="(Category.catName like '%"+TextBox3.Text+"%')OR(productName like '%"+TextBox3.Text+"%')";
        loadProdcts(s);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Label2.Visible = true;
        Label3.Visible = true;
        TextBox1.Visible = true;
        TextBox2.Visible = true;
        Button2.Visible = true;
        Button1.Visible = false;
        Label1.Text = "Please LogIn";
    }
}

