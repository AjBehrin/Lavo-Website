<%@ Page Title="" Language="C#" MasterPageFile="~/LavoMaster.Master" AutoEventWireup="true" CodeBehind="frmNewRequest2.aspx.cs" Inherits="WebApplication2.frmNewRequest3" %>
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

<div class="container text-center"><h2>Choose Your Vehicle Size</h2>
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
        <a  href="#1a" data-toggle="tab" id="tabSmall">Small Sized<br /><img src ="images\3.png" style="width:150px;height:100px;"></a>
			</li>

			<li><a href="#2a" data-toggle="tab" id="tabMedium">Medium Sized<br /><img src ="images\2.png" style="width:150px;height:100px;"></a>
			</li>
			<li><a href="#3a" data-toggle="tab" id="tabLarge">Large Sized<br /><img src ="images\4.png" style="width:150px;height:100px;"></a>
			</li>
            <li><a href="#4a" data-toggle="tab" id="tabVeryLong">Very Long<br /><img src ="images\1.png" style="width:150px;height:100px;"></a>
			</li>

    </ul>
<div class="tab-content clearfix">
			  <div class="tab-pane active" id="1a">
          <h2>Sedan & Smaller Vehicles (Hatchback, Motorcycle, Bicycle, ATV, Dirtbike)</h2>

</div>				
		<div class="tab-pane" id="2a">
         <div class="container-fluid">
  <h2>Bigger Vehicles ( SUV, Pickup Truck, Jeep)</h2>
  
</div>
				</div>
        <div class="tab-pane" id="3a">
          <div class="container-fluid">
  <h2>SUV vehicles (Vans, Small Bus, Tractor)</h2>
  
</div>
				</div>
                <div class="tab-pane" id="4a">
          <div class="container-fluid">
  <h2>Full Size Vehicles (Limo, Bus, Truck, Tractor-Trailer)</h2>
  
</div>
				</div>
			</div>
  </div>
</div>
<br />

     <div class="form-group">
             <div class="text-center"><button type="submit" class="btn btn-warning" id="btnNext">Submit <span class="glyphicon glyphicon-send"></span></button>
             </div>
            </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
   


 
</asp:Content>
