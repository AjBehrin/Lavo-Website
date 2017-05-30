<%@ Page Title="" Language="C#" MasterPageFile="~/LavoMaster.master" AutoEventWireup="true" CodeFile="frmSignUp.aspx.cs" Inherits="frmSignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="row">
        <asp:Label ID="lblError" runat="server" Text="Label"></asp:Label>
        <h3 class="text-center">Enter Login Information Below</h3><br />
        <form class="form-horizontal" runat="server">
            <div class="form-group">
                <label class="control-label col-sm-offset-3 col-sm-2" for="Email">Email:</label>
                <div class="col-sm-4">
                    <input type="email" runat="server" class="form-control" id="txtEmail" placeholder="Enter Email" name="txtEmail" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-offset-3 col-sm-2" for="Password">Password:</label>
                <div class="col-sm-4">
                    <input type="password" runat="server" class="form-control" id="txtPassword" placeholder="Enter Desired Password" name="txtPassword" />
                </div>
            </div>
            <br />
            <h3 class="text-center">Enter Account Information Below</h3>
            <br />
            <div class="form-group">
                <label class="control-label col-sm-offset-3 col-sm-2" for="Name">Full Name:</label>
                <div class="col-sm-4">              
                    <input type="text" runat="server" class="form-control" id="txtName" placeholder="Enter Full Name" name="txtName" />                    
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-offset-3 col-sm-2" for="Address">Address:</label>
                <div class="col-sm-4">
                    <input type="text" runat="server" class="form-control" id="txtAddress" placeholder="Enter Address" name="txtAddress" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-offset-3 col-sm-2" for="City">City:</label>
                <div class="col-sm-4">
                    <input type="text" runat="server" class="form-control" id="txtCity" placeholder="Enter City" name="txtCity" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-offset-3 col-sm-2" for="State">State:</label>
                <div class="col-sm-4">
                    <input type="text" runat="server" class="form-control" id="txtState" placeholder="Enter State (Abbreviation Only)" name="txtState" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-offset-3 col-sm-2" for="Zipcode">Zipcode:</label>
                <div class="col-sm-4">
                    <input type="text" runat="server" class="form-control" id="txtZipcode" placeholder="Enter Zipcode" name="txtZipcode" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-offset-3 col-sm-2" for="Phone">Phone:</label>
                <div class="col-sm-4">
                    <input type="text" runat="server" class="form-control" id="txtPhone" placeholder="Enter Phone Number" name="txtPhone" />
                </div>
            </div>
            <button runat="server" type="submit" class="btn btn-primary col-sm-offset-4" onserverclick="btnAddUser_ServerClick" id="btnAddUser">Submit</button>
        </form>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

