using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YeteMali_Store
{
    public partial class Catégorie : System.Web.UI.Page
    {
        Service_Store db = new Service_Store();
        protected void Page_Load(object sender, EventArgs e)
        {
            ListeCategorie();
        }
        public void ListeCategorie()
        {
            gridCategorie.DataSource = db.ListeCategorie();
            gridCategorie.DataBind();


        }
        protected void BtnAjouter_Click(object sender, EventArgs e)
        {
            try
            {
                if (db.AjoutCategorie(txtlibelle.Text) > 0)
                {
                    message.Text = "Ajout effectué avec succès";
                    txtlibelle.Text = "";
                   
                    ListeCategorie();
                }
            }
            catch (Exception ex)
            {

                message.Text = ex.Message;
            }
        }
    }
}