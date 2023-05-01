using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Sam_Image_Viewer
{
    public partial class Form1 : Form
    {

        List<string> fileNames = new List<string>();

        public Form1()
        {
            InitializeComponent();
        }

        private void btnOpen_Click(object sender, EventArgs e)
        {
            using (OpenFileDialog ofd = new OpenFileDialog() { Multiselect = true, ValidateNames = true, Filter = "JPEG|*.jpg" })
            {
                if (ofd.ShowDialog() == DialogResult.OK)
                {
                    fileNames.Clear();
                    listViewFile.Items.Clear();

                    foreach (string fileName in ofd.FileNames)
                    {
                        FileInfo fi = new FileInfo(fileName);
                        fileNames.Add(fi.FullName);
                        listViewFile.Items.Add(fi.Name, 0);
                    }
                }
            }
        }

        private void listViewFile_ItemActivate(object sender, EventArgs e)
        {
            if (listViewFile.FocusedItem != null)
            {
                using (frmViewer frm = new frmViewer())
                {
                    Image img = Image.FromFile(fileNames[listViewFile.FocusedItem.Index]);
                    frm.ImageBox = img;
                    frm.ShowDialog();
                }
            }
        }
    }
}
