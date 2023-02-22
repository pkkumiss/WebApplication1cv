using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1cv
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetData();
            }

        }

        private void GetData()
        {
            string cs = "data source = .; database=api_crud; integrated security = true";
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from employee";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            empgripview.DataSource = cmd.ExecuteReader();
            empgripview.DataBind();
            con.Close();
        }

        protected void subimitbtn_Click(object sender, EventArgs e)
        {
            string firstname = Textfname.Text;
            string middlename = Textmname.Text;
            string lasttname = Textlname.Text;
            string address = Textaddress.Text;
            string email = Textemail.Text;
            int mobilenumber = Convert.ToInt32(Textmobilenumber.Text);
            string higherqualification = Texthq.Text;
            string secondaryqualification = Textsq.Text;
            string primaryqualification = Textpq.Text;
            string cs = "data source = .; database=api_crud; integrated security = true";

            SqlConnection con = new SqlConnection(cs);
            string query = string.Format("insert into employee values('{0}','{1}','{2}','{3}','{4}',{5},'{6}','{7}','{8}')"
                , firstname, middlename, lasttname, address, email,mobilenumber,higherqualification,secondaryqualification,primaryqualification);

            SqlCommand cmd = new SqlCommand(query,con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            ClientScript.RegisterClientScriptBlock(this.GetType(),"kj", "alert('record inserted')",true);

            Textfname.Text = "";
            Textmname.Text = "";
            Textlname.Text = "";
            Textaddress.Text = "";
            Textemail.Text = "";
            Textmobilenumber.Text = "";
            Texthq.Text = "";
            Textsq.Text = "";
            Textpq.Text = "";




        }

        protected void empgripview_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(empgripview.DataKeys[e.RowIndex].Value);
            
                string cs = "data source = .; database=api_crud; integrated security = true";
                SqlConnection con = new SqlConnection(cs);
                string query = "delete * from employee where empid = " + id;
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
            int row = cmd.ExecuteNonQuery();
                con.Close();
            if (row > 0)
            {
                GetData();
            }


        }
    }
}