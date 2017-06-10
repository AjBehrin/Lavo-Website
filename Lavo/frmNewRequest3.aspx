<%@ Page Title="" Language="C#" MasterPageFile="~/LavoMaster.Master" AutoEventWireup="true" CodeBehind="frmNewRequest3.aspx.cs" Inherits="WebApplication2.frmNewRequest31" %>
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
    <form>
	<div class="form-group container text-center"> <!-- Message input !-->
		<label class="control-label " for="region_id">Choose Your Package</label>
        <br />
		<select class="form-control" id="region_id" name="region">
			<option value="basic" id="dropdownBasic">Basic</option>
			<option value="premium" id="dropdownPremium">Premium</option>
            <option value="premiumOption" id="dropdownPremiumWithOption">Premium with Interior Cleaning</option>
			
			
		</select>
	</div>
</form>
      <div class="form-group">
             <div class="text-center"><button type="submit" class="btn btn-warning" id="btnNext">Submit <span class="glyphicon glyphicon-send"></span></button>
             </div>
          </div>
</asp:Content>
