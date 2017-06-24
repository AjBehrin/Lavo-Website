<%@ Page Title="" Language="C#" MasterPageFile="~/LavoMaster.Master" AutoEventWireup="true" CodeFile="frmViewStatus1.aspx.cs" Inherits="frmViewStatus1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2 class="text-center">Current Order Status</h2>
    <br />
    <br />
    <div style="margin-left: auto; margin-right: auto; text-align: center;">
    <asp:Label ID="lblStatus" runat="server" Font-Bold="true" Font-Size="Large"
        CssClass="StrongText"></asp:Label>
    </div>
    <br />

</asp:Content>

