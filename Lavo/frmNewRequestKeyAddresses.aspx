<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/LavoMaster.Master" AutoEventWireup="true" CodeFile="frmNewRequestKeyAddresses.aspx.cs" Inherits="frmNewRequestKeyAddresses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style>h2 {
            font-family: Calibri;
            margin-bottom: 0;  
            border: 0;
            font-size: 20px !important;
            letter-spacing: 4px;
            opacity: 0.9;
        }</style>
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
    <form runat="server">
        <div class="container text-center">
            <div class="row">
                <form class="form-horizontal">
                    <fieldset>
                        <!-- Address form -->

                        <h2>Please Enter Your Key Pick Up and Drop Off Addresses</h2>
                        <br />
                        <p>The premium option with interior cleaning requires us to pick up and drop off your vehicle keys.</p>
                        <br />
                        <br />


                        <!-- Key pick up address input-->
                        <h3>Key Pick Up Address Information</h3>
                        <br />
                        <div class="control-group">
                            <label class="control-label">Key Pick Up Address</label>
                            <div class="controls">
                                <input runat="server" id="txtPickUpAddress" name="txtPickUpAddress" type="text" placeholder="Key Pick Up Address"
                                    class="input-xlarge">
                            </div>
                        </div>

                        <!-- Key pick up city input-->
                        <div class="control-group">
                            <label class="control-label">Pick Up City</label>
                            <div class="controls">
                                <input runat="server" id="txtPickUpCity" name="txtPickUpCity" type="text" placeholder="Key Pick Up City"
                                    class="input-xlarge">
                            </div>
                        </div>

                        <!-- Key pick up zipcode input-->
                        <div class="control-group">
                            <label class="control-label">Pick Up Zipcode</label>
                            <div class="controls">
                                <input runat="server" id="txtPickUpZipcode" name="txtPickUpZipcode" type="text" placeholder="Key Pick Up Zipcode" class="input-xlarge">
                                <p class="help-block"></p>
                            </div>
                        </div>
                        <br />

                        <div class="text-center">
                            <asp:LinkButton ID="btnSameAddress" runat="server" Text="Button" CssClass="btn btn-warning" OnClick="btnSameAddress_ServerClick">Same Drop Off Address <span class="glyphicon glyphicon-chevron-down"></span></asp:LinkButton>
                            <!--<button runat="server" type="submit" class="btn btn-warning" id="btnSubmitFake" onserverclick="btnSubmit_ServerClick">Submit <span class="glyphicon glyphicon-send"></span></button>-->
                            <br />
                            <br />
                        </div>
                        <br />
                        <br />

                        <!-- Key drop off address input-->
                        <h3>Key Drop Off Address Information</h3>
                        <br />
                        <div class="control-group">
                            <label class="control-label">Key Drop Off Address</label>
                            <div class="controls">
                                <input runat="server" id="txtDropOffAddress" name="txtDropOffAddress" type="text" placeholder="Key Drop Off Address"
                                    class="input-xlarge">
                            </div>
                        </div>

                        <!-- Key drop off city input-->
                        <div class="control-group">
                            <label class="control-label">Drop Off City</label>
                            <div class="controls">
                                <input runat="server" id="txtDropOffCity" name="txtDropOffCity" type="text" placeholder="Key Drop Off City"
                                    class="input-xlarge">
                            </div>
                        </div>

                        <!-- Key drop off zipcode input-->
                        <div class="control-group">
                            <label class="control-label">Drop Off Zipcode</label>
                            <div class="controls">
                                <input runat="server" id="txtDropOffZipcode" name="txtDropOffZipcode" type="text" placeholder="Key Drop Off Zipcode" class="input-xlarge">
                                <p class="help-block"></p>
                            </div>
                        </div>
                        
                    </fieldset>
                </form>
            </div>
        </div>

        <div class="text-center">
            <asp:LinkButton ID="btnSubmit" runat="server" Text="Button" CssClass="btn btn-warning" OnClick="btnSubmit_ServerClick">Submit <span class="glyphicon glyphicon-send"></span></asp:LinkButton>
            <!--<button runat="server" type="submit" class="btn btn-warning" id="btnSubmitFake2" onserverclick="btnSubmit_ServerClick">Submit <span class="glyphicon glyphicon-send"></span></button>-->
            <br />
            <br />
        </div>

    </form>
            
    <br>
          <br />
          <br>
          <br />

</asp:Content>

