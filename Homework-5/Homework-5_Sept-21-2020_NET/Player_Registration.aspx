<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Player_Registration.aspx.cs" Inherits="Homework_5_Sept_21_2020_NET.Player_Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Griz Esports Player Registration</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
    <link href="Styles.css" rel="stylesheet" />
</head>
<body class="pb-5">
    <%--  Label for Welcome message --%>
    <div class="container">
        <div class="mt-5 mb-4">
            <asp:Label ID="lblPlayerWelcome" runat="server" Text="" CssClass="text-white"></asp:Label><br />
            <asp:Label ID="lblGamesPlayed" runat="server" Text="" CssClass="text-white"></asp:Label>
        </div>
    </div>


    <div class="container">
        <h1>Player Registration</h1>
    </div>


    <div class="container text-white">
        <form id="form1" runat="server">
            <%--First name and last name text fields--%>

            <div class="form-row">
                <div class="form-group col-md-6">
                    <asp:Label ID="Label4" runat="server" Text="" AssociatedControlId="txtFirstName">First Name</asp:Label>
                    <asp:TextBox ID="txtFirstName" runat="server" value="" class="form-control"></asp:TextBox>
                </div>
                <div class="form-group col-md-6">
                    <asp:Label ID="Label5" runat="server" Text="" AssociatedControlId="txtLastName">Last Name</asp:Label>
                    <asp:TextBox ID="txtLastName" runat="server" value="" class="form-control"></asp:TextBox>
                </div>
            </div>



            <%--Street address and City/town--%>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <asp:Label ID="Label6" runat="server" Text="" AssociatedControlId="txtStreetAddress">Street Address</asp:Label>
                    <asp:TextBox ID="txtStreetAddress" runat="server" value="" class="form-control"></asp:TextBox>
                </div>
                <div class="form-group col-md-6">
                    <asp:Label ID="Label11" runat="server" Text="" AssociatedControlId="txtCity">City/Town</asp:Label>
                    <asp:TextBox ID="txtCity" runat="server" value="" class="form-control"></asp:TextBox>
                </div>
            </div>

            <%--Country/Phone--%>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <asp:Label ID="Label7" runat="server" Text="" AssociatedControlId="txtCountry">Country</asp:Label>
                    <asp:TextBox ID="txtCountry" runat="server" value="Country" class="form-control"></asp:TextBox>
                </div>
                <div class="form-group col-md-6 text-white">
                    <asp:Label ID="Label2" runat="server" Text="" AssociatedControlId="txtPhone">Phone</asp:Label>
                    <asp:TextBox ID="txtPhone" runat="server" value="" class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Phone Number Required" ControlToValidate="txtPhone"></asp:RequiredFieldValidator>
                </div>
            </div>

            <%--Email--%>
            <div class="form-row">
                <asp:Label ID="Label3" runat="server" Text="" AssociatedControlId="txtEmail">Email</asp:Label>
                <asp:TextBox ID="txtEmail" runat="server" value="" class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Email Required" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>

            </div>

            <%--Unsubscribe--%>
            <div class="mt-3 mb-4">
                <input type="checkbox" id="unsubscribeCheckbox" name="" value="" />
                <asp:Label class="text-white" ID="unsubscribe" runat="server" Text="Label">Unsubscribe from marketing emails</asp:Label>
            </div>

            <%--Agree to Code of Conduct--%>
            <div class="mt-3 mb-4">
                <input type="checkbox" id="cbCodeConduct" name="" value="" />
                <asp:Label class="text-white" ID="Label1" runat="server" Text="Label">I agree to the Student Code of Conduct.</asp:Label>
<%--                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Required" ControlToValidate="cbCodeConduct"></asp:RequiredFieldValidator>--%>
            </div>


            <%--Username and password--%>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <asp:Label ID="Label8" runat="server" Text="" AssociatedControlId="txtUserName">User Name</asp:Label>
                    <asp:TextBox ID="txtUsername" runat="server" value="" class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* User Name required" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group col-md-6">
                    <asp:Label ID="Label9" runat="server" Text="" AssociatedControlId="txtPassword">Password</asp:Label>
                    <asp:TextBox ID="txtPassword" runat="server" value="" class="form-control"></asp:TextBox>
                </div>
            </div>

            <%--Gamer Tag and Games played--%>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <asp:Label ID="Label10" runat="server" Text="" AssociatedControlId="txtGamerTag">Gamer Tag</asp:Label>
                    <asp:TextBox ID="txtGamerTag" runat="server" value="" class="form-control"></asp:TextBox>
                </div>
            </div>
            <h2 class="text-white">Games Played</h2>
            <div class="form-row">
                <div class="form-group col-md-6 text-white">
                    <asp:CheckBox ID="cbSolitaire" runat="server" Text="   Solitaire" /></br>
                    <asp:CheckBox ID="cbTetris" runat="server" Text="   Tetris" /></br>
                    <asp:CheckBox ID="cbPong" runat="server" Text="   Pong" /></br>
                </div>

            </div>

            <div>
                <asp:Button ID="btnSubmit" runat="server" Text="REGISTER" OnClick="btnSubmit_Click" class="form-control" />

            </div>

        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>
</html>
