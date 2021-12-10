using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoIPC2
{
    public partial class eleccion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.Params["parametro"]!=null && Request.Params["parametro2"]!=null) {

                region.Text = Request.Params["parametro2"];
                opcion.Text = Request.Params["parametro"];

            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("seleccion.aspx");
        }
    }
}