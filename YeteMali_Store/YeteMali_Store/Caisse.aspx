<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Caisse.aspx.cs" Inherits="YeteMali_Store.Caisse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titre" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="principal" runat="server">
    <div class="page-content">
                          
      <div class="page-header">
           <h1> Portail Caisse > Enregistrement </h1>                   
      </div><!-- /.page-header -->

  

          <asp:Label ID="message" runat="server" Text=""></asp:Label>
       
                <div class="form-group">
                      <div class="col-md-12">
                          <label for="service" >* Caisse</label>                 
                           <asp:TextBox ID="txtCode" runat="server" CssClass="form-control col-md-12" placeholder="Code Caisse"></asp:TextBox> 
                      </div>   
               </div>
                           
                <div class="form-group">
                          <div class="col-md-12">
                             <label for="txtLocalité" >* Localité</label>
                             <asp:TextBox ID="txtNomCaisse" runat="server" CssClass="form-control"  placeholder="Nom Caisse" ></asp:TextBox>    
                        </div>
                </div>
                  <div class="form-group">
                          <div class="col-md-12">
                             <label for="txtLocalité" >* Localité</label>
                             <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control col-md-12"  placeholder="Descrition"></asp:TextBox>    
                        </div>
                </div>

                 <div class="form-group">
                             <label for="txtLocalité" >* Service</label>

                     <div class="col-md-12">
                         <asp:DropDownList ID="txtService" runat="server" CssClass="form-control col-md-12" ></asp:DropDownList>

                     </div>
                </div>
        <br /> <br />
                <div class="modal-footer" >
                            <div class="row">

                   
                                <div class="col-md-2 col-lg-offset-1">

                                </div>

                                 <asp:Button ID="BtnAjouter" runat="server" Text="Ajouter" 
                                     CssClass="btn btn-succes col-md-3 col-lg-offset-1" OnClick="BtnAjouter_Click1"  />
                                 <asp:Button ID="BtnAnnuler" runat="server" Text="Annuler"
                                     CssClass="btn btn-danger col-md-3 col-lg-offset-3" />
                  
                        </div>
                </div>
       
        <div class="row">
            <div class=" col-md-12">
         <asp:GridView ID="gridCaisse" runat="server" CssClass=" table col-md-12 " AutoGenerateColumns="False" CellPadding="6" ForeColor="#333333" GridLines="None" Font-Size="13pt"  >
             <AlternatingRowStyle BackColor="White" />
             <Columns>
                 <asp:BoundField DataField="Id" HeaderText="Numero Caisse" />
                 <asp:BoundField DataField="NomCaisse" HeaderText="Nom Caisse" />
                 <asp:BoundField DataField="Localite" HeaderText="Localité" />
                 <asp:BoundField DataField="NomService" HeaderText="Service" />
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
            </div>


    </div><!-- /.page-content -->
</asp:Content>
