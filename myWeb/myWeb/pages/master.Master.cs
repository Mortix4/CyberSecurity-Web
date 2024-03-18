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
    public partial class master : System.Web.UI.MasterPage
    {


        public const string DB = "myDB.mdf";
        public string adminPageContent = "";
        public string name = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if ((bool)Session["Login"] == false)
            {
                bar1.Style.Add("display", "none");
                bar2.Style.Add("display", "none");
                bar3.Style.Add("display", "none");
                bar4.Style.Add("display", "none");
                bar5.Style.Add("display", "none");
            }
            else
            {
                bar1.Style.Add("display", "block");
                bar2.Style.Add("display", "block");
                bar3.Style.Add("display", "block");
                bar4.Style.Add("display", "block");
                bar5.Style.Add("display", "block");
            }
        }
        public void btn_logot(object sender, EventArgs e)
        {
            Session["Login"] = false;
            Session["userName"] = "Guest";
        }
    }
}