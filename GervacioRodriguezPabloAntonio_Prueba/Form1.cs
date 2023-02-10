using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GervacioRodriguezPabloAntonio_Prueba
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            datadeclientes();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                Conn.conectar.obtenerconexion();
                MessageBox.Show("conectado");
                Conn.conectar.obtenerconexion().Close();

            }
            catch
            {
                MessageBox.Show("revise su conexion");
                Conn.conectar.obtenerconexion().Close();
            }
        }


        public void datadeclientes()
        {
            string vista = @"
select 
 cl.ClienteId
,cl.Nombre
,cl.Telefono
,cl.Correo
,cl.edad
,cl.MontoSolicitud
,cl.Estatus
,cl.Aprobación
,cl.FechaAlta
,pa.MontoPagado
,pa.FechaPago

from Clientes cl
inner join Pagos pa
on cl.ClienteId = pa.ClienteId;
";
            SqlCommand data = new SqlCommand(vista, Conn.conectar.obtenerconexion());
            SqlDataAdapter adaptador = new SqlDataAdapter();
            adaptador.SelectCommand = data;
            DataTable tabla = new DataTable();
            adaptador.Fill(tabla);
            clientesdg.DataSource = tabla;
            Conn.conectar.obtenerconexion().Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            try
            {
                string actualizar = @"
                                update Ajuste set MontoTotal = pagos.MontoPagado 
                                from pagos join Ajuste
                                on Pagos.ClienteId = Ajuste.ClienteId";
                SqlCommand actualizarajuste = new SqlCommand(actualizar, Conn.conectar.obtenerconexion());
                actualizarajuste.ExecuteNonQuery();
                Conn.conectar.obtenerconexion().Close();
                MessageBox.Show("Fue exitoso");

                string nuevabusqueda = @"select 
	                    Distinct
	                       cl.ClienteId, cl.Nombre,
	                       cl.Edad,cl.MontoSolicitud,
	                       pa.MontoPagado,
	                       aj.MontoTotal
	                       from 
                    Clientes cl
                    join Ajuste aj
                    on cl.ClienteId = aj.ClienteId
                    join pagos pa
                    on cl.ClienteId = pa.ClienteId
                    ";
                SqlCommand data = new SqlCommand(nuevabusqueda, Conn.conectar.obtenerconexion());
                SqlDataAdapter adaptador = new SqlDataAdapter();
                adaptador.SelectCommand = data;
                DataTable tabla = new DataTable();
                adaptador.Fill(tabla);
                clientesdg.DataSource = tabla;
                Conn.conectar.obtenerconexion().Close();
            }
            catch
            {
                MessageBox.Show("fue un erro");
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            try
            {
                string adeudo = @"update Ajuste set Adeudo =(cl.MontoSolicitud + pa.MontoPagado) from Clientes cl
                                  join pagos pa
                                  on cl.ClienteId = pa.ClienteId";
                SqlCommand ejecutar = new SqlCommand(adeudo, Conn.conectar.obtenerconexion());
                ejecutar.ExecuteNonQuery();
                Conn.conectar.obtenerconexion().Close();    
                
                MessageBox.Show("se ha actualizado la columna adeudo");
                Conn.conectar.obtenerconexion().Close();
                string cadena = @"select 
                                 cl.ClienteId
                                 ,cl.Nombre
                                 ,cl.MontoSolicitud
                                 ,pa.MontoPagado
                                 ,aj.MontoTotal
                                 ,aj.Adeudo
                                from Clientes cl
                                join Pagos pa
                                on cl.ClienteId = pa.ClienteId 
                                right join Ajuste aj 
                                on cl.ClienteId = aj.ClienteId 
                                ";
                SqlCommand data = new SqlCommand(cadena, Conn.conectar.obtenerconexion());
                SqlDataAdapter adaptador = new SqlDataAdapter();
                adaptador.SelectCommand = data;
                DataTable tabla = new DataTable();
                adaptador.Fill(tabla);
                clientesdg.DataSource = tabla;
                Conn.conectar.obtenerconexion().Close();

            }
            catch
            {

                MessageBox.Show("error");
                Conn.conectar.obtenerconexion().Close();
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            try
            {
                string limpia = @"update Clientes set Nombre =REPLACE(RTRIM(LTRIM(Nombre)),'  ',' ');";
                SqlCommand espacios = new SqlCommand(limpia, Conn.conectar.obtenerconexion());
                Conn.conectar.obtenerconexion().Close(); 
                    string ver = @"select Nombre from Clientes ";
                MessageBox.Show("se han quitado espacios");
                SqlCommand data = new SqlCommand(ver, Conn.conectar.obtenerconexion());
                SqlDataAdapter adaptador = new SqlDataAdapter();
                adaptador.SelectCommand = data;
                DataTable tabla = new DataTable();
                adaptador.Fill(tabla);
                clientesdg.DataSource = tabla;
                Conn.conectar.obtenerconexion().Close();
            }
            catch
            {
                MessageBox.Show("error");
                Conn.conectar.obtenerconexion().Close();
            }
        }
    }
}
