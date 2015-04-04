using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;


namespace Marios_Aplicativo
{
    public partial class Login : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void login_click(object sender, EventArgs e)
        {
 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Datos Mycontroller = new Datos();

            Mycontroller.PUsuario = txt_id_usuario.Text;
            Mycontroller.PContrasenia = txt_contrasena_usuario.Text;
            Mycontroller.Validar();

            Session["nombreusuario"] = Mycontroller.pNombre_Apellido;

            switch (Mycontroller.pTipoUsr)
            {
                case "0":
                    //Acceso restringido
      
                    
                    break; 

                case "1":
                    //Administrador
                    Response.Redirect("index_administrador.aspx");


                    break;                
                
                case "2":
                    //Usuario


                    break;

                default:
                    
                    break;

            }
           

        }
    }
}