
Partial Class sign_in
    Inherits System.Web.UI.Page

    Private Sub btn_login_Click(sender As Object, e As EventArgs) Handles btn_login.Click
        Session("login") = True
        Session("uname") = "คำพัน มากพูน"
        Session("emp_code") = "000001"
        Session("emp_div") = "Computer Division"
        Response.Redirect("default.aspx")
    End Sub
End Class
