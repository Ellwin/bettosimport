﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Busqueda.aspx.cs" Inherits="BettosImport.Sigeinv.WebUI.Busqueda.Busqueda" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Betto's Import SAC</title>
    <link href="~/css/jquery-ui.min.css" rel="stylesheet" type="text/css" />
    <link href="~/css/jquery-ui.theme.min.css" rel="stylesheet" type="text/css" />
    <link href="~/css/bootstrap.min.css" rel="stylesheet" type="text/css" />   

    <script type="text/javascript">
        var baseURL = "<%=BettosImport.Sigeinv.Common.WebUtil.AbsoluteWebRoot%>";
    </script>

    <script src="<%=BettosImport.Sigeinv.Common.WebUtil.AbsoluteWebRoot%>js/jquery-1.11.2.min.js" type="text/javascript"></script>
    <script src="<%=BettosImport.Sigeinv.Common.WebUtil.AbsoluteWebRoot%>js/jquery-ui.js" type="text/javascript"></script>
    <script src="<%=BettosImport.Sigeinv.Common.WebUtil.AbsoluteWebRoot%>js/bootstrap.js" type="text/javascript"></script>
    <script src="<%=BettosImport.Sigeinv.Common.WebUtil.AbsoluteWebRoot%>js/jquery.blockUI.js" type="text/javascript"></script>

    <script type="text/javascript">
        function retornarValor(busqueda, codigo, descripcion) {
            parent.cargarItem(busqueda, codigo, descripcion);
            return false;
        }
    </script>

    <style type="text/css">
       .table {font-size: 11px }                
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div >
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="true" />
        <div class="panel panel-default">
            <div class="panel-heading">
                <div class="row">
                        <div class="col-xs-3">
                            <input type="text" class="form-control input-sm" id="txtCodigo" placeholder="Codigo" />
                        </div>
                        <div class="col-xs-6">
                            <input type="text" class="form-control input-sm" id="txtDescripcion" placeholder="Descripcion"/>
                        </div>
                        <div class="col-xs-2">
                            <button class="btn btn-info btn-sm" type="button"><span class="glyphicon glyphicon-arrow-right"></span> Buscar</button>
                        </div>
                    </div>
            </div>
                <div class="panel-body">
                     
                </div>
                <asp:UpdatePanel ID="upBusqueda" runat="server">
                    <ContentTemplate>
                        <asp:GridView runat="server" ID="gvBusqueda" AutoGenerateColumns="False"
                                                EmptyDataText="No se encontraron registros." 
                                                CssClass="table table-bordered table-striped" AllowPaging="True" PageSize="7">
                                            <Columns>
                                                <asp:BoundField DataField="codigo" HeaderText="Codigo" ItemStyle-HorizontalAlign="Left" />
                                                <asp:BoundField DataField="descripcion" HeaderText="Descripcion" ItemStyle-HorizontalAlign="Left" />
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:Button ID="btnSeleccionar" runat="server" Text="Seleccionar" CssClass="btn btn-link btn-xs"></asp:Button>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                        </asp:GridView>

                     </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="gvBusqueda" EventName="PageIndexChanging"/>
                    </Triggers>                        
                </asp:UpdatePanel>
        </div>
    </div>
    </form>
    <script src="<%=BettosImport.Sigeinv.Common.WebUtil.AbsoluteWebRoot%>js/jsUpdateProgress.js" type="text/javascript"></script>
</body>
</html>
