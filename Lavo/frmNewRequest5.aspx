<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/LavoMaster.Master" AutoEventWireup="true" CodeFile="frmNewRequest5.aspx.cs" Inherits="WebApplication2.frmNewRequest6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        h2 {
            font-family: Calibri;
            margin-bottom: 0;
            border: 0;
            font-size: 30px !important;
            letter-spacing: 4px;
            opacity: 0.9;
        }
    </style>
    <style>h3 {
            font-family: Calibri;
            margin-bottom: 0;  
            border: 0;
            font-size: 20px !important;
            letter-spacing: 4px;
            opacity: 0.9;
        }</style>
     <style>label {
            font-family: Calibri;
            margin-bottom: 0;  
            border: 0;
            font-size: 15px !important;
            letter-spacing: 4px;
            opacity: 0.9;
        }</style>

    <div class="container text-center">
        <form runat="server">

            <h2>Wash Request Confirmation</h2>
            <br />
            <br />
            <h3>Request Information</h3>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Date & Time: " Font-Bold="True"></asp:Label>
            <asp:Label ID="lblDate" runat="server"></asp:Label><br />
            <asp:Label ID="Label7" runat="server" Text="Size Selected: " Font-Bold="True"></asp:Label>
            <asp:Label ID="lblSize" runat="server"></asp:Label><br />
            <asp:Label ID="Label2" runat="server" Text="Package Selected: " Font-Bold="True"></asp:Label>
            <asp:Label ID="lblPackage" runat="server"></asp:Label><br />
            <br />
            <br />
            <h3>Address Information</h3>
            <br />
            <h4>Car Location</h4>
            <asp:Label ID="Label3" runat="server" Text="Address 1: " Font-Bold="True"></asp:Label>
            <asp:Label ID="lblAddress1" runat="server"></asp:Label>
            &nbsp;
            &nbsp;
            <asp:Label ID="Label4" runat="server" Text="Address 2: " Font-Bold="True"></asp:Label>
            <asp:Label ID="lblAddress2" runat="server"></asp:Label><br />
            <asp:Label ID="Label5" runat="server" Text="City: " Font-Bold="True"></asp:Label>
            <asp:Label ID="lblCity" runat="server"></asp:Label>
            &nbsp;
            &nbsp;
            <asp:Label ID="Label6" runat="server" Text="Zipcode: " Font-Bold="True"></asp:Label>
            <asp:Label ID="lblZipcode" runat="server"></asp:Label>
            <br />
            <br />
            <h4>Key Location</h4>
            <asp:Label ID="Label8" runat="server" Text="Pick Up Address: " Font-Bold="True"></asp:Label>
            <asp:Label ID="lblPickUpAddress" runat="server"></asp:Label><br />
            <asp:Label ID="Label9" runat="server" Text="Pick Up City: " Font-Bold="True"></asp:Label>
            <asp:Label ID="lblPickUpCity" runat="server"></asp:Label>
            &nbsp;
            &nbsp;
            <asp:Label ID="Label11" runat="server" Text="Pick Up Zipcode: " Font-Bold="True"></asp:Label>
            <asp:Label ID="lblPickUpZipcode" runat="server"></asp:Label><br />
            <br />
            <asp:Label ID="Label10" runat="server" Text="Drop Off Address: " Font-Bold="True"></asp:Label>
            <asp:Label ID="lblDropOffAddress" runat="server"></asp:Label><br />
            <asp:Label ID="Label13" runat="server" Text="Drop Off City: " Font-Bold="True"></asp:Label>
            <asp:Label ID="lblDropOffCity" runat="server"></asp:Label>
            &nbsp;
            &nbsp;
            <asp:Label ID="Label15" runat="server" Text="Drop Off Zipcode: " Font-Bold="True"></asp:Label>
            <asp:Label ID="lblDropOffZipcode" runat="server"></asp:Label><br />
            <br />
            <asp:Label ID="lblCustomerID" runat="server"></asp:Label>
            <br />
            <br />


            <div class="form-group">
                <!-- Submit button -->
                <div class="text-center">
                    <asp:LinkButton ID="btnSubmit" runat="server" Text="Button" CssClass="btn btn-warning" OnClick="btnSubmit_ServerClick">Submit <span class="glyphicon glyphicon-send"></span></asp:LinkButton>
                    <!--<button type="submit" class="btn btn-warning" id="btnSubmit2">Submit Wash <span class="glyphicon glyphicon-ok"></span></button>-->
                </div>
            </div>



            <div class="form-group">
                <!-- Submit button -->
                <div class="text-center">
                    <asp:LinkButton ID="btnPrevious" runat="server" Text="Button" CssClass="btn btn-warning" OnClick="btnPrevious_ServerClick">Go Back <span class="glyphicon glyphicon-remove"></span></asp:LinkButton>
                    <!--<button type="submit" class="btn btn-warning" id="btnPrevious2">Go Back <span class="glyphicon glyphicon-remove"></span></button>-->
                </div>
            </div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />

        </form>





    </div>
</asp:Content>
