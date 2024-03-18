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
    public partial class editUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (Session["userToUpdate"] == null)
            {
                Session["userToUpdate"] = 2;
            }

            if (!IsPostBack) // משיכת פרטי המשתמש מבסיס הנתונים
            {
                // התחברות למסד הנתונים
                string connectionString = Helper.conString;
                SqlConnection con = new SqlConnection(connectionString);

                // בניית פקודת SQL
                string SQLStr = $"SELECT * FROM users Where id={(int)Session["userToUpdate"]}";
                SqlCommand cmd = new SqlCommand(SQLStr, con);

                // יצירת DataSet
                DataSet ds = new DataSet();

                // טעינת הנתונים
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(ds, "users");
                DataRow dr = ds.Tables["users"].Rows[0];

                //  מילוי השדות בטופס
                userName.Value = dr["userName"].ToString();
                fName.Value = dr["fName"].ToString();
                lName.Value = dr["lName"].ToString();
                email.Value = dr["email"].ToString();
                date.Value = ((DateTime)(dr["date"])).ToString("yyyy-MM-dd");
                gender.Value = dr["gender"].ToString();
                football.Value = dr["football"].ToString();
                music.Value = dr["music"].ToString();
                basketball.Value = dr["basketball"].ToString();
                swim.Value = dr["swim"].ToString();
                city.Value = dr["city"].ToString();
                phone.Value = dr["phone"].ToString();
                pw.Value = dr["pw"].ToString();

            }

        }

        public void UpdateUser(object sender, EventArgs e)
        {
            // התחברות למסד הנתונים
            string connectionString = Helper.conString;
            SqlConnection con = new SqlConnection(connectionString);

            // בניית פקודת SQL
            string SQLStr = $"SELECT * FROM users Where id={(int)Session["userToUpdate"]}";
            SqlCommand cmd = new SqlCommand(SQLStr, con);

            //  טעינת הנתונים לתוך DataSet
            DataSet ds = new DataSet();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(ds, "users");

            // בניית השורה להוספה
            DataRow dr = ds.Tables["users"].Rows[0];

            dr["userName"] = userName.Value;
            dr["fName"] = fName.Value;
            dr["lName"] = lName.Value;
            dr["email"] = email.Value;
            dr["date"] = DateTime.Parse(date.Value);
            dr["gender"] = gender.Value;
            dr["football"] = football.Value;
            dr["music"] = music.Value;
            dr["basketball"] = basketball.Value;
            dr["swim"] = swim.Value;
            dr["city"] = city.Value;
            dr["phone"] = phone.Value;
            dr["pw"] = pw.Value;

            // עדכון הדאטה סט בבסיס הנתונים
            SqlCommandBuilder builder = new SqlCommandBuilder(adapter);
            adapter.UpdateCommand = builder.GetUpdateCommand();
            adapter.Update(ds, "users");

            Response.Redirect("/Pages/usersTable.aspx");
        }
    }
}