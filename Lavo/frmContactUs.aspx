<%@ Page Title="" Language="C#" MasterPageFile="~/LavoMaster.Master" AutoEventWireup="true" CodeFile="frmContactUs.aspx.cs" Inherits="WebApplication2.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="row">
    <div class="container text-center">
      <h2>If you have any questions about services, have experienced any problems requesting a service, or a business looking for a quote please contact us via E-Mail or Phone</h2>
        <br />
      <p><span class="glyphicon glyphicon-map-marker"></span> 1534 Selwyn Ave</p>
      <p>#1k Bronx, New York 10457</p>
      <p><span class="glyphicon glyphicon-phone"></span> (888)-271-2711</p>
      <p><span class="glyphicon glyphicon-envelope"></span> email@lavo.net</p>
        <p><span class="glyphicon glyphicon-hourglass"></span> Hours</p>
    Monday-Friday: 9am-5pm<strong>|</strong>Saturday: By appointment only<strong>|</strong>Sunday: Closed
 
        </div>
    </div>
                 
  <div class="container-fluid">
                <div class="row-fluid" >
                   
                      
                     <div class="container text-center">
                      <h2>Or simply send us a message below!</h2>
                       
                            <hr>
                           

                                <form class="form-horizontal" action=" " method="" id="contact_form">
                                    <fieldset>
                                        <!-- Form Name -->


                                        <!-- Text input-->

                                        <div class="form-group">

                                            <div class="col-md-12">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                    <input name="first_name" placeholder="Name" class="form-control" type="text">
                                                </div>
                                            </div>
                                        </div>


                                  
                                        <!-- Text input-->
                                        <div class="form-group">

                                            <div class="col-md-12">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                                    <input name="email" placeholder="E-Mail Address" class="form-control" type="text">
                                                </div>
                                            </div>
                                        </div>


                                        <!-- Text input-->

                                        <div class="form-group">

                                            <div class="col-md-12">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                                                    <input name="phone" placeholder="(123)-456-7890" class="form-control" type="text">
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Text input-->

                                        <div class="form-group">

                                            <div class="col-md-12 inputGroupContainer">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                                                    <textarea class="form-control" name="comment" placeholder="Message"></textarea>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group">

                                            <div class="col-md-12">
                                                <div class="text-center"><button type="submit" class="btn btn-warning">Send <span class="glyphicon glyphicon-send"></span></button>
                                            </div>
                                                </div>
                                        </div>

                                    </fieldset>
                                </form>
                    </div> 
</div>
      </div>
    <div class="text-center"><h5>If you have a suggestion or complaint please click<a href="frmFeedback.aspx"> HERE </a>and fill out our Feedback form</h5></div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />


</asp:Content>
