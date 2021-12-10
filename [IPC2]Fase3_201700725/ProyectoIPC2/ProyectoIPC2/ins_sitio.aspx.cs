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
    public partial class ins_sitio : System.Web.UI.Page
    {
        MySqlConnection conexion = new MySqlConnection("server = localhost; Uid = root; password = 'gegaro.com'; database = proyecto");

        protected void Page_Load(object sender, EventArgs e)
        {

            Random rnd = new Random();
            int numero = rnd.Next(1, 1000);
            codigo.Text = numero.ToString();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (foto.HasFile)
            {
                string ext = foto.FileName;
            string urlsave = @"C:\sitios\" + ext;
            foto.SaveAs(urlsave);
            try
            {

                conexion.Open();
                    MySqlCommand g = new MySqlCommand("insert into inscripcion_sitio (codigo,ubicacion,nombre,descripcion,foto,titulo_foto) values ('" + codigo.Text + "','" + region.Text + "','" + nombre.Text + "','"+descripcion.Text+"'," +
                        "'"+ext+"','"+titulo.Text+"')", conexion);
                    g.ExecuteNonQuery();
                    conexion.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error" + ex);
            }
        }
            else
            {
                Response.Write("Selecciones Archivo");
            } 
}
    }
}