<%@ Page Title="" Language="C#" MasterPageFile="~/LavoMaster.Master" AutoEventWireup="true" CodeFile="frmAddressLookUp.aspx.cs" Inherits="frmAddressLookUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container">
        <h2>Address Table</h2>
        <p>This should display all of the information in the address & vehicle table:</p>
        <asp:PlaceHolder ID="PlaceHolderAddressTable" runat="server"></asp:PlaceHolder>
        <br />
        <br />
        <asp:PlaceHolder ID="PlaceHolderVehiclesTable" runat="server"></asp:PlaceHolder>
        <br />
        <br />
        <asp:Label ID="lblAddressID" runat="server"></asp:Label>
        <br />
    </div>

</asp:Content>

