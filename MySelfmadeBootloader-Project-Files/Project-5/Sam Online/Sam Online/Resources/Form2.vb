﻿Public Class Form2
    Private Sub Label2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Form1.Close()
    End Sub
    Private Sub PictureBox1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles PictureBox1.Click
        If TextBox1.Text = "samadministrator" And TextBox2.Text = "Rock@9130149" Then
            Form3.Show()
        Else
            TextBox1.Clear()
            TextBox2.Clear()
            Warning.Show()
        End If
    End Sub
End Class