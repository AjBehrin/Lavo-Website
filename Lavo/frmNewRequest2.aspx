<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/LavoMaster.Master" AutoEventWireup="true" CodeFile="frmNewRequest2.aspx.cs" Inherits="WebApplication2.frmNewRequest3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        h2 {
            font-family: Calibri;
            margin-bottom: 0;
            border: 0;
            font-size: 20px !important;
            letter-spacing: 4px;
            opacity: 0.9;
        }
    </style>

    <form runat="server">
        <div class="container text-center">
            <h2>Vehicle Package Descriptions</h2>
            <br />
            <div id="exTab1" class="container">
                <ul runat="server" class="nav nav-pills" id="tabs">
                    <li class="active">
                        <style>
                            .area {
                                border: 2px solid #9A9A9A;
                                border-radius: 3px;
                                background-color: #FFFFFF;
                                height: 70%;
                                width: 100%;
                                margin: auto;
                                margin-bottom: 20px;
                                overflow-y: auto;
                                overflow-x: hidden;
                                text-align: center;
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
                        <a href="#1a" runat="server" data-toggle="tab" id="tabSmall">Small Sized<br />
                            <img src="images\3.png" style="width: 150px; height: 100px;"></a>
                    </li>

                    <li><a href="#2a" runat="server" data-toggle="tab" id="tabMedium">Medium Sized<br />
                        <img src="images\2.png" style="width: 150px; height: 100px;"></a>
                    </li>
                    <li><a href="#3a" runat="server" data-toggle="tab" id="tabLarge">Large Sized<br />
                        <img src="images\4.png" style="width: 150px; height: 100px;"></a>
                    </li>
                    <li><a href="#4a" runat="server" data-toggle="tab" id="tabVeryLong">Very Long<br />
                        <img src="images\1.png" style="width: 150px; height: 100px;"></a>
                    </li>

                </ul>
                <div class="tab-content clearfix">
                    <div class="tab-pane active" id="1a">
                        <h2>Sedan & Smaller Vehicles (Hatchback, Motorcycle, Bicycle, ATV, Dirtbike)</h2>

                    </div>
                    <div class="tab-pane" id="2a">
                        <div class="container-fluid">
                            <h2>Bigger Vehicles ( SUV, Pickup Truck, Jeep)</h2>

                        </div>
                    </div>
                    <div class="tab-pane" id="3a">
                        <div class="container-fluid">
                            <h2>SUV vehicles (Vans, Small Bus, Tractor)</h2>

                        </div>
                    </div>
                    <div class="tab-pane" id="4a">
                        <div class="container-fluid">
                            <h2>Full Size Vehicles (Limo, Bus, Truck, Tractor-Trailer)</h2>

                        </div>
                    </div>
                </div>
            </div>
            <br />

            <h2>Choose Vehicle Size Here</h2>
            <br />
            <div class="form-group container text-center">
                <!-- Message input !-->
                <label class="control-label " for="region_id">Choose Your Package</label>
                <br />
                <select runat="server" class="form-control" id="sizeSelect" name="sizeSelect">
                    <option value="Small" id="dropdownSmall">Small</option>
                    <option value="Medium" id="dropdownMedium">Medium</option>
                    <option value="Large" id="dropdownLarge">Large</option>
                    <option value="Very Long" id="dropdownVeryLong">Very Long</option>
                </select>
            </div>

            <br />
            <br />
            <form class="form-horizontal">
                <fieldset>

                    <!-- Vehicle Information Form -->
                    <h2>Please Enter Your Vehicle Information</h2>
                    <br />

                    <div class="control-group">
                        <label class="control-label">Vehicle Plate Number</label>
                        <div class="controls">
                            <input runat="server" id="txtVehicleNumber" name="VehiclePlate" type="text" placeholder="Plate Number"
                                class="input-xlarge">
                        </div>
                    </div>
                    <br />
                    <!-- Vehicle State Input-->
                    <div class="control-group">
                        <label class="control-label">Vehicle Plate State</label>
                        <div class="controls">
                            <input runat="server" id="txtVehicleState" name="VehicleState" type="text" placeholder="Plate State"
                                class="input-xlarge">
                        </div>
                    </div>
                    <br />
                    <!-- Vehicle Model Information-->
                    <div class="control-group">
                        <label class="control-label">Vehicle Year, Make, and Model</label>
                        <div class="controls">
                            <input runat="server" id="txtVehicleModel" name="VehicleModel" type="text" placeholder="i.e. 2010 Dodge Charger" class="input-xlarge">
                            <p class="help-block"></p>
                        </div>
                    </div>

                </fieldset>
            </form>

        </div>

        <br />

        <div class="form-group">
            <div class="text-center">
                <asp:LinkButton ID="btnSubmit" runat="server" Text="Button" CssClass="btn btn-warning" OnClick="btnSubmit_ServerClick">Submit <span class="glyphicon glyphicon-send"></span></asp:LinkButton>
                <!--<button runat="server" type="submit" class="btn btn-warning" id="btnNext">Submit <span class="glyphicon glyphicon-send"></span></button>-->
            </div>
        </div>
    </form>
    <br />
    <br />
    <br />
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
