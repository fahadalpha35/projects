package project;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class incdec 
{
    public static void main(String[] args)
    {
        JFrame frame = new JFrame();

        FlowLayout flow = new FlowLayout();
        frame.getContentPane().setLayout(flow);

        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(400,300);
        frame.setTitle("Button Modifier");

        IncrementPanel panel = new IncrementPanel();
        DecrementPanel panel1 = new DecrementPanel();

        frame.add(panel);
        frame.add(panel1);

        frame.setVisible(true);
    }
}