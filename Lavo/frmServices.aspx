<%@ Page Title="" Language="C#" MasterPageFile="~/LavoMaster.Master" AutoEventWireup="true" CodeBehind="frmServices.aspx.cs" Inherits="WebApplication2.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container text-center"><h2>Affordable Pricing dependant upon Vehicle Size</h2>
    <br />
<div id="exTab1" class="container">	
<ul  class="nav nav-pills">
			<li class="active">
             <style>
.area{
   border: 2px solid #9A9A9A;
   border-radius: 3px;
   background-color: #FFFFFF;
   height: 70%;
   width: 100%;
   margin: auto;
   margin-bottom: 20px;
   overflow-y: auto;
   overflow-x: hidden;
   text-align:center;
}

.nav-pills > li {
   float: none;
   display: inline-block !important;
   zoom: 1;
}

.nav-pills {
   text-align: center;
}
</style>   
        <a  href="#1a" data-toggle="tab">Small Sized<br /><img src ="images\3.png" style="width:150px;height:100px;"></a>
			</li>

			<li><a href="#2a" data-toggle="tab">Medium Sized<br /><img src ="images\2.png" style="width:150px;height:100px;"></a>
			</li>
			<li><a href="#3a" data-toggle="tab">Large Sized<br /><img src ="images\4.png" style="width:150px;height:100px;"></a>
			</li>
            <li><a href="#4a" data-toggle="tab">Very Long<br /><img src ="images\1.png" style="width:150px;height:100px;"></a>
			</li>

    </ul>		
			<div class="tab-content clearfix">
			  <div class="tab-pane active" id="1a">
          <h2>Sedan & Smaller Vehicles (Hatchback, Motorcycle, Bicycle, ATV, Dirtbike)</h2>
                  <br />
                  <br />
  <div class="row">
    <div class="col-sm-6" >
      <div class = "panel panel-default">
   <div class = "panel-heading">Basic Package ($25+tax)</div>
  <ul class="list-group">
  <li class="list-group-item">Exterior Wash</li>
  <li class="list-group-item">Rims</li>
 
</ul>
 </div>
        </div>
    <div class="col-sm-6" >
    
<div class = "panel panel-default">
   <div class = "panel-heading">Premium Package ($35+tax)</div>
    <ul class="list-group">
  <li class="list-group-item">Exterior Wash</li>
  <li class="list-group-item">Rims</li>
  <li class="list-group-item">Wax</li>
  
</ul>
   
</div>

        </div>
</div>
</div>				
		<div class="tab-pane" id="2a">
         <div class="container-fluid">
  <h2>Bigger Vehicles ( SUV, Pickup Truck, Jeep)</h2>
             <br />
                  <br />
  <div class="row">
    <div class="col-sm-6" >
      <div class = "panel panel-default">
   <div class = "panel-heading">Basic Package ($35+tax)</div>
  <ul class="list-group">
  <li class="list-group-item">Exterior Wash</li>
  <li class="list-group-item">Rims</li>
 
</ul>
 </div>
        </div>
    <div class="col-sm-6" >
    
<div class = "panel panel-default">
   <div class = "panel-heading">Premium Package ($45+tax)</div>
    <ul class="list-group">
  <li class="list-group-item">Exterior Wash</li>
  <li class="list-group-item">Rims</li>
  <li class="list-group-item">Wax</li>
  
</ul>
   
</div>

        </div>
</div>
				</div>
            </div>
        <div class="tab-pane" id="3a">
          <div class="container-fluid">
  <h2>SUV vehicles (Vans, Small Bus, Tractor)</h2>
              <br />
                  <br />
  <div class="row">
    <div class="col-sm-6" >
      <div class = "panel panel-default">
   <div class = "panel-heading">Basic Package ($45+tax)</div>
  <ul class="list-group">
  <li class="list-group-item">Exterior Wash</li>
  <li class="list-group-item">Rims</li>
 
</ul>
 </div>
        </div>
    <div class="col-sm-6" >
    
<div class = "panel panel-default">
   <div class = "panel-heading">Premium Package ($55+tax)</div>
    <ul class="list-group">
  <li class="list-group-item">Exterior Wash</li>
  <li class="list-group-item">Rims</li>
  <li class="list-group-item">Wax</li>
  
</ul>
   
</div>

        </div>
</div>
              </div>
				</div>
                <div class="tab-pane" id="4a">
          <div class="container-fluid">
  <h2>Full Size Vehicles (Limo, Bus, Truck, Tractor-Trailer)</h2>
              <br />
                  <br />
  <div class="row">
    <div class="col-sm-6" >
      <div class = "panel panel-default">
   <div class = "panel-heading">Basic Package ($55+tax)</div>
  <ul class="list-group">
  <li class="list-group-item">Exterior Wash</li>
  <li class="list-group-item">Rims</li>
 
</ul>
 </div>
        </div>
    <div class="col-sm-6" >
    
<div class = "panel panel-default">
   <div class = "panel-heading">Premium Package ($60+tax)</div>
    <ul class="list-group">
  <li class="list-group-item">Exterior Wash</li>
  <li class="list-group-item">Rims</li>
  <li class="list-group-item">Wax</li>
  
</ul>
   
</div>

        </div>
</div>
			</div>
  </div>
</div>
    </div>
    </div>
 <br />
    
    
    <h2>Are you a business and looking for a quote? Please click<a href="frmBusiness.aspx"> HERE </a>and either E-Mail or call us. We can discuss special rates for coming to your business and washing your employees’ cars.</h2>
<br />
    <br />
    <br />
</asp:Content>
