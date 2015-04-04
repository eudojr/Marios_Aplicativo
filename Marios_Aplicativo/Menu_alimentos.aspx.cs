using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Marios_Aplicativo
{
    
    public partial class Menu_alimentos : System.Web.UI.Page
    {
        Datos row = new Datos();

        protected void Page_Load(object sender, EventArgs e)
        {
            //cargar_datos();
        }
        public void cargar_datos()
        {
          //DataSet ds = new Datos().GetTipoAlimentos();
          //drop_tipo.DataTextField = ds.Tables[0].Columns["Descripcion"].ToString();
          //drop_tipo.DataValueField = ds.Tables[0].Columns["ID_clasificacion"].ToString();
          //drop_tipo.DataSource = ds.Tables[0];
          //drop_tipo.DataBind();


        }
        public void disable_first()
        {
            if (ViewState["List1_Value"] != null)
            {
                drop_tipo.SelectedValue = ViewState["List1_Value"].ToString();
                
                    
            }
            else
            {
                ListItem selectedListItem = drop_tipo.Items.FindByValue("0");
                //selectedListItem.Attributes.Add("disabled", "disabled");
            }

        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            ViewState["List1_Value"] = drop_tipo.SelectedValue.ToString();
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}