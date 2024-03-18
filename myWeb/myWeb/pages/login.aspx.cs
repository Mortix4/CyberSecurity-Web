using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace myWeb.pages
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (IsPostBack)
            {
                string SQLStr = $"SELECT * FROM users " +
                    $"WHERE userName='{Request.Form["userName"]}' AND pw = '{Request.Form["pw"]}'";

                DataSet ds = RetrieveUsersTable(SQLStr);
                if (ds.Tables["users"].Rows.Count > 0)
                {
                    Session["userName"] = Request.Form["userName"];
                    Session["Login"] = true;
                    Session["Admin"] = ds.Tables[0].Rows[0]["Admin"];
                    //message.InnerHtml = "";
                    //מונה מבקרים
                    Application.Lock();
                    Application["SessionsNum"] = (int)Application["SessionsNum"] + 1;
                    Application.UnLock();
                    //מונה דרך SESSION
                    if (Session["counterS"] == null)
                        Session["counterS"] = 0;
                    else
                    {
                        Session["counterS"] = (int)Session["counterS"] + 1;
                    }
                    Response.Redirect("/Pages/first.aspx");
                }
                else
                {
                    Session["userName"] = "Guest";
                    Session["Login"] = false;
                    Session["Admin"] = false;
                    //message.InnerHtml = "Username or password are incorrect";
                }
            }
        }

        public DataSet RetrieveUsersTable(string SQLStr)
        {
            DataSet ds = new DataSet();
            // התחברות למסד הנתונים
            string connectionString = Helper.conString;
            SqlConnection con = new SqlConnection(connectionString);

            // בניית פקודת SQL
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = SQLStr;
            cmd.Connection = con;

            // טעינת הנתונים
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds, "users");
            con.Close();

            return ds;
        }

    }
}