Public Class Internet
    Private Sub PictureBox1_Click_1(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles PictureBox1.Click
        WebBrowser1.Navigate(TextBox1.Text)
    End Sub
End Class