using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prdctSpecification : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Asususer\Documents\Visual Studio 2013\WebSites\motorcycleStore\motorcycleDB.mdf;Integrated Security=True;Connect Timeout=30");
    int prdctId;
    public String productName,catName,price,makerName,imgName,description,glance,amount;
    public String usrName, comment;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        prdctId=int.Parse(Request.QueryString["productID"].ToString());
        con.Open();
        string sqlquery = "select Products.*,catName from Products,Category where((Products.Id='" + prdctId + "')and(Products.categoryID=Category.Id))";
        SqlCommand command = new SqlCommand(sqlquery, con);
        SqlDataReader dr = command.ExecuteReader();

        while (dr.Read())
                   {
                       price = dr["price"].ToString();
                       productName = dr["productName"].ToString();
                       catName = dr["catName"].ToString();
                       price= dr["price"].ToString();
                       makerName = dr["makerName"].ToString();
                       imgName = dr["imgName"].ToString();
                       description = dr["description"].ToString();
                       glance = dr["glance"].ToString();
                       amount = dr["amount"].ToString();

                   }
        
      /*  DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(command);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();*/
       
        con.Close();

        addAllComments();
    }

    public void addAllComments()
    {

        con.Open();
        string comQuery = "select USERS.uName,Comments.comments from Products,Comments,USERS where((Products.Id='" + prdctId + "')and(Comments.prdctId=Products.Id)and(Comments.userId=USERS.Id))";
        SqlCommand comCommand = new SqlCommand(comQuery, con);
        comCommand.ExecuteNonQuery();
        DataTable comdt = new DataTable();
        SqlDataAdapter comda = new SqlDataAdapter(comCommand);
        comda.Fill(comdt);
        productList2.DataSource = comdt;
        productList2.DataBind();

        con.Close();
    }
    public void evaluate(int rate)
    {
        string query="";
        con.Open();
        /*SqlCommand command = new SqlCommand(sqlquery, con);
        command.ExecuteReader();
        con.Close();*/



        string CountQuery = "SELECT Count(*) FROM Evaluation WHERE(prdctId=" + prdctId + " AND userId="+int.Parse(Session["New"].ToString())+")";
        SqlCommand command1 = new SqlCommand(CountQuery, con);
        int temp = Convert.ToInt32(command1.ExecuteScalar().ToString());

        if (temp == 1)
        {

            query = "UPDATE Evaluation SET evaAmount=" + rate + " WHERE ((prdctId=" + prdctId + ") AND (userId=" + int.Parse(Session["New"].ToString()) + "))";
        

        }
        else
        {

             query = "INSERT INTO Evaluation(evaAmount,prdctId,userId) values(" + rate + "," + prdctId +","+int.Parse(Session["New"].ToString())+")";
        
        }

        SqlCommand command2 = new SqlCommand(query, con);
        command2.ExecuteNonQuery();
        con.Close();
    }
    protected void sb1_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["New"] != null)
        {
            evaluate(1);
            ib1.ImageUrl = "~/images/fullstar.gif";
            ib2.ImageUrl = "~/images/emptystar.png";
            ib3.ImageUrl = "~/images/emptystar.png";
            ib4.ImageUrl = "~/images/emptystar.png";
            ib5.ImageUrl = "~/images/emptystar.png";
        }
        else
        {
            string script = "alert(\"You are Not Loged IN, Please Go To Home Page..!\");";
            ScriptManager.RegisterStartupScript(this, GetType(),
                                  "ServerControlScript", script, true);
        }
    }
    protected void ib2_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["New"] != null)
        {
        evaluate(2);
        ib1.ImageUrl = "~/images/fullstar.gif";
        ib2.ImageUrl = "~/images/fullstar.gif";
        ib3.ImageUrl = "~/images/emptystar.png";
        ib4.ImageUrl = "~/images/emptystar.png";
        ib5.ImageUrl = "~/images/emptystar.png";
         }
        else
        {
            string script = "alert(\"You are Not Loged IN, Please Go To Home Page..!\");";
            ScriptManager.RegisterStartupScript(this, GetType(),
                                  "ServerControlScript", script, true);
        }
    }
    protected void ib3_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["New"] != null)
        {
        evaluate(3);
        ib1.ImageUrl = "~/images/fullstar.gif";
        ib2.ImageUrl = "~/images/fullstar.gif";
        ib3.ImageUrl = "~/images/fullstar.gif";
        ib4.ImageUrl = "~/images/emptystar.png";
        ib5.ImageUrl = "~/images/emptystar.png";
 }
        else
        {
            string script = "alert(\"You are Not Loged IN, Please Go To Home Page..!\");";
            ScriptManager.RegisterStartupScript(this, GetType(),
                                  "ServerControlScript", script, true);
        }
    }

    protected void ib4_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["New"] != null)
        {
        evaluate(4);
        ib1.ImageUrl = "~/images/fullstar.gif";
        ib2.ImageUrl = "~/images/fullstar.gif";
        ib3.ImageUrl = "~/images/fullstar.gif";
        ib4.ImageUrl = "~/images/fullstar.gif";
        ib5.ImageUrl = "~/images/emptystar.png";
 }
        else
        {
            string script = "alert(\"You are Not Loged IN, Please Go To Home Page..!\");";
            ScriptManager.RegisterStartupScript(this, GetType(),
                                  "ServerControlScript", script, true);
        }
    }
    protected void ib5_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["New"] != null)
        {
        evaluate(5);
        ib1.ImageUrl = "~/images/fullstar.gif";
        ib2.ImageUrl = "~/images/fullstar.gif";
        ib3.ImageUrl = "~/images/fullstar.gif";
        ib4.ImageUrl = "~/images/fullstar.gif";
        ib5.ImageUrl = "~/images/fullstar.gif";
 }
        else
        {
            string script = "alert(\"You are Not Loged IN, Please Go To Home Page..!\");";
            ScriptManager.RegisterStartupScript(this, GetType(),
                                  "ServerControlScript", script, true);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        /* ----------------- userId     -----------------------------*/
        if (Session["New"] != null) {
            if (!TextBox1.Text.Equals(""))
            {
                con.Open();
                string sqlquery = "insert into Comments(comments,prdctId,userId) values('" + TextBox1.Text + "'," + prdctId + "," + int.Parse(Session["New"].ToString()) + ")";
                SqlCommand command = new SqlCommand(sqlquery, con);
                command.ExecuteNonQuery();

                con.Close();

                Response.Redirect(Request.Url.AbsoluteUri);/*to update page*/
            }
            else
            {
                string script = "alert(\"Please Fill Field\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);

            }
        }
        else
        {

            string script = "alert(\"You are Not Loged IN, Please Go To Home Page..!\");";
            ScriptManager.RegisterStartupScript(this, GetType(),
                                  "ServerControlScript", script, true);

        }
        
    }
}
