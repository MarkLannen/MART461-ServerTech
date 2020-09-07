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



    </form>
</body>
</html>
