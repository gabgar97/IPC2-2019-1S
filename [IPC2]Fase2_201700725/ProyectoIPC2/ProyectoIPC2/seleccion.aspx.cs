using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoIPC2
{
    public partial class seleccion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string valor = "norte";
            Response.Redirect("eleccion.aspx?parametro=" + norte.SelectedValue + " &parametro2=" + valor);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string valor = "sur";
            Response.Redirect("eleccion.aspx?parametro=" + sur.SelectedValue + " &parametro2=" + valor);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string valor = "oriente";
            Response.Redirect("eleccion.aspx?parametro=" + oriente.SelectedValue + " &parametro2=" + valor);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string valor = "occidente";
            Response.Redirect("eleccion.aspx?parametro=" + occidente.SelectedValue + " &parametro2=" + valor);
        }
    }
}