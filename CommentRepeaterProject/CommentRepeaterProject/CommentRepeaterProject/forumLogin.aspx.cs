﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace CommentRepeaterProject
{
    public partial class forumLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Login_Click(object sender, EventArgs e)
        {
            int flag = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FRCon1"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select * from Forum_Registration where username='" + txtusername.Text + "'", con);
            con.Open();
            if (con.State == ConnectionState.Open)
            {
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    if (dr["username"].ToString().Equals(txtusername.Text) && dr["password"].ToString().Equals(txtpassword.Text))
                    {
                        flag = 1;
                        break;
                    }
                }
                if (flag == 1)
                {
                    Session["nam"] = txtusername.Text;
                    Response.Redirect("~/default.aspx");
                }
            }
            Response.Write("Invalid Username and Password");

        }
    }
}