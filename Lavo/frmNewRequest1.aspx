<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/LavoMaster.Master" AutoEventWireup="true" CodeFile="frmNewRequest1.aspx.cs" Inherits="WebApplication2.frmNewRequest1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server">
        <div class="container text-center">
            <div class="row">

                <style>
                    .control-label {
                        font-family: Calibri;
                        margin-bottom: 0;
                        border: 0;
                        font-size: 20px !important;
                        letter-spacing: 4px;
                        opacity: 0.9;
                    }
                </style>
                <!-- Form code begins -->
                <form method="post">
                    <div class="form-group">
                        <!-- Date input -->

                        <label class="control-label" for="date">Please Enter Wash Date</label>

                        <br />
                        <input runat="server" class="form-control" id="txtDate" name="date" placeholder="MM/DD/YYYY" type="text" />
                    </div>
                    <br />

                    <div class="form-group container text-center">
                        <!-- Message input !-->
                        <label class="control-label " for="region_id">Choose the Time Slot</label>
                        <br />
                        <p><b>IMPORTANT :</b> Please choose a time slot at least two hours in advance to give our washers time to process the order.</p>                      
                        <select runat="server" class="form-control" id="timeSelect" name="timeSelect">
                            <option value="7:00 to 8:00 AM" id="sevenEightAM">7:00 - 8:00 AM</option>
                            <option value="8:00 - 9:00 AM" id="eightNineAM">8:00 - 9:00 AM</option>
                            <option value="9:00 - 10:00 AM" id="nineTenAM">9:00 - 10:00 AM</option>
                            <option value="10:00 - 11:00 AM" id="tenElevenAM">10:00 - 11:00 AM</option>
                            <option value="11:00 - 12:00 PM" id="elevenTwelvePM">11:00 - 12:00 PM</option>
                            <option value="12:00 - 1:00 PM" id="twelveOnePM">12:00 - 1:00 PM</option>
                            <option value="1:00 - 2:00 PM" id="oneTwoPM">1:00 - 2:00 PM</option>
                            <option value="2:00 - 3:00 PM" id="twoThreePM">2:00 - 3:00 PM</option>
                            <option value="3:00 - 4:00 PM" id="threeFourPM">3:00 - 4:00 PM</option>
                            <option value="4:00 - 5:00 PM" id="fourFivePM">4:00 - 5:00 PM</option>

                        </select>
                    </div>

                    <div class="form-group">
                        <!-- Submit button -->

                        <div class="text-center">
                            <asp:LinkButton ID="btnSubmit" runat="server" Text="Button" CssClass="btn btn-warning" OnClick="btnSubmit_ServerClick">Submit <span class="glyphicon glyphicon-send"></span></asp:LinkButton>
                            <!--<button type="submit" class="btn btn-warning" id="btnNext">Submit <span class="glyphicon glyphicon-send"></span></button>-->
                        </div>
                    </div>
                </form>
                <!-- Form code ends -->

            </div>

        </div>
    </form>

</asp:Content>
