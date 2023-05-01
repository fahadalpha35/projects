package project;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class DecrementPanel extends JPanel
{
    private JButton button1;
    private JLabel label;
    private int number = 50;

    public DecrementPanel()
    {
        button1 = new JButton("Decrement");
        button1.addActionListener(new /*DecrementPanel.*/ButtonListener());

        label = new JLabel("" + number);


        this.add(button1);
        this.add(label);
    }

    private class ButtonListener implements ActionListener
    {
        public void actionPerformed(ActionEvent event)
        {
            //int increment = 50;

            number--;

            label.setText("" + number);


        }
    }

}