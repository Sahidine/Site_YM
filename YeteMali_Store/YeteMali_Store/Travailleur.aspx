<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Travailleur.aspx.cs" Inherits="YeteMali_Store.Travailleur" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titre" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="principal" runat="server">
    <div class="page-content">
                          
      <div class="page-header">
           <h1> Portail Travailleur > Enregistrement </h1>                   
      </div><!-- /.page-header -->
          <asp:Label ID="message" runat="server" Text=""></asp:Label>
         <div class="row">

                 <div class="col-md-8">
                     <div class="form-group">
                          <label for="matricule" >* Matricule</label>                 
                          <asp:TextBox ID="txtMatricule" runat="server" CssClass="form-control col-md-12" placeholder="matricule"></asp:TextBox>    
                   </div>  
                     <div class="form-group">
                          <label for="nom" >* Nom</label>                 
                          <asp:TextBox ID="txtNom" runat="server" CssClass="form-control col-md-12" placeholder="Nom "></asp:TextBox>    
                   </div>  
                     <div class="form-group">
                          <label for="prenom" >* Prenom</label>                 
                          <asp:TextBox ID="txtPrenom" runat="server" CssClass="form-control col-md-12" placeholder="Prenom"></asp:TextBox>    
                   </div>  
                     <div class="form-group">
                          <label for="email" >* Email</label>                 
                          <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control col-md-12" placeholder="Exemple: Elhadj@gmail.com"></asp:TextBox>    
                   </div>  
                      <div class="form-group">
                          <label for="telephone" >* Téléphone</label>                 
                          <asp:TextBox ID="txtTel" runat="server" CssClass="form-control col-md-12" placeholder="Exemple: 666 65 75 86"></asp:TextBox>    
                   </div>  
                 </div>
                 <div class="col-md-4">
                      <div class="col-md-12">
                          <asp:Image ID="cadrephoto" runat="server" CssClass="form-control " Width="200px" Height="200px" />                    
                           <asp:Button ID="BtnVisualiserImg" runat="server" Text="Visualisez" Visible="false"
                                                CssClass="btn btn-default col-lg-10 pull-right"/>
                      </div>
                 <br />  <br />            
                         <div class="form-group">
                               <div class="col-md-10">
                                     <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" onchange="this.form.submit();"/>       
                                </div>
                         </div>
                   </div> 

         </div>
        <div class="row">
            <div class="col-md-12">
                     <label for="categorie" >* Catégorie</label>
            </div>
        </div>
              <div class="row">
                  <div class="col-md-8">
                    <div class="form-group">
                         <asp:DropDownList ID="txtCat" runat="server" CssClass="form-control col-md-12" ></asp:DropDownList>
                     </div>
                  </div>
                  <div class="col-md-2">
                        <asp:Button ID="btNouveau" runat="server" Text="Nouvelle" CssClass="btn btn-succes col-md-12 " />
                  </div>
                  <div class="col-md-2">
                        <asp:Button ID="btListe" runat="server" Text="liste" CssClass="btn btn-succes col-md-12" ForeColor="#00CC66" />
                  </div>
                  
              </div>          
                <div class="row">
            <div class="col-md-12">
                     <label for="Statut" >* Statut</label>
            </div>
        </div>
              <div class="row">
                  <div class="col-md-8">
                    <div class="form-group">
                         <asp:DropDownList ID="txtStatut" runat="server" CssClass="form-control col-md-12" ></asp:DropDownList>
                     </div>
                  </div>
                  <div class="col-md-2">
                        <asp:Button ID="Button1" runat="server" Text="Nouvelle" CssClass="btn btn-succes col-md-12 " />
                  </div>
                  <div class="col-md-2">
                        <asp:Button ID="Button2" runat="server" Text="liste" CssClass="btn btn-succes col-md-12" ForeColor="#00CC66" />
                  </div>
                  
              </div>   
        <div class="row">
            <div class="col-md-12">
                     <label for="service" >* Service</label>
            </div>
        </div>
              <div class="row">
                  <div class="col-md-8">
                    <div class="form-group">
                         <asp:DropDownList ID="txtService" runat="server" CssClass="form-control col-md-12" ></asp:DropDownList>
                     </div>
                  </div>
                  <div class="col-md-2">
                        <asp:Button ID="Button3" runat="server" Text="Nouvelle" CssClass="btn btn-succes col-md-12 " />
                  </div>
                  <div class="col-md-2">
                        <asp:Button ID="Button4" runat="server" Text="liste" CssClass="btn btn-succes col-md-12" ForeColor="#00CC66" />
                  </div>
                  
              </div>          
                       
                <br />

                <div class="modal-footer" >
                            <div class="row">

                   
                                    <div class="col-md-2 col-lg-offset-1">

                                    </div>

                                     <asp:Button ID="BtnAjouter" runat="server" Text="Ajouter" 
                                         CssClass="btn btn-succes col-md-3 col-lg-offset-1" OnClick="BtnAjouter_Click"  />
                                     <asp:Button ID="BtnAnnuler" runat="server" Text="Annuler"
                                         CssClass="btn btn-danger col-md-3 col-lg-offset-3" />
                  
                             </div>
                    </div>
       
 <div class="row">
    
         <asp:GridView ID="gridTravailleur" runat="server" CssClass=" table col-md-12" AutoGenerateColumns="False" CellPadding="3" ForeColor="#333333" GridLines="None" >
             <AlternatingRowStyle BackColor="White" />
             <Columns>
                 <asp:BoundField DataField="NomService" HeaderText="Service" />
                 <asp:BoundField DataField="description" HeaderText="Description" />
                 <asp:TemplateField HeaderText="Editer" ShowHeader="False">
                     <ItemTemplate>
                         <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" CommandName="" Text="Bouton"></asp:LinkButton>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Supprimer" ShowHeader="False">
                     <ItemTemplate>
                         <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="false" CommandName="" Text="Bouton"></asp:LinkButton>
                     </ItemTemplate>
                 </asp:TemplateField>
             </Columns>
             <EditRowStyle BackColor="#7C6F57" />
             <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
             <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
             <RowStyle BackColor="#E3EAEB" />
             <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
             <SortedAscendingCellStyle BackColor="#F8FAFA" />
             <SortedAscendingHeaderStyle BackColor="#246B61" />
             <SortedDescendingCellStyle BackColor="#D4DFE1" />
             <SortedDescendingHeaderStyle BackColor="#15524A" />
         </asp:GridView>



</div>    
        <asp:TextBox ID="TxtCheminImg" runat="server" Visible="false"></asp:TextBox>   
    </div><!-- /.page-content -->
</asp:Content>
