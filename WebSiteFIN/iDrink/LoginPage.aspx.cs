using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class iDrink_LoginPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {

        }
    }
    protected void _loginButton_Click(object sender, EventArgs e)
    {
        if (_userNameTextBox.Text != "")
        {
            //連接可愛的資料庫
            string strConn = "server=25.77.160.98\\MSSQLSERVER,1433;database=iDrink;User ID=FAR;Password=Pa$$w0rd;Trusted_Connection=True;Integrated Security=false";
            //建立連接
            SqlConnection conn = new SqlConnection(strConn);
            //打開連接
            conn.Open();

            string checkPwd = @"SELECT UserPassword FROM MEMBER WHERE UserName = '" + _userNameTextBox.Text + "'";
            SqlCommand comPwd = new SqlCommand(checkPwd, conn);
            string pwd = comPwd.ExecuteScalar().ToString().Replace(" ", "");
            if (pwd == _userPwdTextBox.Text)
            {
                Session["UserName"] = _userNameTextBox.Text;
                Response.Redirect("OrderPage.aspx");
            }
            else
            {
                Response.Write("False");
                _errorLabel.Text = "Wrong Password. Try Again Please!!!";
            }
            conn.Close();
        }
    }
}