using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;

namespace CommentRepeaterProject
{
    public partial class Upload : System.Web.UI.Page
    {
        String conStr = @"Data Source=desktop-idt8mv1\sqlexpress;Database=TechCode;Integrated Security=true;";
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        private void FillData()
        {
            DataTable dt = new DataTable();
            using (SqlConnection cn = new SqlConnection(conStr))
            {
                SqlCommand cmd = new SqlCommand("GetDocuments", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cn.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                dt.Load(reader);
            }
           
        }
       

       
        protected void Button1_Click(object sender, EventArgs e)
        {
            FileInfo fi = new FileInfo(FileUpload1.FileName);
            byte[] documentContent = FileUpload1.FileBytes;
            String name = fi.Name;
            String extn = fi.Extension;
            String title = Title.Text;
            String cat = DropDownList1.SelectedItem.ToString();
            String email = Email.Text;
            String aut = AuthorName.Text;
           
            using (SqlConnection cn = new SqlConnection(conStr))
            {
                SqlCommand cmd = new SqlCommand("SaveDocument", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = name;
                cmd.Parameters.Add("@Content", SqlDbType.VarBinary).Value = documentContent;
                cmd.Parameters.Add("@Extn", SqlDbType.VarChar).Value = extn;
                cmd.Parameters.Add("@Title", SqlDbType.VarChar).Value = title;
                cmd.Parameters.Add("@Catagary", SqlDbType.VarChar).Value = cat;
                cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = email;
                cmd.Parameters.Add("@AuName", SqlDbType.VarChar).Value = aut;
                cn.Open();
                cmd.ExecuteNonQuery();
               Label1.Text= "File Uploaded Successfully";
            }

        }
    }
}