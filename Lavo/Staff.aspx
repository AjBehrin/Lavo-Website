<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html lang="en">
<head>
  <title>Meet Our Staff</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    
   
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

    <header class="navbar-default navbar-fixed-top">
  
    <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
          
      </button>
      <a class="navbar-brand" href="default.aspx">img</a>
    </div>


    
        
        <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
       
     
        
           
            <!--- This is for the dropdown and button area with popups. Need to simply put this on a new page for services and make it work.

        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Services <span class="glyphicon glyphicon-circle-arrow-down"></span>
          
            
            <ul class="dropdown-menu">
            <li><a href="#"><button onclick="myFunction()"><h2>Basic Wash</h2></button>

<script>
    function myFunction() {
        alert("The Basic Wash info goes here");
    }
</script></a></li>
            <li><a href="#"><button onclick="myFunction()"><h2>Premium Wash</h2></button>

<script>
    function myFunction() {
        alert("The Premium Wash info goes here");
    }
</script></a></li></a></li>
            <li><a href="#"><button onclick="myFunction()"><h2>Deluxe Wash</h2></button>

<script>
    function myFunction() {
        alert("The Deluxe Wash info goes here");
    }
</script></a></li></a></li>
          </ul>
        </li>

       end of code for services ---->
        <li class=""><a href="Download.aspx">Download</a></li>
        <li class=""><a href="Introduction.aspx">Intro</a></li>
        <li class=""><a href="Services.aspx">Services</a></li>
        <li class=""><a href="Staff.aspx">Staff</a></li>
        <li class=""><a href="Feedback.aspx">Feedback</a></li>
        <li class=""><a href="Contact.aspx">Contact</a></li>
      </ul>
            
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign-Up</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
<li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-plus"></span>Wash</a>
          <ul class="dropdown-menu">
            <li><a href="#">Wash my car!</a></li>
            <li><a href="#">View Order</a></li>
              </ul>
            
              <!---  <li><a href="#"><span class="glyphicon glyphicon-plus"></span> New Request</a></li>  -->
        

      </ul>
    </div>
  </div>
</nav></span>
  </div>
</header> 
<br
    />
<div class="container">
  <h3><br>
      <br><div class="container text-center">
            <p><img src ="images\logovan.jpg" style="width:200px;height:150px;"></p>Lavo Car Washing Service <i>~ insert fancy motto here ~</i></h3>
  
</div>

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
      
         
      </div>
    </div>
  </div>
</div>
    </div>
<div class="col-sm-12 form-group">
 <button class="btn btn-default" type="submit">Send</button>
          <div class="container text-center">
              </div></div>

<!--This is the Logo and the Social icons at the bottom of the page
        <div class="container text-center">
            <p><img src ="images\logovan.jpg" style="width:200px;height:150px;"></p> --->
<footer>

  <div>   
      <nav class="navbar navbar-default navbar-fixed-bottom">
  <div class="container text-center">
   <a href="#"><i class="fa fa-facebook"></i></a>
    <a href="#"><i class="fa fa-twitter"></i></a>
    <a href="#"><i class="fa fa-linkedin"></i></a>
    <a href="#"><i class="fa fa-google-plus"></i></a>
    <a href="#"><i class="fa fa-skype"></i></a>
              <p>Copyright, 2017.</p>
  </div>
          </nav>
      </div>
    </footer>         



 <!--- This is the payment checkout   
    <div class="container">
  <form class="form-horizontal" role="form">
    <fieldset>
      <legend>Payment</legend>
      <div class="form-group">
        <label class="col-sm-3 control-label" for="card-holder-name">Name on Card</label>
        <div class="col-sm-9">
          <input type="text" class="form-control" name="card-holder-name" id="card-holder-name" placeholder="Card Holder's Name">
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-3 control-label" for="card-number">Card Number</label>
        <div class="col-sm-9">
          <input type="text" class="form-control" name="card-number" id="card-number" placeholder="Debit/Credit Card Number">
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-3 control-label" for="expiry-month">Expiration Date</label>
        <div class="col-sm-9">
          <div class="row">
            <div class="col-xs-3">
              <select class="form-control col-sm-2" name="expiry-month" id="expiry-month">
                <option>Month</option>
                <option value="01">Jan (01)</option>
                <option value="02">Feb (02)</option>
                <option value="03">Mar (03)</option>
                <option value="04">Apr (04)</option>
                <option value="05">May (05)</option>
                <option value="06">June (06)</option>
                <option value="07">July (07)</option>
                <option value="08">Aug (08)</option>
                <option value="09">Sep (09)</option>
                <option value="10">Oct (10)</option>
                <option value="11">Nov (11)</option>
                <option value="12">Dec (12)</option>
              </select>
            </div>
            <div class="col-xs-3">
              <select class="form-control" name="expiry-year">
                <option value="13">2013</option>
                <option value="14">2014</option>
                <option value="15">2015</option>
                <option value="16">2016</option>
                <option value="17">2017</option>
                <option value="18">2018</option>
                <option value="19">2019</option>
                <option value="20">2020</option>
                <option value="21">2021</option>
                <option value="22">2022</option>
                <option value="23">2023</option>
              </select>
            </div>
          </div>
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-3 control-label" for="cvv">Card CVV</label>
        <div class="col-sm-3">
          <input type="text" class="form-control" name="cvv" id="cvv" placeholder="Security Code">
        </div>
      </div>
      <div class="form-group">
        <div class="col-sm-offset-3 col-sm-9">
          <button type="button" class="btn btn-success">Pay Now</button>
        </div>
      </div>
    </fieldset>
  </form>
</div> --->
   
</body>
</html>