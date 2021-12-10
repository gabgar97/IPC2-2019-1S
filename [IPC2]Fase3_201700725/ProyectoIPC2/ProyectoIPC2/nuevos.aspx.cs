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
    public partial class nuevos : System.Web.UI.Page
    {

        MySqlConnection conexion = new MySqlConnection("server = localhost; Uid = root; password = 'gegaro.com'; database = proyecto");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void registro_Click(object sender, EventArgs e)
        {

            if (tipo.SelectedValue.Equals("Tecnico"))
            {
                try
                {
                    conexion.Open();
                    MySqlCommand g = new MySqlCommand("insert into tecnico (codigo,nombre,correo,telefono,usuario,contra,inscribio) values ('"+codigo.Text+"','"+nombre.Text+"'," +
                        "'"+correo.Text+"','"+telefono.Text+"','"+usuario.Text+"','"+contra.Text+"','"+1+"')", conexion);
                    g.ExecuteNonQuery();
                    conexion.Close();
                }
                catch (Exception)
                {

                }
            }
            else
            {
                try
                {
                    conexion.Open();
                    MySqlCommand g = new MySqlCommand("insert into agente (codigo,nombre,correo,telefono,usuario,contra,inscribio) values ('" + codigo.Text + "','" + nombre.Text + "'," +
                        "'" + correo.Text + "','" + telefono.Text + "','" + usuario.Text + "','" + contra.Text + "','" + 1 + "')", conexion);
                    g.ExecuteNonQuery();
                    conexion.Close();
                }
                catch (Exception)
                {

                }
            }

        }
    }
}