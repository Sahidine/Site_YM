using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YeteMali_Store
{
    
    public partial class Caisse : System.Web.UI.Page
    {
        Service_Store db = new Service_Store();
        protected void Page_Load(object sender, EventArgs e)
        {
            ChargeService();
                    listeCaisse();
                 
        }
        public void listeCaisse()
        {
            gridCaisse.DataSource = db.ListeCaisse();
            gridCaisse.DataBind();
        }

        protected void BtnAjouter_Click(object sender, EventArgs e)
        {

        }

        protected void BtnAjouter_Click1(object sender, EventArgs e)
        {
            try
            {
                if (db.AjoutCaisse(txtCode.Text, txtNomCaisse.Text,txtDescription.Text,int.Parse(txtService.Text)) > 0)
                {
                    message.Text = "Ajout effectué avec succès";
                    txtCode.Text = "";
                    txtNomCaisse.Text = "";
                    txtDescription.Text = "";
                    txtService.Text = "";
                    listeCaisse();
                }
            }
            catch (Exception ex)
            {

                message.Text = ex.Message;
            }
        }
        //---------------------remplir le combo service----------------------------------
        public void ChargeService()
        {
            txtService.AppendDataBoundItems = true;
            txtService.Items.Clear();
            txtService.Items.Add("--------------------Slectionnez un service-----------------");
            txtService.DataSource = db.ListeService();
            txtService.Items[0].Value = "0";
            txtService.DataTextField = "NomService";
            txtService.DataValueField = "idService";
            txtService.DataBind();


        }
    }
}