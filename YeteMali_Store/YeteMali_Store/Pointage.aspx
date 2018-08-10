<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Pointage.aspx.cs" Inherits="YeteMali_Store.Pointage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titre" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="principal" runat="server">
    <div class="page-content">
                          
      <div class="page-header">
           <h1>   Employés Réguliers </h1>                    
      </div><!-- /.page-header -->

      <!-- Advanced Tables -->
                    <div class="panel panel-success">
                        <div class="panel-heading">
                             Pointer les employés
                        </div>
                        <div class="panel-heading">
                                    <div class="row">
                                            <div class="col-md-4" >
                                                    <div class="form-group">
                                                            <label for="categorie" class="control-label">Catégorie</label>
                                                <select class="form-control" id="categorie">
                                                  <option value="">Tout</option>
                                                  <option value="">Travailleurs</option>
                                                  <option>Stageaires</option>
                                                </select>
                                                    </div>
                                                        
                                            </div>
                                            <div class="col-md-4" >
                                                    <div class="form-group">
                                                            <label for="categorie" class="control-label">Agence</label>
                                                <select class="form-control" id="Select1">
                                                  <option value="">Choisir...</option>
                                                  <option>Choisir</option>
                                                </select>
                                                    </div>
                                                        
                                            </div>
                                            <div class="col-md-4" >
                                                    <div class="form-group">
                                                            <label for="categorie" class="control-label">Depart / Arrivée</label>
                                                <select class="form-control" id="categorie " >
                                                  <option value="">Départ</option>
                                                  <option>Arrivé</option>
                                                </select>
                                                    </div>
                                                        
                                            </div>
                                            
                                            
                                    </div>
                                    
                            </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Matricule</th>
                                            <th>Nom </th>
                                            <th>Prenom(s)</th>
                                            <th>Service</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="odd gradeX">
                                            <td>Trident</td>
                                            <td>Internet Explorer 4.0</td>
                                            <td>Win 95+</td>
                                            <td class="center">4</td>
                                            <td class="center">X</td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td>Trident</td>
                                            <td>Internet Explorer 4.0</td>
                                            <td>Win 95+</td>
                                            <td class="center">4</td>
                                            <td class="center">X</td>
                                        </tr>
                                    
                                    </tbody>
                                </table>
                            </div>
                            
                        </div>
                    </div>
                    <!--End Advanced Tables -->

  </div><!-- /.page-content -->
</asp:Content>
