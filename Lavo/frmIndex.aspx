<%@ Page Title="" Language="C#" MasterPageFile="~/LavoMaster.Master" AutoEventWireup="true" CodeBehind="frmIndex.aspx.cs" Inherits="WebApplication2.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<br
    />



<div class="container-fluid">

<style> .panel info {
            padding: 2px 4px;
        }</style>
<div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title">Who we are....</div>
                        <div style="float:right; font-size: 80%; position: relative; top:-10px"></div>
                    </div>  
    <div class="panel-body"><h2>Welcome to LAVO car wash service! We wash your car while you’re busy at work or enjoying your day. Wash your car when you want it, where you want it and how you want it!</h2>
    
                    <div style="padding-top:30px" class="panel-body" >
</div>                    
 
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
        <li data-target="#myCarousel" data-slide-to="4"></li>
        <li data-target="#myCarousel" data-slide-to="5"></li>
        <li data-target="#myCarousel" data-slide-to="6"></li>
        <li data-target="#myCarousel" data-slide-to="7"></li>
      
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="images\hellcat.png" alt="Hellcat">
      </div>

      <div class="item">
        <img src="images\mercedes.jpg" alt="Mercedes">
      </div>
 
        <div class="item">
        <img src="images\Porsche.jpg" alt="911">
      </div>
         <div class="item">
        <img src="images\Panigale.jpg" alt="Ducati">
      </div>
           <div class="item">
        <img src="images\jeep.jpeg" alt="Jeep">
      </div>
           <div class="item">
        <img src="images\frontier.jpg" alt="Nissan">
      </div>
           <div class="item">
        <img src="images\optima.jpg" alt="Kia">
      </div>
        <div class="item">
        <img src="images\mustang.jpg" alt="Ford">
      </div>
    </div>

<!---This is the caption underneath the slideshow--->
      <div class="carousel-item">
  <div class="carousel-caption d-none d-md-block">
    <h3>Recently Washed Vehicles</h3>
    <p>LAVO will make your ride shine like new again!</p>
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
        </div>
   
   <br />
    <br />
    

<h2>Try our new LAVO app for Android <i class="fa fa-android"></i> , so you can view the status of your order or place a new order from your smartphone or tablet. <small>Click<a href="frmDownload.aspx"> HERE </a>to download today!</small></h2>
   
     <h2>Visit our <a href="frmServices.aspx"> SERVICES </a>page to see the services that we offer and their pricing and leave a give us your feedback after your order is completed so we can attend to your needs, visit the <a href="frmFeedback.aspx"> FEEDBACK </a>page and see also how other customers described their experience with  LAVO.</h2>


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
</asp:Content>
