Public Class Form4

    Private Sub NewToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles NewToolStripMenuItem.Click
        RichTextBox1.Clear()
        MessageBox.Show("Here Is Your New Stark Notepad")
    End Sub

    Private Sub OpenToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles OpenToolStripMenuItem.Click
        Dim dlg As OpenFileDialog = New OpenFileDialog
        dlg.Title = "Open"
        dlg.Filter = "Rich Text Files (*.rtf)|*.rtf"
        If dlg.ShowDialog() = System.Windows.Forms.DialogResult.OK Then
            RichTextBox1.LoadFile(dlg.FileName)
        End If
    End Sub

    Private Sub SaveToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SaveToolStripMenuItem.Click
        Dim dlg As SaveFileDialog = New SaveFileDialog
        dlg.Title = "Save"
        dlg.Filter = "Rich Text Files (*.rtf)|*.rtf"
        If dlg.ShowDialog() = System.Windows.Forms.DialogResult.OK Then
            RichTextBox1.SaveFile(dlg.FileName, RichTextBoxStreamType.RichText)
        End If
    End Sub

    Private Sub UndoToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles UndoToolStripMenuItem.Click
        RichTextBox1.Undo()
    End Sub

    Private Sub RedoToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RedoToolStripMenuItem.Click
        RichTextBox1.Redo()
    End Sub

    Private Sub CutToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles CutToolStripMenuItem.Click
        RichTextBox1.Cut()
    End Sub

    Private Sub CopyToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles CopyToolStripMenuItem.Click
        RichTextBox1.Copy()
    End Sub

    Private Sub PastToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles PastToolStripMenuItem.Click
        RichTextBox1.Paste()
    End Sub

    Private Sub FontToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles FontToolStripMenuItem.Click
        Dim dlg As FontDialog = New FontDialog
        dlg.Font = RichTextBox1.Font
        If dlg.ShowDialog = System.Windows.Forms.DialogResult.OK Then
            RichTextBox1.Font = dlg.Font
        End If
    End Sub

    Private Sub WordWarpToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles WordWarpToolStripMenuItem.Click
        Dim dlg As ColorDialog = New ColorDialog
        dlg.Color = RichTextBox1.ForeColor
        If dlg.ShowDialog = System.Windows.Forms.DialogResult.OK Then
            RichTextBox1.ForeColor = dlg.Color
        End If
    End Sub

    Private Sub AboutToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles AboutToolStripMenuItem.Click
        About.Show()
    End Sub

    Private Sub RichTextBox1_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RichTextBox1.TextChanged

    End Sub
End Class