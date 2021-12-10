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
    public partial class agente : System.Web.UI.Page
    {
        MySqlConnection conexion = new MySqlConnection("server = localhost; Uid = root; password = 'gegaro.com'; database = proyecto");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Params["parametro"] != null)
            {

                Label1.Text = Request.Params["parametro"];
                
            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MySqlCommand comando = new MySqlCommand("select*from inscripcion_sitio where codigo ='" + TextBox1.Text +"'", conexion);
            conexion.Open();
            MySqlDataReader registro = comando.ExecuteReader();
            if (registro.Read())
            {
                TextBox2.Text = registro["codigo"].ToString();
                TextBox3.Text = registro["ubicacion"].ToString();
                TextBox4.Text = registro["nombre"].ToString();
                TextBox5.Text = registro["descripcion"].ToString();
                TextBox6.Text = registro["foto"].ToString();
                TextBox7.Text = registro["titulo_foto"].ToString();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                conexion.Open();
                MySqlCommand g = new MySqlCommand("insert into ins_sitio (i_codigo,agente,i_sitio) values ()", conexion);
                g.ExecuteNonQuery();
                conexion.Close();
            }
            catch (Exception)
            {

            }
        }
    }
}