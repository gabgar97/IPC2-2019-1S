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
    public partial class empresa : System.Web.UI.Page
    {
        MySqlConnection conexion = new MySqlConnection("server = localhost; Uid = root; password = 'gegaro.com'; database = proyecto");

        protected void Page_Load(object sender, EventArgs e)
        {
            Random rnd = new Random();
            int numero = rnd.Next(1, 1000);
            codigo.Text = numero.ToString();

            codres.Text = codigo.Text;
            codhot.Text = codigo.Text;
            codmu.Text = codigo.Text;

        }

        public void general() {

            if (foto.HasFile)
            {

                string ext = foto.FileName;
                string urlsave = @"C:\" + ext;
                foto.SaveAs(urlsave);

                try
                {
                    conexion.Open();
                    MySqlCommand g = new MySqlCommand("insert into ins_empresa (codigo,ubicacion,nombre,descripcion,telefono,correo,foto,des_foto) values ('"+codigo.Text+"','"+region.Text+"'," +
                        "'"+nombre.Text+"','"+descripcion.Text+"','"+telefono.Text+"','"+correo.Text+"','"+ext+"','"+titulo.Text+"')", conexion);
                    g.ExecuteNonQuery();
                    conexion.Close();
                }
                catch (Exception)
                {

                }

            }
            else
            {
                Response.Write("Selecciones Archivo");
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            general();
            try
            {
                conexion.Open();
                MySqlCommand g = new MySqlCommand("insert into ins_restaurante (codigo,ins,especialidad,tipica,mariscos,postres) values ('"+codres.Text+"','"+codigo.Text+"','"+especialidad.Text+"'" +
                    ",'"+tipica.SelectedItem+"','"+mariscos.SelectedItem+"','"+postres.SelectedItem+"')", conexion);
                g.ExecuteNonQuery();
                conexion.Close();
            }
            catch (Exception)
            {

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            general();
            try
            {
                conexion.Open();
                MySqlCommand g = new MySqlCommand("insert into ins_hotel (codigo,ins,habtacion,internet,cafeteria,parqueo,piscina,seguridad,gimnasio) values ('" + codhot.Text + "','" + codigo.Text + "','" + habitaciones.Text + "'" +
                    ",'" + internet.SelectedItem + "','" + cafeteria.SelectedItem + "','" + parqueo.SelectedItem + "','"+piscina.SelectedItem+"','"+seguridad.SelectedItem+"','"+gimnasio.SelectedItem+"')", conexion);
                g.ExecuteNonQuery();
                conexion.Close();
            }
            catch (Exception)
            {

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            general();
            try
            {
                conexion.Open();
                MySqlCommand g = new MySqlCommand("insert into ins_museo (codigo,ins,horario,tarifa) values ('" + codmu.Text + "','" + codigo.Text + "','"+horario.Text+"','"+tarifa.Text+"')", conexion);
                g.ExecuteNonQuery();
                conexion.Close();
            }
            catch (Exception)
            {

            }
        }

    }
}