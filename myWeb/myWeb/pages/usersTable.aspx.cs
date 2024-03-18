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
    public partial class usersTable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(bool)Session["Admin"])
            {
                Response.Redirect("/Pages/first.aspx");
            }

            //אם מדובר במנהל אז בנה טבלת משתמשים להצגה באתר
            if (!IsPostBack)
            {
                string SQLStr = "SELECT * FROM users";
                DataSet ds = RetrieveUsersTable(SQLStr);
                DataTable dt = ds.Tables["users"];
                string table = BuildUsersTable(dt);
                tableDiv.InnerHtml = table;

            }
        }
        //טעינת נתונים ל DataSet
        public DataSet RetrieveUsersTable(string SQLStr)
        {
            // connect to DataBase
            //string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\gilad\source\repos\DBWeb\DBWeb\App_Data\Database.mdf;Integrated Security=True";
            string connectionString = Helper.conString;
            SqlConnection con = new SqlConnection(connectionString);

            // Build SQL Query
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = SQLStr;
            cmd.Connection = con;

            // Build DataAdapter
            SqlDataAdapter ad = new SqlDataAdapter(cmd);

            // Build DataSet to store the data
            DataSet ds = new DataSet();

            //טעינת נתונים ממסד נתונים ל DataSet
            ad.Fill(ds, "users");
            return ds;
        }

        public string CreateRadioBtn(string id)
        {
            return $"<input type='checkbox' name='chk{id}' id='chk{id}' runat='server' />";
        }
        //  בניית הטבלה ב HTML
        public string BuildUsersTable(DataTable dt)
        {
            //string str = "<table class='usersTable' align='center'>";
            string str = "<table  style=\"border:2px solid black; width:100 %; height:100%; background-color:wheat; text-align:center\" >";
            str += "<tr>";
            str += "<td> </td>";

            // הלולאה הראשונה – בונה את הכותרת.
            foreach (DataColumn column in dt.Columns)
            {
                str += "<td>" + column.ColumnName + "</td>";
            }
            // הלולאה השניה בונה את תוכן הטבלה.
            foreach (DataRow row in dt.Rows)
            {
                str += "<tr>";
                str += "<td>" + CreateRadioBtn(row["Id"].ToString()) + "</td>";
                foreach (DataColumn column in dt.Columns)
                {
                    str += "<td>" + row[column] + "</td>";
                }
                str += "</tr>";
            }
            str += "</tr>";
            str += "</Table>";
            return str;
        }
        //פונקציית עזר לאפשרות חיפוש
        public string BuildSQLStr(string str)
        {   //פה מוסיפים סינון לפי שדות נוספים למשל עיר מגורים וכו
            if (str.Length == 0)
            {
                return "SELECT * FROM users";
            }
            string SQLStr = $"SELECT * FROM users " +
                $"WHERE fName LIKE '%{str}%' OR lName LIKE '%{str}%' OR userName LIKE '%{str}%'";
            return SQLStr;
        }
        //חיפוש נתונים לפי שם משתמש, שם משפחה או שם פרטי
        public void Click_Filter(object sender, EventArgs e)
        {
            string SQLStr = BuildSQLStr(Request.Form["filter"]);
            DataSet ds = RetrieveUsersTable(SQLStr);
            string table = BuildUsersTable(ds.Tables[0]);
            tableDiv.InnerHtml = table;
        }

        //פונקציית עזר לאפשרות מיון
        public string BuildSQLStr2(string column, string order)
        {
            string SQLStr = "";
            if (column == "firstName")
            {
                SQLStr = $"SELECT * FROM " + Helper.tblName +
                   $" ORDER BY {"fName"} {order}";
            }
            else
                 if (column == "lastName")
            {
                SQLStr = $"SELECT * FROM " + Helper.tblName +
                   $" ORDER BY {"lName"} {order}";
            }
            else
             if (column == "userName")
            {
                SQLStr = $"SELECT * FROM " + Helper.tblName +
                   $" ORDER BY {"uName"} {order}";
            }
            else
            {
                SQLStr = $"SELECT * FROM " + Helper.tblName +
                   $" ORDER BY {column} {order}";
            }
            return SQLStr;
        }

        //מיון נתוני טבלת משתמשים לפי אחד מ4 שדות: שם משתמש,שם פרטי,שם משפחה ועיר
        public void Click_Sort(object sender, EventArgs e)
        {
            string SQLStr = BuildSQLStr2(Columns.Value, Request.Form["order"]);
            DataSet ds = Helper.RetrieveTable(SQLStr);
            string table = Helper.BuildSimpleUsersTable(ds.Tables[0]);
            tableDiv.InnerHtml = table;
        }


        public string BuildSQLStr3(string str)
        {
            if (str.Length == 0)
            {
                return "SELECT * FROM users";
            }
            string SQLStr = $"SELECT * FROM users WHERE" +
                $" fName LIKE '%{str}%' OR" +
                $" lname LIKE '%{str}%' ";
            return SQLStr;
        }


        //מחק משתמש
        public void Delete(object sender, EventArgs e)
        {
            // בניית מערך של משתמשים למחיקה
            List<int> usersList = new List<int>();

            for (int i = 1; i < Request.Form.Count; i++)
            {
                if (Request.Form.AllKeys[i].Contains("chk"))
                {
                    int userId = int.Parse(Request.Form.AllKeys[i].Remove(0, 3));
                    usersList.Add(userId);
                }
            }
            int[] userIdToDelete = usersList.ToArray();

            Helper.Delete(userIdToDelete);

            // הדפסת הטבלה המעודכנת
            DataSet ds = Helper.RetrieveTable(BuildSQLStr3(""));
            string table = Helper.BuildUsersTable(ds.Tables[Helper.tblName]);
            tableDiv.InnerHtml = table;
        }
        // ערוך משתמש קיים
        public void Edit(object sender, EventArgs e)
        {
            for (int i = 1; i < Request.Form.Count; i++)
            {
                if (Request.Form.AllKeys[i].Contains("chk"))
                {
                    Session["userToUpdate"] = int.Parse(Request.Form.AllKeys[i].Remove(0, 3));
                    Response.Redirect("/Pages/EditUser.aspx");
                }

            }
            message.InnerHtml = "No user was Selected";
        }
        //הוסף משתמש חדש
        public void Add(object sender, EventArgs e)
        {
            Response.Redirect("/pages/register.aspx");
        }

    }
}