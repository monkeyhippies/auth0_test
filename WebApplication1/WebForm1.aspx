<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <script src="https://cdn.auth0.com/js/lock-6.2.min.js"></script>
<script type="text/javascript">
  var lock = new Auth0Lock('2M7P0OrlDnifR6x8NfkNr3VQsdKsqaMC', 'contoso.auth0.com');
  
  function signin() {
    lock.show({
        callbackURL: 'http://localhost/dummy'
      , responseType: 'code'
      , authParams: {
        scope: 'openid profile'
      }
    });
  }
</script>
<button onclick="signin()">Login</button>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    </div>
        <asp:CheckBox ID="CheckBox1" runat="server" />
    </form>
</body>
</html>
