<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Player_Login.aspx.cs" Inherits="Homework_3_Sept_7_2020_new.Player_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Griz Esports Player Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
    <link href="Styles.css" rel="stylesheet" />
</head>
<body>
    <<div class="container">
        <h1 class="row justify-content-center">Player Login</h1>

        <form id="form1" runat="server">

            <%--Username and password--%>

            <div class="form-row justify-content-center">
                <div class="form-group col-md-4">
                    <asp:TextBox ID="txtUsername" runat="server" value="Username" class="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-row justify-content-md-center">
                <div class="form-group col-md-4">
                    <asp:TextBox ID="txtPassword" runat="server" value="Password" class="form-control"></asp:TextBox>
                </div>
            </div>


            <%--Login Button--%>


            <div class="form-row justify-content-center">
                <div class="form-group col-md-6">
                    <asp:Button ID="btnSubmit" runat="server" Text="Login" OnClick="btnSubmit_Click" class="form-control" />
                </div>
            </div>

        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>
</html>
