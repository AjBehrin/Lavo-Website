<%@ Page Title="" Language="C#" MasterPageFile="~/LavoMaster.Master" AutoEventWireup="true" CodeFile="frmOrderLookup.aspx.cs" Inherits="frmOrderLookup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container">
        <h2>Requests Table</h2>
        <p>This should display all of the information in the requests table:</p>
        <asp:PlaceHolder ID="PlaceHolderRequestsTable" runat="server"></asp:PlaceHolder>
    </div>

</asp:Content>

