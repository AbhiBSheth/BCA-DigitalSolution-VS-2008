using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class admin_admin : System.Web.UI.MasterPage
{
    string unm;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["adminauth"] == null)
            {
                Response.Redirect("~/login.aspx");
            }
            unm = Page.User.Identity.Name;
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session["adminauth"] = null;
        System.Web.Security.FormsAuthentication.SignOut();
        Response.Redirect("~/login.aspx");
    }
}
