using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace ProyectoIPC2
{
    public partial class pantalla : System.Web.UI.Page
    {
        MySqlConnection conexion = new MySqlConnection("server = localhost; Uid = root; password = 'gegaro.com'; database = proyecto");
        public string codigo;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Params["parametro"] != null)
            {

                Label1.Text = Request.Params["parametro"];

            }

            Random rnd = new Random();
            int numero = rnd.Next(1, 1000);


            codigo = numero.ToString();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (puesto.SelectedValue.Equals("empresa")) {
                try
                {
                    MySqlDataAdapter select = new MySqlDataAdapter("select*from ins_empresa where ubicacion = '" + ubi.SelectedValue + "'", conexion);
                    conexion.Open();
                    DataTable datos = new DataTable();
                    select.Fill(datos);
                    tabla.DataSource = datos;
                    tabla.DataBind();
                    conexion.Close();
                }
                catch (Exception ex)
                {
                    Response.Write("Error" + ex);
                }
            }
            else if (puesto.SelectedValue.Equals("sitio"))
            {
                try
                {
                    MySqlDataAdapter select = new MySqlDataAdapter("select*from inscripcion_sitio where ubicacion = '" + ubi.SelectedValue + "'", conexion);
                    conexion.Open();
                    DataTable datos = new DataTable();
                    select.Fill(datos);
                    tabla.DataSource = datos;
                    tabla.DataBind();
                    conexion.Close();
                }
                catch (Exception ex)
                {
                    Response.Write("Error" + ex);
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                conexion.Open();
                MySqlCommand g = new MySqlCommand("insert into comentarios (id,usuario,tipo,nombre,comentario) values ('"+codigo+"','"+Label1.Text+"'," +
                    "'"+eleccion.SelectedValue+"','"+nombre.Text+"','"+comentario.Text+"')", conexion);
                g.ExecuteNonQuery();
                conexion.Close();
            }
            catch (Exception)
            {

            }
        }
    }
}