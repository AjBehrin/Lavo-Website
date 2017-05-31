<%@ Page Title="" Language="C#" MasterPageFile="~/LavoMaster.master" AutoEventWireup="true" CodeFile="frmCustomerLogin.aspx.cs" Inherits="frmCustomerLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="row">
  <h2 class="text-center">Lavo Customer Login</h2>
  <br />
  <p class="text-center">Please enter your login information.</p>
    <br />
    <form class="form-horizontal" runat="server">
        <div class="form-group">
            <label class="control-label col-sm-offset-3 col-sm-2" for="Email">Email:</label>
            <div class="col-sm-4">
                <input type="email" runat="server" class="form-control" id="txtEmail" placeholder="Enter Email or Username" name="txtEmail" />
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-offset-3 col-sm-2" for="Password">Password:</label>
            <div class="col-sm-4">
                <input type="password" runat="server" class="form-control" id="txtPassword" placeholder="Enter Password" name="txtPassword" />
            </div>
        </div>
        <div class="checkbox col-sm-offset-5">
            <label>
                <input type="checkbox" name="remember">
                Remember me</label>
        </div>
        <br />
        <button runat="server" type="submit" class="btn btn-primary col-sm-offset-5" onserverclick="btnLogin_ServerClick" id="btnLogin">Login</button>
    </form>
</div>

</asp:Content>

