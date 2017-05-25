<%@ Page Title="" Language="C#" MasterPageFile="~/LavoMaster.master" AutoEventWireup="true" CodeFile="frmSignUp.aspx.cs" Inherits="frmSignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="row">
        <h3 class="text-center">Sign Up Form</h3><br />
        <form class="form-horizontal" action="/action_page.php" runat="server">
            <div class="form-group">
                <label class="control-label col-sm-offset-3 col-sm-2" for="Name">Full Name:</label>
                <div class="col-sm-4">
                    <!--<input type="text" class="form-control" id="Name" placeholder="Enter Full Name" name="Name" />-->
                    <asp:TextBox ID="name" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-offset-3 col-sm-2" for="Address">Address:</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" id="Address" placeholder="Enter Address" name="Address" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-offset-3 col-sm-2" for="City">City:</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" id="City" placeholder="Enter City" name="City" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-offset-3 col-sm-2" for="State">State:</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" id="State" placeholder="Enter State (Abbreviation Only)" name="State" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-offset-3 col-sm-2" for="Zipcode">Zipcode:</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" id="Zipcode" placeholder="Enter Zipcode" name="Zipcode" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-offset-3 col-sm-2" for="Phone">Phone:</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" id="Phone" placeholder="Enter Phone Number" name="Phone" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-offset-3 col-sm-2" for="Email">Email:</label>
                <div class="col-sm-4">
                    <input type="email" class="form-control" id="Email" placeholder="Enter Email" name="Email" />
                </div>
            </div>
        </form>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

