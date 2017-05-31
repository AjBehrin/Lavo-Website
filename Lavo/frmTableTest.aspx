<%@ Page Title="" Language="C#" MasterPageFile="~/LavoMaster.master" AutoEventWireup="true" CodeFile="frmTableTest.aspx.cs" Inherits="frmTableTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <h2>Vehicles Table</h2>
        <p>This should display all of the information in the vehicles table:</p>
        <asp:PlaceHolder ID="PlaceHolderCustomersTable" runat="server"></asp:PlaceHolder>
        <form id="formGv" runat="server">
            <asp:gridview runat="server" ID="gvWashers">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                </Columns>
            </asp:gridview>
        </form>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

