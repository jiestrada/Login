<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Login_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login jQuery y CSS con ASP.NEt</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="acceso.css" rel="stylesheet" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
    </script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#login-trigger').click(function () {
                $(this).next('#login-content').slideToggle();
                $(this).toggleClass('active');

                if ($(this).hasClass('active')) $(this).find('span').html('&#x25B2;')
                else $(this).find('span').html('&#x25BC;')
            })
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav>
                <ul>
                    <li id="login">
                        <a id="login-trigger" href="#">Entrar<span>▼</span>
                        </a>
                        <div id="login-content">

                            <fieldset id="inputs">
                                <asp:TextBox ID="txtUserName" runat="server" placeholder="Dirección Email" type="email" required></asp:TextBox>
                                <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" placeholder="Password" required></asp:TextBox>
                            </fieldset>
                            <fieldset id="actions">
                                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="submit"></asp:Button>
                                <asp:CheckBox ID="chkRemember" runat="server" Checked="true"></asp:CheckBox>Rocardar cuenta
                            </fieldset>
                            <a href="#" style="float: right;">Olvidaste tu contraseña?</a>
                        </div>

                    </li>
                    <li id="signup">
                        <a href="#">Sign up</a>
                    </li>
                </ul>
            </nav>
        </div>
    </form>
</body>
</html>
