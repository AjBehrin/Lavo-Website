<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/LavoMaster.Master" AutoEventWireup="true" CodeFile="frmNewRequest3.aspx.cs" Inherits="WebApplication2.frmNewRequest31" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>label {
            font-family: Calibri;
            margin-bottom: 0;  
            border: 0;
            font-size: 20px !important;
            letter-spacing: 4px;
            opacity: 0.9;
        }</style>
    <form runat="server">
        <div class="form-group container text-center">
            <!-- Message input !-->
            <label class="control-label " for="region_id">Choose Your Package</label>
            <br />
            <select runat="server" class="form-control" id="packageSelect" name="packageSelect">
                <option value="Basic" id="dropdownBasic">Basic</option>
                <option value="Premium" id="dropdownPremium">Premium</option>
                <option value="Premium with Interior Cleaning" id="dropdownPremiumWithOption">Premium with Interior Cleaning</option>


            </select>
        </div>

        <div class="form-group">
            <div class="text-center">
                <asp:LinkButton ID="btnSubmit" runat="server" Text="Button" CssClass="btn btn-warning" OnClick="btnSubmit_ServerClick">Submit <span class="glyphicon glyphicon-send"></span></asp:LinkButton>
                <!--<button type="submit" class="btn btn-warning" id="btnNext">Submit <span class="glyphicon glyphicon-send"></span></button>-->
            </div>
        </div>
    </form>
</asp:Content>
