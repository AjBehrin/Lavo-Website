<%@ Page Title="" Language="C#" MasterPageFile="~/LavoMaster.Master" AutoEventWireup="true" CodeBehind="frmFeedback.aspx.cs" Inherits="WebApplication2.frmFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-center">
    <h2>We’d love to hear how we did! We are always trying to improve and that requires your feedback. It would mean a lot if you a couple minutes out of your day to let us know how we performed <i class="fa fa-flag-checkered"></i></h2>
    <br />    
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

</asp:Content>
