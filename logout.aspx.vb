
Partial Class logout
    Inherits System.Web.UI.Page

    Private Sub logout_Load(sender As Object, e As EventArgs) Handles Me.Load
        Session("login") = False
        Session("uname") = ""
        Response.Redirect("~/sign-in.aspx")
    End Sub
End Class
