<%@ Page Title="" Language="C#" MasterPageFile="~/LavoMaster.Master" AutoEventWireup="true" CodeBehind="frmNewRequest3.aspx.cs" Inherits="WebApplication2.frmNewRequest31" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form>
	<div class="form-group container text-center"> <!-- Message input !-->
		<label class="control-label " for="region_id"><h1>Choose Your Package</label></h1>
		<select class="form-control" id="region_id" name="region">
			<option value="basic">Basic</option>
			<option value="premium">Premium</option>
            <option value="premiumOption">Premium with Interior Cleaning</option>
			
			
		</select>
	</div>
</form>


      <div class="form-group">
             <div class="col-md-7"><button type="submit" class="btn btn-warning pull-right">Send <span class="glyphicon glyphicon-send"></span></button>
             </div>
            </div>
</asp:Content>
