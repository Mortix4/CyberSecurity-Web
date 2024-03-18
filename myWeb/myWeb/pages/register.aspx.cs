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
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                // בדיקה אם קיים שם משתמש
                string SQL = $"SELECT COUNT (admin) FROM users " +
                    $"WHERE userName='{Request.Form["userName"]}'";

                int count = (int)GetScalar(SQL);
                if (count > 0)
                {
                    userNameAlert.InnerHtml = "שם משתמש קיים נא בחר שם משתמש אחר";
                }
                else
                {
                    // התחברות למסד הנתונים
                    string connectionString = Helper.conString;
                    SqlConnection con = new SqlConnection(connectionString);

                    // בניית פקודת SQL
                    string SQLStr = $"SELECT * FROM users WHERE 0=1";
                    SqlCommand cmd = new SqlCommand(SQLStr, con);

                    // בניית DataSet
                    DataSet ds = new DataSet();

                    // טעינת הנתונים
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    adapter.Fill(ds, "users");

                    // בניית השורה להוספה
                    DataRow dr = ds.Tables["users"].NewRow();
                    dr["userName"] = Request.Form["userName"];
                    dr["fName"] = Request.Form["fName"];
                    dr["lName"] = Request.Form["lName"];
                    dr["email"] = Request.Form["email"];
                    dr["date"] = Request.Form["date"];
                    dr["gender"] = Request.Form["gender"];
                    dr["football"] = Request.Form["football"];
                    dr["music"] = Request.Form["music"];
                    dr["basketball"] = Request.Form["basketball"];
                    dr["swim"] = Request.Form["swim"];
                    dr["city"] = Request.Form["city"];
                   
                    dr["phone"] = Request.Form["phone"];
                    dr["pw"] = Request.Form["pw"];
                    ds.Tables["users"].Rows.Add(dr);

                    // עדכון הדאטה סט בבסיס הנתונים
                    SqlCommandBuilder builder = new SqlCommandBuilder(adapter);
                    adapter.UpdateCommand = builder.GetInsertCommand();
                    adapter.Update(ds, "users");

                    Response.Redirect("/Pages/first.aspx");
                }
            }
        }
        public object GetScalar(string SQL)
        {
            // התחברות למסד הנתונים
            string connectionString = Helper.conString;
            SqlConnection con = new SqlConnection(connectionString);

            // בניית פקודת SQL
            SqlCommand cmd = new SqlCommand(SQL, con);

            // ביצוע השאילתא
            con.Open();
            object scalar = cmd.ExecuteScalar();
            con.Close();

            return scalar;
        }
    }
}