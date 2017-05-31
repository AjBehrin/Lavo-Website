<%@ Page Title="" Language="C#" MasterPageFile="~/LavoMaster.master" AutoEventWireup="true" CodeFile="frmAnotherFormTest.aspx.cs" Inherits="frmAnotherFormTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form class="form-horizontal" runat="server">

        <asp:Label ID="Label1" runat="server" Text="Number1:"></asp:Label>
        <asp:TextBox ID="txtNum1" runat="server" CssClass="form-control input-lg"
            Width="250px" TabIndex="1"></asp:TextBox>       

        <asp:Label ID="Label2" runat="server" Text="Number2:"></asp:Label>
        <asp:TextBox ID="txtNum2" runat="server" CssClass="form-control input-lg"
            Width="250px" TabIndex="1"></asp:TextBox>

        <asp:Button ID="btnCalc" runat="server" Text="Calculate" CssClass="btn btn-primary btn-sm" OnClick="btnCalc_Click" />

        <br />

        <asp:Label ID="Label3" runat="server" Text="Answer:"></asp:Label>
        <asp:TextBox ID="txtAnswer" runat="server" CssClass="form-control input-lg"
            Width="250px" TabIndex="1"></asp:TextBox>
    
    </form>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

