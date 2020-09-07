<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Assignment_3_Sept_7_2020.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Player Registration</h1>
        <%--First name and last name text fields--%>
        <div>
            <asp:TextBox ID="txtFirstName" runat="server" value="First Name"></asp:TextBox>
            <asp:TextBox ID="txtLastName" runat="server" value="Last Name"></asp:TextBox>
        </div>

          <%--Street address and City/town--%>
        <div>
            <asp:TextBox ID="txtStreetAddress" runat="server" value="Street Address"></asp:TextBox>
            <asp:TextBox ID="txtCity" runat="server" value="City/Town"></asp:TextBox>
        </div>

         <%--Country/Phone--%>
        <div>
            <asp:TextBox ID="txtCountry" runat="server" value="Country"></asp:TextBox>
            <asp:TextBox ID="txtPhone" runat="server" value="Phone"></asp:TextBox>
        </div>

         <%--Email--%>
        <div>
            <asp:TextBox ID="txtEmail" runat="server" value="Email"></asp:TextBox>
        </div>

         <%--Unsubscribe--%>
        <div>
            <input type="checkbox" id="unsubscribe" name="vehicle1" value="Bike">
            <asp:Label ID="unsubscribe" runat="server" Text="Label">Unsubscribe from marketing emails</asp:Label>            
        </div>  

         <%--Username and password--%>
        <div>
            <asp:TextBox ID="txtUsername" runat="server" value="Username"></asp:TextBox>
            <asp:TextBox ID="txtPassword" runat="server" value="Password"></asp:TextBox>
        </div>

         <%--Gamer Tag and Games played--%>
        <div>
            <asp:TextBox ID="txtGamerTag" runat="server" value="Gamer Tag"></asp:TextBox>
            <asp:TextBox ID="txtGamesPlayed" runat="server" value="Games Played"></asp:TextBox>
        </div>
        

        <asp:Button ID="btnSubmit" runat="server" Text="Submit" />

    </form>
</body>
</html>
