Public Class Form3
    Private Sub Label1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Form1.Close()
    End Sub

    Private Sub PictureBox1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles PictureBox1.Click
        Form4.Show()

    End Sub

    Private Sub Label2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Label2.Click
        Shell("C:\Windows\system32\notepad.exe")
        Shell("D:\Windows\system32\notepad.exe")
        Shell("E:\Windows\system32\notepad.exe")
    End Sub

    Private Sub PictureBox2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles PictureBox2.Click
        MessageBox.Show("Thank You For Logining Windows 8")
        Form1.Close()
    End Sub

    Private Sub PictureBox3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles PictureBox3.Click
        Internet.Show()

    End Sub

    Private Sub Label3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Label3.Click
        Shell("C:\Program Files\Mozilla Firefox\firefox.exe")
        Shell("D:\Program Files\Mozilla Firefox\firefox.exe")
        Shell("E:\Program Files\Mozilla Firefox\firefox.exe")
    End Sub

    Private Sub PictureBox4_Click(sender As System.Object, e As System.EventArgs) Handles PictureBox4.Click
        Shell("C:\Windows\system32\mspaint.exe")
        Shell("D:\Windows\system32\mspaint.exe")
        Shell("E:\Windows\system32\mspaint.exe")
    End Sub

    Private Sub Label1_Click_1(sender As System.Object, e As System.EventArgs) Handles Label1.Click
        Shell("C:\Windows\system32\mspaint.exe")
        Shell("D:\Windows\system32\mspaint.exe")
        Shell("E:\Windows\system32\mspaint.exe")
    End Sub

    Private Sub PictureBox5_Click(sender As System.Object, e As System.EventArgs) Handles PictureBox5.Click
        Shell("C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Office\Microsoft Office PowerPoint 2010.lnk")
        Shell("D:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Office\Microsoft Office PowerPoint 2010.lnk")
        Shell("E:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Office\Microsoft Office PowerPoint 2010.lnk")
    End Sub

    Private Sub Label4_Click(sender As System.Object, e As System.EventArgs) Handles Label4.Click
        Shell("C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Office\Microsoft Office PowerPoint 2010.lnk")
        Shell("D:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Office\Microsoft Office PowerPoint 2010.lnk")
        Shell("E:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Office\Microsoft Office PowerPoint 2010.lnk")
    End Sub

    Private Sub PictureBox6_Click(sender As System.Object, e As System.EventArgs) Handles PictureBox6.Click
        Shell("C:\Program Files\Windows Media Player\wmplayer.exe")
        Shell("D:\Program Files\Windows Media Player\wmplayer.exe")
        Shell("E:\Program Files\Windows Media Player\wmplayer.exe")
    End Sub

    Private Sub Label5_Click(sender As System.Object, e As System.EventArgs) Handles Label5.Click
        Shell("C:\Program Files\Windows Media Player\wmplayer.exe")
        Shell("D:\Program Files\Windows Media Player\wmplayer.exe")
        Shell("E:\Program Files\Windows Media Player\wmplayer.exe")
    End Sub

    Private Sub Label6_Click(sender As System.Object, e As System.EventArgs) Handles Label6.Click
        Shell("C:\Program Files\Windows Media Player\wmplayer.exe")
        Shell("D:\Program Files\Windows Media Player\wmplayer.exe")
        Shell("E:\Program Files\Windows Media Player\wmplayer.exe")
    End Sub
End Class
