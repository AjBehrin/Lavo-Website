<%@ Page Title="" Language="C#" MasterPageFile="~/LavoMaster.Master" AutoEventWireup="true" CodeBehind="frmNewRequest1.aspx.cs" Inherits="WebApplication2.frmNewRequest1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  
 <div class="container text-center">
  <div class="row">
   
<style>.control-label {
            font-family: Calibri;
            margin-bottom: 0;  
            border: 0;
            font-size: 20px !important;
            letter-spacing: 4px;
            opacity: 0.9;
        }</style>
    <!-- Form code begins -->
    <form method="post">
      <div class="form-group"> <!-- Date input -->

        <label class="control-label" for="date">Please Enter Wash Date</label>
        
        <br />
        <input class="form-control" id="date" name="date" placeholder="MM/DD/YYYY" type="text"/>
      </div>
       
      <div class="form-group"> <!-- Submit button -->
        <div class="text-center"><button type="submit" class="btn btn-warning" id="btnNext">Submit <span class="glyphicon glyphicon-send"></span></button>
             </div>
          </div>
     </form>
     <!-- Form code ends --> 

    </div>
     
 </div>

</asp:Content>
