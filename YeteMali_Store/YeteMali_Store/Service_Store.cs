using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace YeteMali_Store
{
    public class Service_Store
    {
        string chaine = ConfigurationManager.ConnectionStrings["chaine1"].ConnectionString;
        int d;
        //---------------------------------------------PARTIE CRUD--------------------
        //--------------------------------Ajout Service-----------------------------------
        public int AjoutService( string NomService, string description)
        {
            using (SqlConnection cnx = new SqlConnection(chaine))
            {
                cnx.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cnx;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "AjoutService";
                cmd.Parameters.AddWithValue("@NomService", NomService);
                cmd.Parameters.AddWithValue("@description", description);
                d = cmd.ExecuteNonQuery();
                cnx.Close();
            }
            return d;
        }
        //--------------------------------Liste Service-----------------------------------
        public DataTable ListeService()
        {
            DataSet ds = new DataSet();
            using (SqlConnection cnx = new SqlConnection(chaine))
            {
                cnx.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cnx;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "ListeServie";
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                da.Fill(ds);
                cnx.Close();
            }
            return ds.Tables[0];
        }
        //--------------------------------Ajout de la caisse asp-----------------------------------
        public int AjoutCaisse(string caisse, string nomCaisse, string localite,int service)
        {
            using (SqlConnection cnx = new SqlConnection(chaine))
            {
                cnx.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cnx;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "PSAjoutCaisse";
                cmd.Parameters.AddWithValue("@caisse", caisse);
                cmd.Parameters.AddWithValue("@NomCaisse", nomCaisse);
                cmd.Parameters.AddWithValue("@localite", localite);
                cmd.Parameters.AddWithValue("@service", service);

                d = cmd.ExecuteNonQuery();
                cnx.Close();
            }
            return d;
        }
        //--------------------------------Liste de la caisse asp-----------------------------------
        public DataTable ListeCaisse()
        {
            DataSet ds = new DataSet();
            using (SqlConnection cnx = new SqlConnection(chaine))
            {
                cnx.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cnx;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "PSListeCaisse";
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                da.Fill(ds);
                cnx.Close();
            }
            return ds.Tables[0];
        }
        //--------------------------------Ajout de la categorie asp-----------------------------------
        public int AjoutCategorie(string libelle)
        {
            using (SqlConnection cnx = new SqlConnection(chaine))
            {
                cnx.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cnx;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "PSAjoutCategorie";
                cmd.Parameters.AddWithValue("@libelle", libelle);
               

                d = cmd.ExecuteNonQuery();
                cnx.Close();
            }
            return d;
        }
        //--------------------------------Liste de la categorie asp-----------------------------------
        public DataTable ListeCategorie()
        {
            DataSet ds = new DataSet();
            using (SqlConnection cnx = new SqlConnection(chaine))
            {
                cnx.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cnx;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "PSListeCategorie";
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                da.Fill(ds);
                cnx.Close();
            }
            return ds.Tables[0];
        }
        //--------------------------------Ajout du Statut asp-----------------------------------
        public int AjoutStatut(string situation)
        {
            using (SqlConnection cnx = new SqlConnection(chaine))
            {
                cnx.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cnx;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "PSAjoutStatut";
                cmd.Parameters.AddWithValue("@situation", situation);


                d = cmd.ExecuteNonQuery();
                cnx.Close();
            }
            return d;
        }
        //--------------------------------Liste du statut asp-----------------------------------
        public DataTable ListeStatut()
        {
            DataSet ds = new DataSet();
            using (SqlConnection cnx = new SqlConnection(chaine))
            {
                cnx.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cnx;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "PSListeStatuts";
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                da.Fill(ds);
                cnx.Close();
            }
            return ds.Tables[0];
        }
        //--------------------------------Ajout du travailleur asp-----------------------------------
        public int AjoutEmployes(string matricule, string nom, string prenom,string tel, string email, string photo, int categorie, int statut, int service)
        {
            using (SqlConnection cnx = new SqlConnection(chaine))
            {
                cnx.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cnx;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "PSAjoutEmployes";
                cmd.Parameters.AddWithValue("@matricule", matricule);
                cmd.Parameters.AddWithValue("@nom", nom);
                cmd.Parameters.AddWithValue("@prenom", prenom);
                cmd.Parameters.AddWithValue("@tel", tel);
                cmd.Parameters.AddWithValue("@email", email);
                cmd.Parameters.AddWithValue("@photo", photo);
                cmd.Parameters.AddWithValue("@categorie", categorie);
                cmd.Parameters.AddWithValue("@statut", statut);
                cmd.Parameters.AddWithValue("@service", service);
                d = cmd.ExecuteNonQuery();
                cnx.Close();
            }
            return d;
        }
        //--------------------------------Liste du statut asp-----------------------------------
        public DataTable ListeEmployes()
        {
            DataSet ds = new DataSet();
            using (SqlConnection cnx = new SqlConnection(chaine))
            {
                cnx.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cnx;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "PSListeStatuts";
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                da.Fill(ds);
                cnx.Close();
            }
            return ds.Tables[0];
        }
    }
}