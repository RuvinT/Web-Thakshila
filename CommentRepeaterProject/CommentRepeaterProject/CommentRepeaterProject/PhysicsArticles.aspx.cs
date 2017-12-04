using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.IO;
using System.Data.SqlClient;
namespace CommentRepeaterProject
{
    public partial class View : System.Web.UI.Page
    {
        String conStr = @"Data Source=desktop-idt8mv1\sqlexpress;Database=TechCode;Integrated Security=true;";
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet ds = GetData1();


            Repeater1.DataSource = ds;
            Repeater1.DataBind();
        }
        protected void open(Object sender,EventArgs e)
        {
            int Id = Convert.ToInt32(((LinkButton)sender).CommandArgument);

            Download(Id);
        }
        private void Download(int id)
        { DataTable dt = new DataTable();
            using (SqlConnection cn = new SqlConnection(conStr))
            {
                SqlCommand cmd = new SqlCommand("GetDocument", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@ID", SqlDbType.Int).Value = id;
                cn.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                dt.Load(reader);
            }
            string name = dt.Rows[0]["Name"].ToString();
            byte[] docunentBytes = (byte[])dt.Rows[0]["DocumentContent"];
            Response.ClearContent();
            Response.ContentType = "application/octetstream";
            Response.AddHeader("Content-Disposition", string.Format("attachment;filename={0}", name));
            Response.AddHeader("Content-Length", docunentBytes.Length.ToString());
            Response.BinaryWrite(docunentBytes);
            Response.Flush();
            Response.Close();
        }
        private DataSet GetData1()
        {
            using (SqlConnection cn = new SqlConnection(conStr))
            {


                SqlDataAdapter da = new SqlDataAdapter("SELECT  Name,Extn,ID,Title,AuName FROM Documents ", cn);

                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;


            }
        }
    }
}