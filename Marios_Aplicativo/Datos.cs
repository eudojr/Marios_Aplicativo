using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web.Configuration;
using System.Collections;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;


namespace Marios_Aplicativo
{   
    
    public class Datos:Page
    {
        //Variables para hacer login
        private string pUsuario;
        private string pContrasenia;
        public string pTipoUsr;
        public string pNombre_Apellido;

        //Variables para insertar platos
        public string combobox_proteina;
        public string combobox_ensalada;
        public string combobox_acompanamiento;
        public string validar;

        string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

        public string PContrasenia
        {
            get { return pContrasenia; }
            set { pContrasenia = value; }
        }

        public string PUsuario
        {
            get { return pUsuario; }
            set { pUsuario = value; }
        }

        public void Validar ()
        {
            
            
            SqlConnection con = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("PA_MARIOS_LOGIN_USUARIO", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@ID_usuario", SqlDbType.VarChar, 15).Value = pUsuario;
            cmd.Parameters.Add("@Password", SqlDbType.VarChar, 20).Value = pContrasenia;
            cmd.Parameters.Add("@VarOut", SqlDbType.Int).Direction = ParameterDirection.Output;
            cmd.Parameters.Add("@NomApe", SqlDbType.VarChar, 100).Direction = ParameterDirection.Output;


            try
            {
                con.Open();
                cmd.ExecuteScalar();

                pTipoUsr = cmd.Parameters["@VarOut"].Value.ToString();
                pNombre_Apellido = cmd.Parameters["@NomApe"].Value.ToString();
                
            }
            catch (Exception ex)
            {
               
            }
           
        }
        public DataTable cargar_combobox(int tipo)
        {

            DataTable comida_disponible = new DataTable();
            SqlConnection con = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("PA_MARIOS_QUERY_COMIDA", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@ID_clasificacion", SqlDbType.VarChar, 15).Value = tipo;
            cmd.Parameters.Add("@VarOut", SqlDbType.Int).Direction = ParameterDirection.Output;

            try
            {
                con.Open();
                cmd.ExecuteScalar();
                SqlDataAdapter adaptador = new SqlDataAdapter(cmd);
                adaptador.Fill(comida_disponible);

            }
            catch (Exception ex)
            {

            }
            return comida_disponible;
        }

        public void crear_plato()
        {
            SqlConnection con = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("PA_MARIOS_INSERT_MENU_PRINCIPAL", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@ID_principal_proteina", SqlDbType.VarChar, 2).Value = combobox_proteina;
            cmd.Parameters.Add("@ID_principal_ensalada", SqlDbType.VarChar, 2).Value = combobox_ensalada;
            cmd.Parameters.Add("@ID_principal_acompanamiento", SqlDbType.VarChar, 2).Value = combobox_acompanamiento;
            cmd.Parameters.Add("@VarOut", SqlDbType.Int).Direction = ParameterDirection.Output;

            try
            {
                con.Open();
                cmd.ExecuteScalar();
                validar = cmd.Parameters["@VarOut"].Value.ToString();
            }
            catch (Exception ex)
            {
            }
        }   

        public DataTable GetAlimentos(Int32 tipo)
        {
            DataTable resultado = new DataTable();
            SqlConnection con = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("PA_MARIOS_QUERY_COMIDA", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@ID_clasificacion", SqlDbType.Int, 1).Value = tipo;
            cmd.Parameters.Add("@VarOut", SqlDbType.Int).Direction = ParameterDirection.Output;

            try
            {
                con.Open();
                cmd.ExecuteScalar();

                SqlDataAdapter adapt = new SqlDataAdapter(cmd);
                adapt.Fill(resultado);

            }
            catch (Exception ex)
            {
            }

            return resultado;
        }


        public DataSet GetTipoAlimentos()
        {
            DataSet resultado = new DataSet();
            SqlConnection con = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("PA_MARIOS_QUERY_TIPO_COMIDA", con);
            cmd.CommandType = CommandType.StoredProcedure;
          
            try
            {
                con.Open();
                cmd.ExecuteScalar();

                SqlDataAdapter adapt = new SqlDataAdapter(cmd);
                adapt.Fill(resultado);
                con.Close();
            }
            catch (Exception ex)
            {
            }
            return resultado;
           
        }

      

        public void Delete(Int32 ID_principal)
        {
            // Write your own Delete statement blocks. 
            DataTable resultado = new DataTable();
            SqlConnection con = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("PA_MARIOS_DELETE_COMIDA", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@ID_principal", SqlDbType.Int, 1).Value = ID_principal;
            cmd.Parameters.Add("@VarOut", SqlDbType.Int).Direction = ParameterDirection.Output;

            try
            {
                con.Open();
                cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
            }
        }

        public void Agregar(string Descripcion, decimal Precio, int ID_Clasificacion, int Disponibilidad, int Activar)
        {
            // Write your own Delete statement blocks. 
            DataTable resultado = new DataTable();
            SqlConnection con = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("PA_MARIOS_INSERT_COMIDA", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@Descripcion", SqlDbType.VarChar, 1).Value = Descripcion;
            cmd.Parameters.Add("@Precio", SqlDbType.Decimal, 1).Value = Precio;
            cmd.Parameters.Add("@ID_Clasificacion", SqlDbType.Int, 1).Value = ID_Clasificacion;
            cmd.Parameters.Add("@Disponibilidad", SqlDbType.Int, 1).Value = Disponibilidad;
            cmd.Parameters.Add("@Activar", SqlDbType.Int, 1).Value = Activar;
            cmd.Parameters.Add("@VarOut", SqlDbType.Int).Direction = ParameterDirection.Output;

            try
            {
                con.Open();
                cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
            }
        }

    }
}