
Partial Class _Default
    Inherits System.Web.UI.Page

    Private Sub _Default_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub

    Private Sub _Default_InitComplete(sender As Object, e As EventArgs) Handles Me.InitComplete
        If Session("login") = False Then
            Response.Redirect("sign-in.aspx")
        End If
    End Sub
End Class
