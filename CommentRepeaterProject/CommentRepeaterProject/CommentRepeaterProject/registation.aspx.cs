using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace ihack
{
    public partial class registation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            try
            {
               
                //algorithum for globle user identifier
                //M

                Guid newGUID = Guid.NewGuid();

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Study GroupsConnectionString"].ConnectionString);

                con.Open();

                String userinsertquary = "insert into Users (UserId,FirstName,LastName,email,Location,NIC,Password) values (@UID,@FName,@LName,@eml,@loca,@ni,@pwd)";
                SqlCommand com = new SqlCommand(userinsertquary, con);

                com.Parameters.AddWithValue("@UID", newGUID.ToString());
                com.Parameters.AddWithValue("@FName", TextBoxFirstName.Text);
                com.Parameters.AddWithValue("@LName", TextBoxLastName.Text);
                com.Parameters.AddWithValue("@eml", TextBoxemail.Text);
                com.Parameters.AddWithValue("@loca", TextBoxLocation.Text);
                com.Parameters.AddWithValue("@ni", TextBoxNIC.Text);
                com.Parameters.AddWithValue("@pwd", TextBoxPassword.Text);

                com.ExecuteNonQuery();


                Response.Write("Hariyata demma wede hari mcn");

                            

                con.Close();

                
            }

            catch (Exception ex)
            {
                Response.Write("Error ekak insert karaddi poddak balanna " + ex.ToString());
            }

        }
    }
}