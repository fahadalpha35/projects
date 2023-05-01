package project;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class IncrementPanel extends JPanel
{
    private JButton button;
    private JLabel label;
    int number = 50;

    public IncrementPanel()
    {
        button = new JButton("Increment");
        button.addActionListener(new ButtonListener());

        label = new JLabel("" + number);

        this.add(button);
        this.add(label);
    }

    private class ButtonListener implements ActionListener
    {
        public void actionPerformed(ActionEvent event)
        {
            //int increment = 50;

            number++;

            label.setText("" + number);
        }
    }

}