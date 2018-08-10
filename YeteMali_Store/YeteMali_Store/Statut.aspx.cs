using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YeteMali_Store
{
    public partial class Statut : System.Web.UI.Page
    {
        Service_Store db = new Service_Store();
        protected void Page_Load(object sender, EventArgs e)
        {
            ListeStatut(); 
        }
        public void ListeStatut()
        {
            gridStatut.DataSource = db.ListeStatut();
            gridStatut.DataBind();
        }

        protected void BtnAjouter_Click(object sender, EventArgs e)
        {
            try
            {
                if (db.AjoutStatut(txtStatut.Text) > 0)
                {
                    message.Text = "Ajout effectué avec succès";
                    txtStatut.Text = "";  
                    ListeStatut();
                }
            }
            catch (Exception ex)
            {

                message.Text = ex.Message;
            }
        }

    }
}