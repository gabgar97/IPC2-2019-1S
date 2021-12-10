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
    public partial class eleccion : System.Web.UI.Page
    {
        MySqlConnection conexion = new MySqlConnection("server = localhost; Uid = root; password = 'gegaro.com'; database = proyecto");

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.Params["parametro"]!=null && Request.Params["parametro2"]!=null) {

                region.Text = Request.Params["parametro2"];
                opcion.Text = Request.Params["parametro"];

            }

            if (opcion.Text == "empresa")
            {
                MySqlCommand comando = new MySqlCommand("select*from ins_empresa where ubicacion = '" + region.Text +"'", conexion);
                conexion.Open();
                MySqlDataReader registro = comando.ExecuteReader();
                if (registro.Read())
                {
                    codigo.Text = registro["codigo"].ToString();
                    region1.Text = registro["ubicacion"].ToString();
                    nombre.Text = registro["nombre"].ToString();
                    descripcion.Text = registro["descripcion"].ToString();
                    telefono.Text = registro["telefono"].ToString();
                    correo.Text = registro["correo"].ToString();
                    foto.Text = registro["foto"].ToString();
                    titulo.Text = registro["des_foto"].ToString();
                }
            }
            else
            {
                MySqlCommand comando = new MySqlCommand("select*from inscripcion_sitio where ubicacion = '" + region.Text+ "'", conexion);
                conexion.Open();
                MySqlDataReader registro = comando.ExecuteReader();
                if (registro.Read())
                {
                    codigo.Text = registro["codigo"].ToString();
                    region1.Text = registro["ubicacion"].ToString();
                    nombre.Text = registro["nombre"].ToString();
                    descripcion.Text = registro["descripcion"].ToString();
                    foto.Text = registro["foto"].ToString();
                    titulo.Text = registro["titulo_foto"].ToString();
                }
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("seleccion.aspx");
        }
    }
}