<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/LavoMaster.Master" AutoEventWireup="true" CodeFile="frmLogin.aspx.cs" Inherits="WebApplication2.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">    
        <form runat="server">
            <br />
            <asp:Label ID="lblErrorMessage" runat="server"></asp:Label>
            <br />
            <div id="loginbox" style="margin-top: 50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <div class="panel-title">Sign In</div>
                        <div style="float: right; font-size: 80%; position: relative; top: -10px"><a href="#">Forgot password?</a></div>
                    </div>

                    <div style="padding-top: 30px" class="panel-body">

                        <div style="display: none" id="login-alert" class="alert alert-danger col-sm-12"></div>

                        <form id="loginform" class="form-horizontal" role="form">

                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input id="txtLoginEmail" runat="server" type="text" class="form-control" name="username" value="" placeholder="username or email">
                            </div>

                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <input id="txtLoginPassword" runat="server" type="password" class="form-control" name="password" placeholder="password">
                            </div>

                            <asp:CheckBox ID="chkRememberMe" runat="server" Text="Remember me" ></asp:CheckBox>   

                            <div style="margin-top: 10px" class="form-group">
                                <!-- Button -->

                                <div class="col-sm-12 controls">
                                    <asp:LinkButton ID="btnLogin" runat="server" Text="Button" CssClass="btn btn-warning" OnClick="btnLogin_ServerClick">Login <span class="glyphicon glyphicon-user"></span></asp:LinkButton>


                                </div>
                            </div>


                            <div class="form-group">
                                <div class="col-md-12 control">
                                    <div style="border-top: 1px solid#888; padding-top: 15px; font-size: 85%">
                                        Don't have an account! 
                                        <a href="#" onclick="$('#loginbox').hide(); $('#signupbox').show()">Sign Up Here
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <asp:Label ID="lblAnswer" runat="server"></asp:Label>

                        </form>



                    </div>
                </div>
            </div>
            <div id="signupbox" style="display: none; margin-top: 50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <div class="panel-title">Sign Up</div>
                        <div style="float: right; font-size: 85%; position: relative; top: -10px"><a id="signinlink" href="#" onclick="$('#signupbox').hide(); $('#loginbox').show()">Sign In</a></div>
                    </div>
                    <div class="panel-body">
                        <form id="signupform" class="form-horizontal" role="form">

                            <div id="signupalert" style="display: none" class="alert alert-danger">
                                <p>Error:</p>
                                <span></span>
                            </div>

                            <!--- this is the sign up section---->

                            <div class="form-group">
                                <label for="email" class="col-md-3 control-label">Email</label>
                                <div class="col-md-9">
                                    <input type="text" runat="server" class="form-control" name="email" placeholder="Email Address" id="txtSignupEmail">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="password" class="col-md-3 control-label">Password</label>
                                <div class="col-md-9">
                                    <input type="password" runat="server" class="form-control" name="passwd" placeholder="Password" id="txtSignupPassword">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="reapeatPassword" class="col-md-3 control-label">Repeat Password</label>
                                <div class="col-md-9">
                                    <input type="password" runat="server" class="form-control" name="passwd" placeholder="Password" id="txtSignupPassword2">
                                </div>
                            </div>
                            <br />

                            <div class="form-group">
                                <label for="firstname" class="col-md-3 control-label">Name</label>
                                <div class="col-md-9">
                                    <input type="text" runat="server" class="form-control" name="firstname" placeholder="First & Last" id="txtName">
                                </div>

                            </div>
                            <div class="form-group">
                                <label for="lastname" class="col-md-3 control-label">Company</label>
                                <div class="col-md-9">
                                    <input type="text" runat="server" class="form-control" name="lastname" placeholder="Company Name" id="txtCompany">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="lastname" class="col-md-3 control-label">Address</label>
                                <div class="col-md-9">
                                    <input type="text" runat="server" class="form-control" name="lastname" placeholder="Mailing Address" id="txtAddress">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="lastname" class="col-md-3 control-label">City</label>
                                <div class="col-md-9">
                                    <input type="text" runat="server" class="form-control" name="lastname" placeholder="City" id="txtCity">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="lastname" class="col-md-3 control-label">State</label>
                                <div class="col-md-9">
                                    <input type="text" runat="server" class="form-control" name="lastname" placeholder="State (i.e. IL)" id="txtState" maxlength="2">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="lastname" class="col-md-3 control-label">Zip Code</label>
                                <div class="col-md-9">
                                    <input type="text" runat="server" class="form-control" name="lastname" placeholder="Zip Code" id="txtZipcode">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="lastname" class="col-md-3 control-label">Phone</label>
                                <div class="col-md-9">
                                    <input type="text" runat="server" class="form-control" name="lastname" placeholder="Phone #" id="txtPhone">
                                </div>
                            </div>

                            <asp:CheckBox ID="chkPromotions" runat="server" Text="I wish to receive e-mails with promotions"></asp:CheckBox>
                            <br />
                            <br />

                            <div class="form-group">
                                <!-- Button -->
                                <div class="col-md-offset-3 col-md-9">
                                    <asp:LinkButton ID="btnSignUp" runat="server" Text="Button" CssClass="btn btn-warning" OnClick="btnSignUp_ServerClick">Sign Up <span class="glyphicon glyphicon-pencil"></span></asp:LinkButton>

                                </div>
                            </div>
                            
                        </form>
                    </div>
                </div>





            </div>
            <br />
            <br />
            <br />
            <br />
        </form>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
