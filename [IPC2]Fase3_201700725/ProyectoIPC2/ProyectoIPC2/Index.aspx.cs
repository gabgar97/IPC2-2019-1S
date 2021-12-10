using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace ProyectoIPC2
{
    public partial class Index : System.Web.UI.Page
    {

        MySqlConnection conexion = new MySqlConnection("server = localhost; Uid = root; password = 'gegaro.com'; database = proyecto");
        MySqlCommand comando = new MySqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (puesto.SelectedValue.Equals("Administrador") && user.Text == "admin" && contra.Text == "admin")
            {
                Response.Redirect("admin.aspx");
            }
            else if (puesto.SelectedValue.Equals("Agente")) {

                conexion.Open();
                comando.Connection = conexion;
                try
                {

                    comando.CommandText = "select count(*) from agente where usuario ='" + user.Text + "' and contra = '" + contra.Text + "'";
                    int valor = int.Parse(comando.ExecuteScalar().ToString());

                    if (valor == 1)
                    {
                        Response.Redirect("agente.aspx?parametro=" + user.Text);
                    }
                    else
                    {
                        mensaje2.Text = "No Existe";
                    }

                }
                catch (Exception)
                {

                }
                conexion.Close();

            }
            else if (puesto.SelectedValue.Equals("Tecnico")) {
                

                conexion.Open();
                comando.Connection = conexion;
                try
                {

                    comando.CommandText = "select count(*) from tecnico where usuario ='" + user.Text + "' and contra = '" + contra.Text + "'";
                    int valor = int.Parse(comando.ExecuteScalar().ToString());

                    if (valor == 1)
                    {
                        Response.Redirect("tecnico.aspx?parametro=" + user.Text);
                    }
                    else
                    {
                        mensaje2.Text = "No Existe";
                    }

                }
                catch (Exception)
                {

                }
                conexion.Close();


            }
            else {
                Response.Write("ERROR ELIJA UNA OPCION");
            }
        }
    }
}