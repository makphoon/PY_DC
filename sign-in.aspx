<%@ Page Language="VB" AutoEventWireup="false" CodeFile="sign-in.aspx.vb" Inherits="sign_in" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <title>Panya Datacenter</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Panya Datacenter,HR Datacenter" />

    <link href="~/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="icon" href="~/images/favicons/favicon-32x32.png" sizes="32x32" type="image/png" />
    <link rel="icon" href="~/images/favicons/favicon-16x16.png" sizes="16x16" type="image/png" />

    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>
    <link href="~/css/signin.css" rel="stylesheet" />
</head>
<body class="text-center">
    <main class="form-signin">
        <form runat="server">
            <img class="mb-4" src="images/PYG_logo.png" alt="" width="150" height="150" />
            <h1 class="h3 mb-3 fw-normal">เข้าสู่ระบบ</h1>

            <div class="form-floating">
                <input type="text" class="form-control" id="floatingInput" placeholder="000628" />
                <label for="floatingInput">รหัสพนักงาน</label>
            </div>
            <div class="form-floating">
                <input type="password" class="form-control" id="floatingPassword" placeholder="Password" />
                <label for="floatingPassword">รหัสผ่าน</label>
            </div>
            <asp:Button class="w-100 btn btn-lg btn-primary" ID="btn_login" runat="server" Text="Sign in" />
            <p class="mt-5 mb-3 text-muted">&copy; Panya Group <%: DateTime.Now.Year %></p>
        </form>
    </main>
</body>
</html>
