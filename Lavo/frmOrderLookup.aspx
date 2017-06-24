<%@ Page Title="" Language="C#" MasterPageFile="~/LavoMaster.Master" AutoEventWireup="true" CodeFile="frmOrderLookup.aspx.cs" Inherits="frmOrderLookup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form runat="server">
        <div class="container">
            <h2>Requests Table</h2>
            <p>This should display all of the information for the current request:</p>
            <br />
            <asp:placeholder id="PlaceHolderRequestsTable" runat="server"></asp:placeholder>
            <br />
            <br />
            <p>Address Information</p>
            <br />
            <asp:placeholder id="PlaceHolderAddressTable" runat="server"></asp:placeholder>
            <br />
            <br />
            <p>Vehicle Information</p>
            <br />
            <asp:placeholder id="PlaceHolderVehiclesTable" runat="server"></asp:placeholder>
            <br />
            <br />
        </div>
        <br />

        <div class="form-group">
            <!-- Next button -->
            <div class="text-center">
                <asp:LinkButton ID="btnNext" runat="server" Text="Button" CssClass="btn btn-warning" OnClick="btnNext_ServerClick">Next <span class="glyphicon glyphicon-chevron-right"></span></asp:LinkButton>
            </div>
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</asp:Content>

