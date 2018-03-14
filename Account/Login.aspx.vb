Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        RegisterHyperLink.NavigateUrl = "Register.aspx?ReturnUrl=" + HttpUtility.UrlEncode(Request.QueryString("ReturnUrl"))
    End Sub

    Private Sub LoginButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LoginButton.Click
        Dim sqlConn As New SqlConnection
        Dim command As New SqlCommand
        sqlConn.ConnectionString = "data source=VIJAYAHLAWAT-PC\SQLEXPRESS; Database=OnlineExam; User Id=sa;Password=Vijay@123"
        command = New SqlCommand()
        command.CommandType = CommandType.StoredProcedure
        command.CommandText = "USER_LOGIN"
        command.Parameters.Add("@P_STUDENT_ID", SqlDbType.VarChar).Value = txtUserName.Text.ToString
        command.Connection = sqlConn
        Try
            sqlConn.Open()
            Dim str As String
            str = command.ExecuteScalar()
            Dim a As String = str.Trim()
            Dim p As String = txtPassword.Text
            If (p = a) Then
                MsgBox("Success")
                Response.Redirect("~/Account/Register.aspx")
            Else
                Response.Write("<script>alert('invalid credentials')</script>")
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            sqlConn.Close()
        End Try
    End Sub
End Class