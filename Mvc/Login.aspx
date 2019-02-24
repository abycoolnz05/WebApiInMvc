<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Mvc.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title></title>
   <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
        <div class="col-md-10 col-md-offset-1">
            <h1> Welcome to the Employee Register Login Page</h1>
            <h3>Please Login or Register to continue..</h3>
            <br />
           <form id="form1" runat="server">
              <div>
                 <button">Log In</button><a class="btn btn success pull right" href="Register.aspx">Register</a>
                 <hr />
                 <asp:PlaceHolder runat="server" ID="LoginStatus" Visible="false">
                    <p>
                       <asp:Literal runat="server" ID="StatusText" />
                    </p>
                 </asp:PlaceHolder>
                 <asp:PlaceHolder runat="server" ID="LoginForm" Visible="false">
                    <div style="margin-bottom: 10px">
                       <asp:Label runat="server" AssociatedControlID="UserName">User name</asp:Label>
                       <div>
                          <asp:TextBox runat="server" ID="UserName" />
                       </div>
                    </div>
                    <div style="margin-bottom: 10px">
                       <asp:Label runat="server" AssociatedControlID="Password">Password</asp:Label>
                       <div>
                          <asp:TextBox runat="server" ID="Password" TextMode="Password" />
                       </div>
                    </div>
                    <div style="margin-bottom: 10px">
                       <div>
                          <asp:Button CssClass="alert-success" runat="server" OnClick="SignIn" Text="Log in" />
                       </div>
                    </div>
                 </asp:PlaceHolder>
                 <asp:PlaceHolder runat="server" ID="LogoutButton" Visible="false">
                    <div>
                       <div>
                          <asp:Button CssClass="alert-danger" runat="server" OnClick="SignOut" Text="Log out" />
                       </div>
                    </div>
                 </asp:PlaceHolder>
              </div>
           </form>
        </div>
</body>
</html>
