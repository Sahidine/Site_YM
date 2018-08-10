using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YeteMali_Store
{
    public partial class Travailleur : System.Web.UI.Page
    {
        Service_Store db = new Service_Store();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (FileUpload1.HasFile)
            {
                chargeImg();
            }
            if (!IsPostBack)
            {
                try
                {

                    chargeCategorie();
                    chargeService();
                    chargeStatut();



                }
                catch (Exception)
                {


                }
            }
            
        }
        public void chargeStatut()
        {
            txtStatut.AppendDataBoundItems = true;
            txtStatut.Items.Clear();
            txtStatut.Items.Add("---------------------------------------------------------------Slectionnez un statut----------------------------------------------------------");
            txtStatut.DataSource = db.ListeStatut();
            txtStatut.Items[0].Value = "0";
            txtStatut.DataTextField = "situation";
            txtStatut.DataValueField = "id_statut";
            txtStatut.DataBind();


        }
        public void chargeService()
        {
            txtService.AppendDataBoundItems = true;
            txtService.Items.Clear();
            txtService.Items.Add("-------------------------------------------------------------Slectionnez un service---------------------------------------------------------");
            txtService.DataSource = db.ListeService();
            txtService.Items[0].Value = "0";
            txtService.DataTextField = "NomService";
            txtService.DataValueField = "idService";
            txtService.DataBind();


        }
        public void chargeCategorie()
        {
            txtCat.AppendDataBoundItems = true;
            txtCat.Items.Clear();
            txtCat.Items.Add("-------------------------------------------------------------Slectionnez une catégorie----------------------------------------------------------");
            txtCat.DataSource = db.ListeCategorie();
            txtCat.Items[0].Value = "0";
            txtCat.DataTextField = "libelle";
            txtCat.DataValueField = "id_Categorie";
            txtCat.DataBind();


        }
        public void chargeImg()
        {
            string ext = Path.GetExtension(FileUpload1.PostedFile.FileName);
            string fileName = Guid.NewGuid().ToString();
            string chemin = "~/Photo/" + fileName + ext;
            FileUpload1.PostedFile.SaveAs(Server.MapPath(chemin));
            cadrephoto.ImageUrl = chemin;
            TxtCheminImg.Text = chemin;
        }
        protected void BtnAjouter_Click(object sender, EventArgs e)
        {
            try
            {
                if (db.AjoutEmployes(txtMatricule.Text, txtNom.Text, txtPrenom.Text, txtTel.Text,
                    txtEmail.Text, TxtCheminImg.Text, int.Parse(txtCat.Text), int.Parse(txtStatut.SelectedValue), int.Parse(txtService.SelectedValue)) > 0)
                {
                    txtMatricule.Text = "";
                    txtNom.Text = "";
                    txtPrenom.Text = "";
                    txtTel.Text = "";
                    txtEmail.Text = "";
                    TxtCheminImg.Text="";
                    txtCat.Text = "";
                    txtStatut.Text = "";
                    txtService.Text = "";
                    cadrephoto.AlternateText = "";
                }
            }
            catch (Exception ex)
            {

              //  message.Text = ex.Message;
            }
        }
    }
}