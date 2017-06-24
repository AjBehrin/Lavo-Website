<%@ Page Title="" Language="C#" MasterPageFile="~/LavoMaster.Master" AutoEventWireup="true" CodeFile="frmStaff.aspx.cs" Inherits="WebApplication2.MeetOurStaff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <style>
        div.img-div{
    height:200px;
    width:200px;
    overflow:hidden;
    border-radius:50%;
}

.img-div img{
    -webkit-transform:translate(-50%);
    margin-left:100px;
}

.circle-image{
    width:200px;
    height:200px;
    border-radius:50%;
    background-image:url("http://placekitten.com/g/200/400");
    display:block;
    background-position-y:25% 
}
    </style>
    <div class="container text-center">

<div class="container">
  <h2>Meet the LAVO team</h2>
  <br>
  
  <!-- Left-aligned media object -->
  <div class="media">
    <div class="media-left">
      <div class="img-div">
<img src="images\alan.png" />
</div>
    </div>
    <div class="media-body">
      <h2 class="media-heading">“<i>I want to create something to help my community and help everyone on their busy schedule so I thought of LAVO and to my surprise no one was doing yet! I’m really glad for the great reception that new yorkers had</i>”-Alen Wat</h2>
      
    </div>
  </div>
  <hr>
 
    

  
  <!-- Right-aligned media object -->
  <div class="media">
    <div class="media-body">
      <h2 class="media-heading">“<i>LAVO ensures that every customer receives the best treatment, I love what I do!</i>”  - Weitny Anderson</h2>  
    </div>
    <div class="media-right">
          <div class="img-div">
<img src="images\Weinty.png" />
</div>
    </div>
  </div>
</div>
          <hr>
   
    <div class="media">
    <div class="media-left">
          <div class="img-div">
<img src="images\Nuno.png" />
</div>
    </div>
    <div class="media-body">
      <h2 class="media-heading">“<i>Leading the development of the Lavo Website and App was a great opportunity to be exposed to a leadership role on the development of IT systems. It was intense due to the tight schedule, but fun!</i>” - Nuno Correia, LAVO IT development team leader</h2>
   
    </div>
  </div>

  <hr>
 <div class="media">
    <div class="media-body">
      <h2 class="media-heading">“<i>Leading the development of the LAVO app and database was a great opportunity to be part of. It was intense to work on the database. However, I was able to finish the database and the app.</i>” - Jonah Reinhardt, LAVO App & Database Developer</h2>
    
    </div>
    <div class="media-right">
          <div class="img-div">
<img src="images\Jonah.png" />
</div>
    </div>
  </div>
 <hr>
         <div class="media">
    <div class="media-left">
          <div class="img-div">
<img src="images\Alex.png" />
</div>
    </div>
    <div class="media-body">
      <h2 class="media-heading">“<i>Developing the LAVO website was truly a great opportunity to contribute as part of the team.I love what I do!</i>” - Alex Behringer, LAVO Website Back-End Developer  </h2>
    
    </div>
  </div>
<hr>
<div class="media">
    <div class="media-body">
      <h2 class="media-heading">“<i>Developing the LAVO website was a great opportunity to work on. I enjoy working on this project.</i>” - Michael Csikos, LAVO Website Front-End Developer</h2>
     
    </div>
    <div class="media-right">
          <div class="img-div">
<img src="images\Michael.png" />
</div>
    </div>
  </div>
<hr>
<div class="media">
    <div class="media-left">
          <div class="img-div">
<img src="images\allen.png" />
</div>
    </div>
    <div class="media-body">
      <h2 class="media-heading">“<i>I am truly humbled of working with these guys. The way they demonstrate things is nicely well done. Down in the future I would highly recommend working with these guys.</i>” - Allen Delrosario, Marketing Director</h2>
 
    </div>
  </div>
<hr>
<div class="media">
    <div class="media-body">
      <h2 class="media-heading">“<i>It was a fun experience helping LAVO and setting up their website. It was a very rewarding experience to help out an actual company compared to class work.</i>” - Steven Biala, Marketing Director</h2>
     
    </div>
    <div class="media-right">
          <div class="img-div">
<img src="images\steven.png" />
</div>
    </div>
  </div>
        </div>


<br />



<div class="container text-center">
  <h2>Anytime, Anywhere!</h2> 
    <br />
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
    <h3>We'll come right to you!</h3>
    <p>Always with a smile and friendly service!</p>
  </div>
</div>
      </div>
    </div>
     <br>
          <br />
          <br>
          <br />
    <br />
    <br />
    <br />
    <br />

   
</asp:Content>
