using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoIPC2
{
    public partial class ins_sitio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Random rnd = new Random();
            int numero = rnd.Next(1, 1000);
            codigo.Text = numero.ToString();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}