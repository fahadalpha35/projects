Public Class Form2
    Private Sub Label2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Form1.Close()
    End Sub
    Private Sub PictureBox1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles PictureBox1.Click
        If TextBox1.Text = "stark" And TextBox2.Text = "1024" Then
            Form3.Show()
        Else
            TextBox1.Clear()
            TextBox2.Clear()
            Warning.Show()
        End If
    End Sub

    Private Sub PictureBox2_Click(sender As System.Object, e As System.EventArgs) Handles PictureBox2.Click

    End Sub
End Class