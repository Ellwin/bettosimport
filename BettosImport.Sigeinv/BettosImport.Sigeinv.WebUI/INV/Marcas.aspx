﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SiteIntranet.Master" AutoEventWireup="true" CodeBehind="Marcas.aspx.cs" Inherits="BettosImport.Sigeinv.WebUI.INV.Marcas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="btn-toolbar well well-sm" >
        <asp:Button ID="btnNuevo" runat="server" Text="Nuevo" CssClass="btn btn-info" Enabled="true" OnClick="btnNuevo_Click"/>
        
    </div>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            
            <div class="panel panel-primary">
                
                <div class="panel panel-body">
                    <div class="row">
                        <div class="col-xs-4">
                        
                        </div>
                        <div class="col-xs-8">
                            <div class="input-group"> 
                                <asp:TextBox ID="txtDscMarca" CssClass="form-control" placeholder="Marca" runat="server" TabIndex="1"></asp:TextBox>
                                <span class="input-group-btn">
                                   <asp:Button ID="btnBuscar" runat="server" CssClass="btn btn-info" Text="Buscar" TabIndex="2" OnClick="btnBuscar_Click" />
                               </span>
                            </div>
                        </div>
                    </div>
                    <br />
                    <asp:GridView ID="gvListado" runat="server" 
                        AutoGenerateColumns="False" 
                        Width="100%" CssClass ="table table-responsive" Font-Size="Small"
                        AllowPaging="True"
                        DataKeyNames="codMarca"
                        EmptyDataText="No se encontraron registros" 
                        OnPageIndexChanging="gvListado_PageIndexChanging" OnRowCommand="gvListado_RowCommand" OnRowDeleting="gvListado_RowDeleting">
                        <HeaderStyle BackColor="#337ab7" Font-Bold="True" ForeColor="White" />
                        <EmptyDataRowStyle forecolor="Red" CssClass="table table-bordered" />
                        <EditRowStyle BackColor="#ffffcc" />
                        <PagerStyle CssClass="pagination-ys" />
                        <Columns>
                            <asp:BoundField DataField="codMarca" HeaderText="Código" />
                            <asp:BoundField DataField="dscMarca" HeaderText="Marca" />
                            <asp:BoundField DataField="fecCreacion" HeaderText="Fecha de Creación" />
                            <asp:BoundField DataField="dscEstado" HeaderText="Estado" />
                            <asp:BoundField DataField="fecModificacion" HeaderText="Actualizado" />

                            <asp:ButtonField ButtonType="Button" CommandName="Edit" Text="Editar" ControlStyle-CssClass="btn btn-sm btn-info" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button ID="btnEliminar" runat="server" 
                                        CommandName="Delete" Text="Eliminar" CssClass="btn btn-sm btn-danger"
                                        CommandArgument='<%# Eval("codMarca") %>'
                                         OnClientClick="javascript: return bettosimport.util.confirmar('¿Está seguro de eliminar el registro?', this.name);"
                                     />
                                </ItemTemplate>
                            </asp:TemplateField>

                        </Columns>

                    </asp:GridView>     
                </div>
            </div>
            
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
