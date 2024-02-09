using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class admin_Loginreg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Reset_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        bool userExist = this.UserExist();
        if (userExist == false)
        {
            string cs = ConfigurationManager.ConnectionStrings["cs"].ToString();
            SqlConnection cn = new SqlConnection(cs);
            cn.Open();
            SqlCommand cmd = new SqlCommand("insert into Login values('" + UserName.Text + "','" + Password.Text + "','" + Mobile.Text + "','" + DropDownList1.Text + "');", cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            UserName.Text = "";
            Password.Text = "";
            Mobile.Text = "";
            DropDownList1.Text = "";
            Response.Write("<script>alert('Thank You For Registration')</script>");
            Response.Write("<script>window.location='../login.aspx'</script>");
        }
        else
        {
            Response.Write("<script>alert('Duplicate user not allowed')</script>");
        }
    }
    private bool UserExist()
    {
        string cs = ConfigurationManager.ConnectionStrings["cs"].ToString();
        SqlConnection cn = new SqlConnection(cs);
        SqlCommand cmd = new SqlCommand("Select * From Login Where unm = @unm", cn);
        cmd.Parameters.AddWithValue("@unm", UserName.Text.Trim());
        cmd.CommandType = CommandType.Text;
        cmd.Connection = cn;
        cn.Open();
        SqlDataReader rdr;
        rdr = cmd.ExecuteReader();
        if (rdr.HasRows)
        {
            return true;
        }
        else
        {
            return false;
        }
        cn.Close();
    }
}
