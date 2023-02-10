using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GervacioRodriguezPabloAntonio_Prueba.Conn
{
    class conectar
    {
        public static SqlConnection obtenerconexion()
        {
            SqlConnection conectar = new SqlConnection("server=DESKTOP-DVRD5GT\\SQLEXPRESS01;database=HIRCASA; integrated security=true");
            conectar.Open();
            return (conectar);
        }


    }
}
