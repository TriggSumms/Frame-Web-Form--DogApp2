using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DogWalk_WebForm
{
    public partial class Walkers : System.Web.UI.Page
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
                using (SqlCommand cmd = new SqlCommand("dbo.Walkers_Select"))
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
                            GridViewWalker.DataSource = dt;
                            GridViewWalker.DataBind();
                        }
                    }
                }
            }
        }



        //private int GetCurrentUserId()
        //{
        //    //User is built in to MVC, it is a property given to us....
        //    string id = User.FindFirstValue(System.Security.Claims.ClaimTypes.NameIdentifier);
        //    return int.Parse(id);
        //}



        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            //if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex != GridViewDog.EditIndex)
            //{
            //    (e.Row.Cells[2].Controls[2] as LinkButton).Attributes["onclick"] = "return confirm('Do you want to delete this row?');";
            //}
        }



    
}
}