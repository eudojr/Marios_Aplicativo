using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Marios_Aplicativo
{
    public partial class index_administrador : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            Datos Mycontroller = new Datos();
            label_nombre_apellido.Text = (string)(Session["nombreusuario"]);

        }


    }
}