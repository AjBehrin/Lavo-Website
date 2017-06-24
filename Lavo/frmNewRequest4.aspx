<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/LavoMaster.Master" AutoEventWireup="true" CodeFile="frmNewRequest4.aspx.cs" Inherits="WebApplication2.EnterAddressForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>h2 {
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
    <form runat="server">
        <div class="container text-center">
            <div class="row">
                <form class="form-horizontal">
                    <fieldset>
                        <!-- Address form -->

                        <h2>Please Enter Your Vehicle Location</h2>
                        <br />

                        <!-- full-name input
                <div class="control-group">
                    <label class="control-label">Full Name</label>
                    <div class="controls">
                        <input id="full-name" name="full-name" type="text" placeholder="full name"
                        class="input-xlarge">
                        <p class="help-block"></p>
                    </div>
                </div> ------>
                        <!-- address-line1 input-->
                        <div class="control-group">
                            <label class="control-label">Address Line 1</label>
                            <div class="controls">
                                <input runat="server" id="txtReqAddress1" name="address-line1" type="text" placeholder="Street Address"
                                    class="input-xlarge">
                            </div>
                        </div>
                        <br />
                        <!-- address-line2 input-->
                        <div class="control-group">
                            <label class="control-label">Address Line 2</label>
                            <div class="controls">
                                <input runat="server" id="txtReqAddress2" name="address-line2" type="text" placeholder="Apartment, Suite , etc."
                                    class="input-xlarge">
                            </div>
                        </div>
                        <br />
                        <!-- city input-->
                        <div class="control-group">
                            <label class="control-label">City/Town</label>
                            <div class="controls">
                                <input runat="server" id="txtCity" name="city" type="text" placeholder="City" class="input-xlarge">
                                <p class="help-block"></p>
                            </div>
                        </div>
                        <br />
                        <!-- region input--
                <div class="control-group">
                    <label class="control-label">State / Province / Region</label>
                    <div class="controls">
                        <input id="region" name="region" type="text" placeholder="state / province / region"
                        class="input-xlarge">
                        <p class="help-block"></p>
                    </div>
                </div> --->
                        <!-- postal-code input-->
                        <div class="control-group">
                            <label class="control-label">Zip/Postal Code</label>
                            <div class="controls">
                                <input runat="server" id="txtZipCode" name="postal-code" type="text" placeholder="Zip"
                                    class="input-xlarge">
                                <p class="help-block"></p>
                            </div>
                        </div>
                        <br />

                    </fieldset>
                </form>
            </div>
        </div>
        <br />
        <asp:Label ID="lblError" runat="server"></asp:Label>
        <br />

        <div class="text-center">
            <asp:LinkButton ID="LinkButton1" runat="server" Text="Button" CssClass="btn btn-warning" OnClick="btnSubmit_ServerClick">Submit <span class="glyphicon glyphicon-send"></span></asp:LinkButton>
            <!--<button runat="server" type="submit" class="btn btn-warning" id="btnSubmit2" onserverclick="btnSubmit_ServerClick">Submit <span class="glyphicon glyphicon-send"></span></button>-->
            <br />
            <br />
        </div>

    </form>
            
    <br>
          <br />
          <br>
          <br />
</asp:Content>
