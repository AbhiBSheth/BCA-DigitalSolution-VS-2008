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

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        string con = ConfigurationManager.ConnectionStrings["cs"].ToString();
        SqlConnection cn = new SqlConnection(con);
        SqlCommand cmd;
        cn.Open();
        try
        {
            cmd = new SqlCommand("select count(unm) from Login where unm='"+Login1.UserName+"' and pswd='"+Login1.Password+"'", cn);
            int count = 0;
            Int32.TryParse(cmd.ExecuteScalar().ToString(), out count);
            if (count.Equals(1))
            {
                cmd = new SqlCommand("select type from Login where unm='" + Login1.UserName + "' and pswd='" + Login1.Password + "'", cn);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    if (dr[0].ToString() == "user")
                    {
                        Session["userauth"] = Login1.UserName;
                        e.Authenticated = true;
                        FormsAuthentication.RedirectFromLoginPage(Login1.UserName, Login1.RememberMeSet);
                        Response.Redirect("~/user/Default.aspx");
                    }
                    else if (dr[0].ToString() == "admin")
                    {
                        Session["adminauth"] = Login1.UserName;
                        e.Authenticated = true;
                        FormsAuthentication.RedirectFromLoginPage(Login1.UserName, Login1.RememberMeSet);
                        Response.Redirect("~/admin/Default.aspx");
                    }
                    else
                    {
                        e.Authenticated = false;
                    }
                }
                else
                {
                    e.Authenticated = false;
                }
            }
            else
            {
                Response.Write("<script>alert('username or password not match');</script>");
            }
        }
        catch (Exception ee)
        {
            Response.Write("Error :" + ee.ToString());
        }
        finally
        {
            cn.Close();
        }
    }
    protected void Reset_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }
}
