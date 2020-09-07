<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Player_Registration.aspx.cs" Inherits="Homework_3_Sept_7_2020_new.Player_Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Griz Esports Player Registration</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
</head>
<body>
    <<div class="container">
        <h1>Player Registration</h1>

        <div class="container">
            <form id="form1" runat="server">
                <%--First name and last name text fields--%>

                <div class="form-row">
                    <div class="form-group col-md-6">
                        <asp:TextBox ID="txtFirstName" runat="server" value="First Name" class="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-6">
                        <asp:TextBox ID="txtLastName" runat="server" value="Last Name" class="form-control"></asp:TextBox>
                    </div>
                </div>



                <%--Street address and City/town--%>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <asp:TextBox ID="txtStreetAddress" runat="server" value="Street Address" class="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-6">
                        <asp:TextBox ID="txtCity" runat="server" value="City/Town" class="form-control"></asp:TextBox>
                    </div>
                </div>

                <%--Country/Phone--%>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <asp:TextBox ID="txtCountry" runat="server" value="Country" class="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-6">
                        <asp:TextBox ID="txtPhone" runat="server" value="Phone" class="form-control"></asp:TextBox>
                    </div>
                </div>

                <%--Email--%>
                <div class="form-row">
                    <asp:TextBox ID="txtEmail" runat="server" value="Email" class="form-control"></asp:TextBox>
                </div>

                <%--Unsubscribe--%>
                <div>
                    <input type="checkbox" id="unsubscribeCheckbox" name="vehicle1" value="Bike"  class="form-control"/>
                    <asp:Label ID="unsubscribe" runat="server" Text="Label" class="form-control">Unsubscribe from marketing emails</asp:Label>
                </div>

                <%--Username and password--%>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <asp:TextBox ID="txtUsername" runat="server" value="Username" class="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-6">
                        <asp:TextBox ID="txtPassword" runat="server" value="Password" class="form-control"></asp:TextBox>
                    </div>
                </div>

                <%--Gamer Tag and Games played--%>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <asp:TextBox ID="txtGamerTag" runat="server" value="Gamer Tag" class="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-6">
                        <asp:TextBox ID="txtGamesPlayed" runat="server" value="Games Played" class="form-control"></asp:TextBox>
                    </div>
                </div>


                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />


            </form>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>
</html>
