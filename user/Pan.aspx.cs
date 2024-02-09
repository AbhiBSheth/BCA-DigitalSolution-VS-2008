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
using System.IO;
public partial class user_Pan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ResetButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/user/Pan.aspx");
    }
    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["cs"].ToString();
        SqlConnection cn = new SqlConnection(cs);
        cn.Open();
        string file1 = FileUpload1.FileName;
        string[] f1 = file1.Split('\\');
        string fn1 = f1[(f1.Length) - 1];
        string dest1 = @"C:\Users\Shree\Documents\Visual Studio 2008\Projects\WebSite3\images\" + fn1;
        File.Copy(file1, dest1, true);
        string file2 = FileUpload2.FileName;
        string[] f2 = file2.Split('\\');
        string fn2 = f2[(f2.Length) - 1];
        string dest2 = @"C:\Users\Shree\Documents\Visual Studio 2008\Projects\WebSite3\images\" + fn2;
        File.Copy(file2, dest2, true);
        SqlCommand cmd = new SqlCommand("insert into Pan values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + dest1 + "','" + dest2 + "','');", cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        Response.Write("<script>alert('Registration Sucessfully')</script>");
        Response.Write("<script>window.location='Pan.aspx'</script>");
    }
}
