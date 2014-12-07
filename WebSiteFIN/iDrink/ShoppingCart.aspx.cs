using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class iDrink_ShoppingCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            Label1.Text = Session["GoodName"].ToString();
            string t = Session["total"].ToString();
            int it = Convert.ToInt32(t);
            //連接可愛的資料庫
            string strConn = "server=25.77.160.98\\MSSQLSERVER,1433;database=iDrink;User ID=FAR;Password=Pa$$w0rd;Trusted_Connection=True;Integrated Security=false";
            //建立連接
            SqlConnection conn = new SqlConnection(strConn);
            //打開連接
            conn.Open();

            string total = @"SELECT GOODPrice FROM GOODS WHERE GoodName = '" + Label1.Text + "'";
            SqlCommand Total = new SqlCommand(total, conn);
            string totals = Total.ExecuteScalar().ToString();
            int its = Convert.ToInt32(totals);
            _totalLabel.Text = (its * it).ToString();
            conn.Close();
        }
    }
}