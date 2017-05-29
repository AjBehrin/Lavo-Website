<%@ Page Title="" Language="C#" MasterPageFile="~/LavoMaster.Master" AutoEventWireup="true" CodeBehind="frmIndex.aspx.cs" Inherits="WebApplication2.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<br
    />
<div class="container">


<div class="container text-center">

<h1>Company Statement, why we are awesome?</h1>


  <h2>Recently Washed Vehicles</h2>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="images\hellcat.png" alt="Hellcat" style="width:100%;">
      </div>

      <div class="item">
        <img src="images\mercedes.jpg" alt="Mercedes" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="images\bentley.png" alt="Bentley" style="width:100%;">
      </div>
 
        <div class="item">
        <img src="images\Porsche.jpg" alt="911" style="width:100%;">
      </div>
         <div class="item">
        <img src="images\firebird.jpg" alt="firebird" style="width:100%;">
      </div>
    </div>
<!---This is the caption underneath the slideshow--->
      <div class="carousel-item">
  <div class="carousel-caption d-none d-md-block">
    <h3>Insert text??</h3>
    <p>Does this need to be here?</p>
  </div>
</div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
    <div class="content">
    </div>
   <br />
    <br />
    <br />
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
</div>
</asp:Content>
