using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoIPC2
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (puesto.SelectedValue.Equals("Administrador"))
            {
                Response.Redirect("admin.aspx");
            }
            else if (puesto.SelectedValue.Equals("Agente")) {
                Response.Redirect("agente.aspx?parametro=" + user.Text);
            }
            else if (puesto.SelectedValue.Equals("Tecnico")) {
                Response.Redirect("tecnico.aspx?parametro="+user.Text);
            }
            else {
                Response.Write("ERROR ELIJA UNA OPCION");
            }
        }
    }
}