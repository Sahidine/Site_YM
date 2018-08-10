using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YeteMali_Store
{
    public partial class Service : System.Web.UI.Page
    {
        Service_Store db = new Service_Store();
        protected void Page_Load(object sender, EventArgs e)
        {
            listeService();
        }
        public void listeService()
        {
            gridService.DataSource = db.ListeService();
            gridService.DataBind();
        }

        protected void BtnAjouter_Click(object sender, EventArgs e)
        {
            try
            {
                if (db.AjoutService(txtNomService.Text, txtdescription.Text) > 0)
                {
                    message.Text = "Ajout effectué avec succès";
                    txtNomService.Text = "";
                    txtdescription.Text = "";
                    listeService();
                }
            }
            catch (Exception ex)
            {

                message.Text = ex.Message;
            }
        }
    }
}