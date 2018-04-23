﻿<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Default.aspx.vb"
          Inherits="FormattingViaEvents._Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v9.3, Version=9.3.1.0,
          Culture=neutral, PublicKeyToken=b88d1754d700e49a"
          Namespace="DevExpress.Web.ASPxPivotGrid"
          TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
     "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" DataSourceID="AccessDataSource1"
            OnCustomCellDisplayText="CustomCellDisplayText">
            <Fields>
                <dx:PivotGridField ID="fieldProductName" Area="RowArea"
                       AreaIndex="0" FieldName="ProductName">
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldExtendedPrice" Area="DataArea"
                       AreaIndex="0" FieldName="ExtendedPrice">
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldCountry" Area="ColumnArea"
                       AreaIndex="0" FieldName="Country">
                </dx:PivotGridField>
            </Fields>
        </dx:ASPxPivotGrid>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server"
            DataFile="~/App_Data/nwind.mdb"
            SelectCommand="SELECT [ProductName], [ExtendedPrice], [Country] FROM [Invoices]">
        </asp:AccessDataSource>
    </div>
    </form>
</body>
</html>