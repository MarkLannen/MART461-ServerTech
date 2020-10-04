<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Sept17MART461.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:GridView ID="gvSubjects" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <div>
            <p>Which movies do you like?</p>
            
            <asp:CheckBox ID="chkMovie1" runat="server" Text="Avengers" />
            <br />
            <asp:CheckBox ID="chkMovie2" Text="Captain America" runat="server" />
            <br />
            <asp:CheckBox ID="chkMovie3" runat="server" Text="Spiderman" />
            <br />
            <br />
            <asp:Button ID="btnCheckboxes" runat="server" Text="Get my choices" OnClick="btnCheckboxes_Click" />

            <br />
            <br />
            <br />
            <asp:Label ID="lblMovies" runat="server"></asp:Label>


            <p>What food do I like?</p>
            <asp:RadioButton ID="rbTaco" runat="server" Text="Taco" GroupName="Food" /><br />
            <asp:RadioButton ID="rbBurrito" runat="server" Text="Burrito"  GroupName="Food"/><br />
            <asp:RadioButton ID="rbPizza" runat="server" Text="Pizza" GroupName="Food" /><br />
            <asp:Button ID="btnFood" runat="server" Text="Submit Food" OnClick="btnFood_Click" />
            <br />
            <asp:Label ID="lblFood" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ESportsTutoringConnectionString %>" SelectCommand="SELECT * FROM [Subjects]"></asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="SubjectID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="SubjectID" HeaderText="SubjectID" InsertVisible="False" ReadOnly="True" SortExpression="SubjectID" />
                    <asp:BoundField DataField="SubjectName" HeaderText="SubjectName" SortExpression="SubjectName" />
                    <asp:CheckBoxField DataField="Active" HeaderText="Active" SortExpression="Active" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
