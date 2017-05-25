<%@ Page Title="" Language="C#" MasterPageFile="~/LavoMaster.master" AutoEventWireup="true" CodeFile="frmFormTests.aspx.cs" Inherits="frmFormTests" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="lblNumAnswer" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="form-group">
        <label for="num1">Number1:</label>
        <input runat="server" type="text" class="form-control" id="txtNum1" />
    </div>
    <div class="form-group">
        <label for="num2">Number2:</label>
        <input runat="server" type="text" class="form-control" id="txtNum2" />
    </div>
    <button runat="server" class="btn btn-primary" onserverclick="btnMulti_ServerClick" type="submit" id="btnMulti">Enter</button>
    <br />
    <div class="form-group">
        <label for="numAnswer">Answer:</label>
        <input runat="server" type="text" class="form-control" id="txtNumAnswer" />
    </div>
    <form runat="server">
        <asp:label runat="server" text="Answer:"></asp:label>
        <asp:textbox runat="server" ID="txtAnswer2"></asp:textbox>
    </form>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

