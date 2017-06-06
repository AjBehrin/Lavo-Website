<%@ Page Title="" Language="C#" MasterPageFile="~/LavoMaster.Master" AutoEventWireup="true" CodeBehind="frmStaff.aspx.cs" Inherits="WebApplication2.MeetOurStaff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-center">

<div class="container">
  <h2>Meet the LAVO team</h2>
  <br>
  
  <!-- Left-aligned media object -->
  <div class="media">
    <div class="media-left">
      <span class="glyphicon glyphicon-user"></span>
    </div>
    <div class="media-body">
      <h4 class="media-heading">“Why go to the car wash when the car wash can come to you!” - Allen Wat</h4>
      <p>
Allen Wat founded LAVO in 2016. It all started when he invented a solution that not only cleaned cars but also leaves no waste. This solution allows us to come to you and clean your car. 
</p>
    </div>
  </div>
  <hr>
  
  <!-- Right-aligned media object -->
  <div class="media">
    <div class="media-body">
      <h4 class="media-heading">“We care about our customers” - Weitny Anderson</h4>
      <p>Weinty Anderson joined our team in 2016 with the intentions of making every customer experience their best experience. Weitny has had 6 years for customer service experience before joining us.</p>
    </div>
    <div class="media-right">
      <span class="glyphicon glyphicon-user"></span>
    </div>
  </div>
</div>
          <hr>
   
    <div class="media">
    <div class="media-left">
      <span class="glyphicon glyphicon-user"></span>
    </div>
    <div class="media-body">
      <h4 class="media-heading">“” - Nuno Correia</h4>
      <p>
Nuno Correia has attended and graduated from DeVry University. Nuno is in charge of the team and was directly involved in making and maintaining our website and app.
</p>
    </div>
  </div>

  <hr>
 <div class="media">
    <div class="media-body">
      <h4 class="media-heading">“” - Jonah Reinhardt</h4>
      <p>Jonah Reinhardt has attended and graduated from DeVry University. Jonah set up and maintains our database and app.</p>
    </div>
    <div class="media-right">
      <span class="glyphicon glyphicon-user"></span>
    </div>
  </div>
 <hr>
         <div class="media">
    <div class="media-left">
      <span class="glyphicon glyphicon-user"></span>
    </div>
    <div class="media-body">
      <h4 class="media-heading">“” - Alex Behringer </h4>
      <p>
Alex Behringer has attended and graduated from DeVry University. Alex makes sure the website stays up and running.
</p>
    </div>
  </div>
<hr>
<div class="media">
    <div class="media-body">
      <h4 class="media-heading">“” - Michael Csikos</h4>
      <p>Michael Csikos has attended and graduated from DeVry University. Michael implements and designs how the website looks.</p>
    </div>
    <div class="media-right">
      <span class="glyphicon glyphicon-user"></span>
    </div>
  </div>
<hr>
<div class="media">
    <div class="media-left">
      <span class="glyphicon glyphicon-user"></span>
    </div>
    <div class="media-body">
      <h4 class="media-heading">“” - Allen Delrosario</h4>
      <p>
Allen Delrosario has attended and graduated from DeVry University. Allen is in charge of marketing and the content that goes onto our website.
</p>
    </div>
  </div>
<hr>
<div class="media">
    <div class="media-body">
      <h4 class="media-heading">“” - Steven Biala</h4>
      <p>Michael Csikos has attended and graduated from DeVry University. Michael implements and designs how the website looks.</p>
    </div>
    <div class="media-right">
      <span class="glyphicon glyphicon-user"></span>
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
