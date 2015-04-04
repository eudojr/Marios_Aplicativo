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
    public partial class construir_plato : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Datos Mycontroller = new Datos();


        }
        protected void GridDatos_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

        }


        protected void GridDatos_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {


        }

        protected void GridDatos_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }


        protected void GridDatos_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }


        protected void GridDatos_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Datos Mycontroller = new Datos();

            Mycontroller.combobox_proteina = dropdownlist_proteinas.Text;
            Mycontroller.combobox_ensalada = dropdownlist_ensaladas.Text;
            Mycontroller.combobox_acompanamiento = dropdownlist_acompanamiento.Text;
            Mycontroller.crear_plato();
        }



    }
}