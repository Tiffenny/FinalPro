using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class iDrink_OrderPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        _memberLabel.Text = Session["UserName"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["GoodName"] = RadioButtonList1.SelectedItem.Text;
        Session["total"] = _quantityTextBox.Text;
        Response.Redirect("ShoppingCart.aspx");
    }
}