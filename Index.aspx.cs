using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace UserRegistration
{
    public partial class Index : System.Web.UI.Page
    {
        string ConnectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=UserRegistration;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Clear();
                if(!String.IsNullOrEmpty(Request.QueryString["id"]))
                {
                    int userId = Convert.ToInt32(Request.QueryString["id"]);
                    using (SqlConnection con = new SqlConnection(ConnectionString))
                    {
                        con.Open();
                        SqlDataAdapter adp = new SqlDataAdapter("SelectSP", con);
                        adp.SelectCommand.CommandType = CommandType.StoredProcedure;
                        adp.SelectCommand.Parameters.AddWithValue("@UserId", userId);
                        DataTable dt = new DataTable();
                        adp.Fill(dt);


                        hfUserID.Value = userId.ToString();

                        txtFirstName.Text = dt.Rows[0][1].ToString();
                        txtLastName.Text = dt.Rows[0][2].ToString();
                        txtContact.Text = dt.Rows[0][3].ToString();
                        ddlGender.Items.FindByValue(dt.Rows[0][4].ToString()).Selected = true;
                        txtAddress.Text = dt.Rows[0][5].ToString();
                        txtUserName.Text = dt.Rows[0][6].ToString();
                        txtPassword.Text = dt.Rows[0][7].ToString();
                        txtPassword.Attributes.Add("Value", dt.Rows[0][7].ToString());
                        txtConfirmPassword.Text = dt.Rows[0][7].ToString();
                        txtConfirmPassword.Attributes.Add("Value", dt.Rows[0][7].ToString());
                    }
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if(txtPassword.Text!=txtConfirmPassword.Text)
            {
                lblError.Text = "Please Enter Same Password";
            }
            else
            {
                using (SqlConnection con = new SqlConnection(ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("RegSP", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@Userid", Convert.ToInt32(hfUserID.Value == "" ? "0" : hfUserID.Value));
                    cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
                    cmd.Parameters.AddWithValue("@LastName", txtLastName.Text);
                    cmd.Parameters.AddWithValue("@Contact", txtContact.Text);
                    cmd.Parameters.AddWithValue("@Gender", ddlGender.SelectedValue);
                    cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
                    cmd.Parameters.AddWithValue("@UserName", txtUserName.Text);
                    cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                    cmd.ExecuteNonQuery();
                    lblSucess.Text = "You have Successfully Registered Yourself";

                }
            }
            
        }

        public void Clear()
        {
            txtFirstName.Text = txtLastName.Text = txtContact.Text = txtAddress.Text = txtUserName.Text = txtPassword.Text = "";
            hfUserID.Value = "";
            lblSucess.Text = lblError.Text = "";
        }
    }
}