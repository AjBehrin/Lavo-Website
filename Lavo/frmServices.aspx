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
        <a  href="#1a" data-toggle="tab">Sedan & Compact</a>
			</li>
			<li><a href="#2a" data-toggle="tab">SUV & Pickup</a>
			</li>
			<li><a href="#3a" data-toggle="tab">Van & Truck</a>
			</li>
    <li><a href="#4a" data-toggle="tab">Limo & Bus</a>
			</li>

    </ul>
    
  		
		

			<div class="tab-content clearfix">
			  <div class="tab-pane active" id="1a">
          <h3>Insert Sedan & Compact info</h3>

				</div>
				<div class="tab-pane" id="2a">
          <h3>Insert SUV & Pickup info</h3>
				</div>
        <div class="tab-pane" id="3a">
          <h3>Insert Van & Truck info</h3>
				</div>
                <div class="tab-pane" id="4a">
          <h3>Insert Limo & Bus info</h3>
				</div>
			</div>
  </div>
</div>
    <!-- Container (Contact Section) -->
<div id="contact" class="container-fluid bg-grey">
    <div class="container text-center">
  <h2 class="text-center">Contact Us</h2>
  <div class="row">
    <div class="col-sm-5">
      <p>Contact us and we'll get back to you within the hour</p>
      <p><span class="glyphicon glyphicon-map-marker"></span> Someplace, New York</p>
      <p><span class="glyphicon glyphicon-phone"></span> +00 1515151515</p>
      <p><span class="glyphicon glyphicon-envelope"></span> LavoCarWash@something.com</p>
         <div class="col-sm-12 form-group">
 <button class="btn btn-default" type="submit">Send</button>
          <div class="container text-center">
              </div></div>
    </div>
    <div class="col-sm-7 slideanim">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
      <div class="row">
      <br />
          <br>
          <br />
          <br>
          <br />
         
      </div>
    </div>
  </div>
</div>
    </div>
<div class="col-sm-12 form-group">
 </div>
</asp:Content>
