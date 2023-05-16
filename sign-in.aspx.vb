
Partial Class sign_in
    Inherits System.Web.UI.Page

    Private Sub btn_login_Click(sender As Object, e As EventArgs) Handles btn_login.Click
        Session("login") = True
        Session("uname") = "KPM"
        Response.Redirect("default.aspx")
    End Sub
End Class
