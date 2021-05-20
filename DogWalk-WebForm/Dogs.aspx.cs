using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace DogWalk_WebForm
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindGrid();
            }
        }



        //START CRUD 

        SqlConnection con = new SqlConnection(@"Data Source=PUTER\SQLEXPRESS;Initial Catalog=DogWalkWebFormEx;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

        private void BindGrid()
        {

            using (SqlConnection constr = new SqlConnection()) ;

            {
                using (SqlCommand cmd = new SqlCommand("dbo.Dogs_CRUD"))
                {
                    cmd.Parameters.AddWithValue("@Action", "SELECT");
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridViewDog.DataSource = dt;
                            GridViewDog.DataBind();
                        }
                    }
                }
            }
        }

        protected void Insert(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string ownerId = txtOwnerId.Text;
            string breed = txtBreed.Text;
            string notes = txtNotes.Text;
            string imageUrl = txtImageUrl.Text;

            using (SqlConnection constr = new SqlConnection()) ;
            {
                using (SqlCommand cmd = new SqlCommand("dbo.Dogs_CRUD"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "INSERT");
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@OwnerId", ownerId);
                    cmd.Parameters.AddWithValue("@Breed", breed);
                    cmd.Parameters.AddWithValue("@Notes", notes);
                    cmd.Parameters.AddWithValue("@ImageUrl", imageUrl);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            this.BindGrid();
        }

        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewDog.EditIndex = e.NewEditIndex;
            this.BindGrid();
        }


        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridViewDog.Rows[e.RowIndex];
            int dogId = Convert.ToInt32(GridViewDog.DataKeys[e.RowIndex].Values[0]);
            string name = (row.FindControl("txtName") as TextBox).Text;
            int ownerId = Convert.ToInt32(row.FindControl("txtOwnerId") as TextBox);
            string breed = (row.FindControl("txtBreed") as TextBox).Text;
            string notes = (row.FindControl("txtNotes") as TextBox).Text;
            string imageUrl = (row.FindControl("txtImageUrl") as TextBox).Text;

            using (SqlConnection constr = new SqlConnection())
            {
                using (SqlCommand cmd = new SqlCommand("dbo.Dogs_CRUD"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "UPDATE");
                    cmd.Parameters.AddWithValue("@DogId", dogId);
                    cmd.Parameters.AddWithValue("@Name", name);
                    if (ownerId == null)
                    {
                        cmd.Parameters.AddWithValue("@OwnerId", ownerId);
                    }
                    else
                    {

                        cmd.Parameters.AddWithValue("@OwnerId", DBNull.Value);
                    }
                    cmd.Parameters.AddWithValue("@Breed", breed);
                    cmd.Parameters.AddWithValue("@Notes", notes);
                    cmd.Parameters.AddWithValue("@ImageUrl", imageUrl);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            GridViewDog.EditIndex = -1;
            this.BindGrid();
        }




        //private int GetCurrentUserId()
        //{
        //    //User is built in to MVC, it is a property given to us....
        //    string id = User.FindFirstValue(System.Security.Claims.ClaimTypes.NameIdentifier);
        //    return int.Parse(id);
        //}




        protected void OnRowCancelingEdit(object sender, EventArgs e)
        {
            GridViewDog.EditIndex = -1;
            this.BindGrid();
        }


        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int dogId = Convert.ToInt32(GridViewDog.DataKeys[e.RowIndex].Values[0]);
            using (SqlConnection constr = new SqlConnection())
            {
                using (SqlCommand cmd = new SqlCommand("dbo.Dogs_CRUD"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "DELETE");
                    cmd.Parameters.AddWithValue("@DogId", dogId);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            this.BindGrid();
        }


        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            //if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex != GridViewDog.EditIndex)
            //{
            //    (e.Row.Cells[2].Controls[2] as LinkButton).Attributes["onclick"] = "return confirm('Do you want to delete this row?');";
            //}
        }



    }
}