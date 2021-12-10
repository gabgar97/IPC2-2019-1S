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
    public partial class usuarios : System.Web.UI.Page
    {
        MySqlConnection conexion = new MySqlConnection("server = localhost; Uid = root; password = 'gegaro.com'; database = proyecto");
        MySqlCommand comando = new MySqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            conexion.Open();
            comando.Connection = conexion;
            try
            {
                
                comando.CommandText = "select count(*) from cliente where usuario ='" + usuario.Text + "'";
                int valor = int.Parse(comando.ExecuteScalar().ToString());

                if (valor == 1)
                {
                    mensaje.Text = "Ya existe, escoja otro";
                }
                else {
                    mensaje.Text = "Puede utilizarlo";
                }

            }
            catch (Exception)
            {
                mensaje.Text = "Puede utilizarlo";
            }
            conexion.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (contra.Text == contra1.Text)
            {
                Random rnd = new Random();
                int numero = rnd.Next(1, 1000);
                try
                {
                    conexion.Open();
                    MySqlCommand g = new MySqlCommand("insert into cliente (id_cliente,nombre,usuario,contra) values (" + numero + ",'" + nc.Text + "','" + usuario.Text + "','" + contra.Text + "')", conexion);
                    g.ExecuteNonQuery();
                    mensaje.Text = "Guardado";
                    conexion.Close();
                }
                catch (Exception)
                {
                    mensaje.Text = "Error";
                }
            }
            else {
                mensaje.Text = "No son iguales las Contraseñas";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            conexion.Open();
            comando.Connection = conexion;
            try
            {

                comando.CommandText = "select count(*) from cliente where usuario ='" + TextBox1.Text + "' and contra = '"+TextBox2.Text+"'";
                int valor = int.Parse(comando.ExecuteScalar().ToString());

                if (valor == 1)
                {
                    Response.Redirect("pantalla.aspx?parametro=" + TextBox1.Text);
                }
                else
                {
                    mensaje2.Text = "No Existe";
                }

            }
            catch (Exception)
            {
                mensaje.Text = "Puede utilizarlo";
            }
            conexion.Close();

        }
    }
}