<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebForms_Task.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="style.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="jumbotron jumbotron-fluid shadow-lg p-3 mb-5 bg-white rounded">
      <div class="container d-flex justify-content-center">
        <h1 class="display-4">ASP.NET Application</h1>
      </div>
  </div>
    <br />
  <div>
    <center>
    <asp:Table ID="tblRegister" runat="server" Font-Size="Medium" CellPadding="5" CellSpacing="5">
        <asp:TableRow ID="tblRow1" runat="server">
            <asp:TableCell><asp:Label ID="lblName" runat="server" Text="Name"></asp:Label></asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtName" ClientIDMode="Static" runat="server"></asp:TextBox>&nbsp;
                 <asp:RequiredFieldValidator ID="reqNameValidator" runat="server" ErrorMessage="Name is required, can't be blank" ControlToValidate="txtName" ForeColor="Red" Text="*" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" ErrorMessage="Name Should Contain Characters only or should be greater than 2 and less than 30 Characters" ValidationExpression="^[a-zA-Z\s]{3,30}$" ControlToValidate="txtName" ForeColor="Red" Text="*" SetFocusOnError="true" Display="Dynamic"></asp:RegularExpressionValidator>
            </asp:TableCell>
        </asp:TableRow>
         <asp:TableRow ID="tblRow2" runat="server">
            <asp:TableCell><asp:Label ID="lblMobile" runat="server" Text="Mobile"></asp:Label></asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtMobile" ClientIDMode="Static" runat="server"></asp:TextBox>&nbsp;
                 <asp:RequiredFieldValidator ID="reqMobileValidator" runat="server" ErrorMessage="Mobile is required, can't be blank" ControlToValidate="txtMobile" ForeColor="Red" Text="*" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" ErrorMessage="Mobile Number Should be Numbers or Have length of 10 Digits" ValidationExpression="^[1-9]{1}[0-9]{9}$" ControlToValidate="txtMobile" ForeColor="Red" Text="*" SetFocusOnError="true" Display="Dynamic"></asp:RegularExpressionValidator>
            </asp:TableCell>
        </asp:TableRow>
         <asp:TableRow ID="tblRow3" runat="server">
            <asp:TableCell><asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label></asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtEmail" ClientIDMode="Static" runat="server"></asp:TextBox>&nbsp;
                 <asp:RequiredFieldValidator ID="reqEmailValidator" runat="server" ErrorMessage="Email is required, can't be blank" ControlToValidate="txtEmail" ForeColor="Red" Text="*" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" ErrorMessage="Email is not valid" ValidationExpression="^[a-zA-Z]{1}[a-zA-Z0-9.]{1,12}[@]{1}[a-zA-Z]{2,10}[.]{1}[a-zA-Z]{2,5}$" ControlToValidate="txtEmail" ForeColor="Red" Text="*" SetFocusOnError="true" Display="Dynamic"></asp:RegularExpressionValidator>
            </asp:TableCell>
        </asp:TableRow>
         <asp:TableRow ID="tblRow4" runat="server">
            <asp:TableCell><asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label></asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtPassword" runat="server" ClientIDMode="Static" TextMode="Password"></asp:TextBox>&nbsp;
                 <asp:RequiredFieldValidator ID="reqPasswordValidator" runat="server" ErrorMessage="Password is required, can't be blank" ControlToValidate="txtPassword" ForeColor="Red" Text="*" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" ErrorMessage="Password should be minimum of 8 and maximum of 16 characters long and should contain at least one number, atleast one lowercase letter , atleast one uppercase letter" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,16})$" ControlToValidate="txtPassword" ForeColor="Red" Text="*" SetFocusOnError="true" Display="Dynamic"></asp:RegularExpressionValidator>
            </asp:TableCell>
        </asp:TableRow>
         <asp:TableRow ID="tblRow5" runat="server">
            <asp:TableCell><asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password"></asp:Label></asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>&nbsp;
                 <asp:RequiredFieldValidator ID="reqConfirmPasswordValidator" runat="server" ErrorMessage="Confirm Password is required, can't be blank" ControlToValidate="txtConfirmPassword" ForeColor="Red" Text="*" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="passwordCompareValidator" runat="server" ErrorMessage="Confirm Password does not match" ControlToValidate="txtPassword" ControlToCompare="txtConfirmPassword" ForeColor="Red" Text="*" SetFocusOnError="true" Display="Dynamic"></asp:CompareValidator>
            </asp:TableCell>
        </asp:TableRow>
         <asp:TableRow ID="tblRow6" runat="server">
            <asp:TableCell><asp:Label ID="lblAge" runat="server" Text="Age"></asp:Label></asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtAge" ClientIDMode="Static" runat="server"></asp:TextBox>&nbsp;
                 <asp:RequiredFieldValidator ID="reqAgeValidator" runat="server" ErrorMessage="Age is required, can't be blank" ControlToValidate="txtAge" ForeColor="Red" Text="*" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" ErrorMessage="Age should be numberic or Invalid Age" ValidationExpression="(?!^[0]*$)^([0-9]{0,2})$" ControlToValidate="txtAge" ForeColor="Red" Text="*" SetFocusOnError="true" Display="Dynamic"></asp:RegularExpressionValidator>
            </asp:TableCell>
        </asp:TableRow>
         <asp:TableRow ID="tblRow7" runat="server">
            <asp:TableCell ColumnSpan="3">
                <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-success" OnClick="Btn_Register" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    </center>
  </div>
  <div>
      <div style="margin-left:500px;">
          <asp:ValidationSummary ID="registerValidationSummary" runat="server" ForeColor="Red" Width="600" CssClass="alert-danger"/>
      </div>
  </div>
<div>
    <asp:Label ID="lblMessage" runat="server" CssClass="h4 d-flex justify-content-center"></asp:Label>
</div>
</asp:Content>
