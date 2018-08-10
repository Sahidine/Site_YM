using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YeteMali_Store
{
    public partial class ListeCaisse : System.Web.UI.Page
    {
        Service_Store db = new Service_Store();
        protected void Page_Load(object sender, EventArgs e)
        {
            listeCaisse();
        }
        //Liste des caisses
        public void listeCaisse()
        {
            gridCaisse.DataSource = db.ListeCaisse();
            gridCaisse.DataBind();
        }
    }
}