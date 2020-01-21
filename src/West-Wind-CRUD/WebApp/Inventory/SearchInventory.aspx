﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SearchInventory.aspx.cs" Inherits="WebApp.Inventory.SearchInventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <h1 class="page-header">Search Inventory</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <asp:DropDownList ID="SuppliersDropDown" runat="server"
                AppendDataBoundItems="true" DataSourceID="SuppliersDataSource" DataTextField="CompanyName" DataValueField="SupplierID">
                <asp:ListItem Value="0">[Select a supplier...]</asp:ListItem>
            </asp:DropDownList>
            <asp:ObjectDataSource ID="SuppliersDataSource" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ListAllSuppliers" TypeName="WestWindSystem.BLL.InventoryController"></asp:ObjectDataSource>
        </div>
        <div class="col-md-4"></div>
        <div class="col-md-4"></div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <h2>Inventory</h2>
        </div>
    </div>
</asp:Content>
