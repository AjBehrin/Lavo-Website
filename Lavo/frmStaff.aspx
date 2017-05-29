<%@ Page Title="" Language="C#" MasterPageFile="~/LavoMaster.Master" AutoEventWireup="true" CodeBehind="frmStaff.aspx.cs" Inherits="WebApplication2.MeetOurStaff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-center">

<div class="container">
  <h2>Meet our members or something!</h2>
  <br>
  
  <!-- Left-aligned media object -->
  <div class="media">
    <div class="media-left">
      <span class="glyphicon glyphicon-user"></span>
    </div>
    <div class="media-body">
      <h4 class="media-heading">Our Founder or something</h4>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
    </div>
  </div>
  <hr>
  
  <!-- Right-aligned media object -->
  <div class="media">
    <div class="media-body">
      <h4 class="media-heading">Our manager or something</h4>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
    </div>
    <div class="media-right">
      <span class="glyphicon glyphicon-user"></span>
    </div>
  </div>
</div>
    </div>

<div class="container text-center">
  <h2>Anytime, Anywhere!</h2>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
    
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="images\wash2.png" alt="Member" style="width:100%;">
      </div>

      <div class="item">
        <img src="images\washguylogo.jpg" alt="Staff" style="width:100%;">
      </div>
    
    </div>
<!---This is the caption underneath the slideshow--->
      <div class="carousel-item">
  <div class="carousel-caption d-none d-md-block">
    <h3>We come to you!</h3>
    <p>Always with a smile!</p>
  </div>
</div>
      </div>
     <br>
          <br />
          <br>
          <br />
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
        </div>
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
</div>
</asp:Content>
