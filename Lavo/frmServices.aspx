<%@ Page Title="" Language="C#" MasterPageFile="~/LavoMaster.Master" AutoEventWireup="true" CodeBehind="frmServices.aspx.cs" Inherits="WebApplication2.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container text-center"><h1>Affordable Pricing dependant upon Vehicle Size:</h1>
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
          <h2>Sedan and smaller vehicles (hatchback, motorcycle, bicycle, ATV, dirtbike, etc.)</h2>
  <div class="row">
    <div class="col-sm-6" style="background-color:cyan;">
      <p>Basic package 25$+tax:
Exterior wash
Rims
</p>
    </div>
    <div class="col-sm-6" style="background-color:darkcyan;">
      <p>Premium package 35$ +tax:
Exterior wash
Rims
Wax
Interior Cleaning (optional)

</p>
        </div>
</div>
</div>				
		<div class="tab-pane" id="2a">
         <div class="container-fluid">
  <h2>Bigger Vehicles ( SUV, pickup truck, jeep)</h2>
  <div class="row">
    <div class="col-sm-6" style="background-color:cyan;">
      <p>Basic package 60$+tax:
Exterior wash
Rims
</p>
    </div>
    <div class="col-sm-6" style="background-color:darkcyan;">
      <p>Premium package 80$+tax;
Exterior wash
 Rims
 Wax
Interior Cleaning (optional)
</p>
    </div>
  </div>
</div>
				</div>
        <div class="tab-pane" id="3a">
          <div class="container-fluid">
  <h2>SUV vehicles (Vans, Small bus, tractor)</h2>
  <div class="row">
    <div class="col-sm-6" style="background-color:cyan;">
      <p>Basic package 70$+tax:
Exterior wash
Rims
</p>
    </div>
    <div class="col-sm-6" style="background-color:darkcyan;">
      <p>Premium Package 90$+tax:
Exterior wash
Rims
Wax
Interior Cleaning (optional)
</p>
    </div>
  </div>
</div>
				</div>
                <div class="tab-pane" id="4a">
          <div class="container-fluid">
  <h2>Full Size Vehicles (limousine, bus, truck, tractor-trailer)</h2>
  <div class="row">
    <div class="col-sm-6" style="background-color:cyan;">
      <p>Basic Package 80$+tax:
Exterior wash
Rims
</p>
    </div>
    <div class="col-sm-6" style="background-color:darkcyan;">
      <p>Premium Package 100$+tax:
Exterior wash
 Rims
 Wax
Interior Cleaning (optional)</p>
    </div>
  </div>
</div> 
				</div>
			</div>
  </div>
</div>
 <br />
    <br />
    <br />
    <br />

</asp:Content>
