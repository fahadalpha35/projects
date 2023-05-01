/** 
 * Plagiarism Detector using KMP Algorithm by
 * Mamtaz Masuduzzaman- (ID-18204002), Ramisha E Anjum- (ID-19104034)
 * Fahad Ahmed- (ID-19204006), Md Ziaur Reza Joy- (ID-19204030)
 * Farhun Arif Chowdhury- (ID-19204031)
 */


import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.Scanner;

class class1
{
	private int partial_match_length=0;
	int f=0;
	int temp=0;
	int length=100000;
	int index=-1;
	
	int Plag_Sent_Count=0; 
		 
	String[] suf = new String[length]; 
	String[] pre = new String[length]; 
	int[] partial_match_table=new int[length]; 
	

	public Character[] tochararr(String s) 
	{
		if (s == null) 
		{
			return null;
		}
		Character[] array = new Character[s.length()];

		for (int i = 0; i < s.length(); i++) 
		{
			array[i] = new Character(s.charAt(i));
		}
		return array;
	}
	
	
	void presufcalc(Character a2[], int m) 
	{
	
		int j = 0;
		int count = 0;

		pre[j] = Character.toString(a2[j]);

		for (int i = 0, k3 = 1; i < m - 1; i++) 
		{
			if (m == 1)
				continue;
			pre[i + 1] = pre[i] + Character.toString(a2[k3]);
			k3++;
		}
	
		int j1 = 0;
		int k1 = m - 1;

		if (m - 1 >= 1)
			suf[j1] = Character.toString(a2[k1]);

		for (int i = 0; i < m - 2; i++) 
		{
			k1--;
			suf[i + 1] = Character.toString(a2[k1]) + suf[i];
		}
		
			for (int i = 0; i < m; i++)
			{
				for (j = 0; j < m; j++)
					{
						if (pre[i].equals(suf[j]))
							count++;
					}
				}
		
			if (count >= 1)
			{
				partial_match_length++;
				index++;	
			}
			else 
			{
				partial_match_length = 0;
				index++;
			}
			
	}
	
			void findmatch(Character pattern_char[]) 
			{
				int k1 = pattern_char.length;
				boolean alreadyExecuted = false;
				int i, k;
				
				for (k = 0; k < k1; k++) 
				{
					for (i = 0; i < k + 1; i++) 
					{
						if (!alreadyExecuted) 
						{
							presufcalc(pattern_char, k + 1);
							alreadyExecuted = true;
						}

					}
					alreadyExecuted = false;
				}
			}
						
			void kmp(Character[] testfile_char,Character[] pattern_char)
			{
				int n=testfile_char.length;
				int k=0;
				int c=0;
				
				for(int i=0,j=0;i<n;)
				{
					if(pattern_char[j].equals(testfile_char[i]))
					{
						k++;
						j++;
						i++;		
					}
				
					else
					{
						
						if(k!=0)
						{
						temp=partial_match_table[k-1];					
						f=k-temp;
						}
						else
						{
							f=1;
						}
						
						i=c+f;
						j=0;
						k=0;
						c=i;
					}
					
					if(k==pattern_char.length)
					{
					
					Plag_Sent_Count++;
					j=0;
					k=0;
					c = i;
					}	
				}
				
			}
			
			
			void print(int d,String file,String file1)
			{
					int threshold_value=((Plag_Sent_Count*100)/d);
			
			if (threshold_value>=50)
			{
				System.out.println("Total number of sentences: "+d);
				System.out.println("Number of sentences matched: "+Plag_Sent_Count);
				System.out.println(file+" is "+threshold_value+" % Plagarised with "+file1);
				System.out.println("\n***************************************");
				Plag_Sent_Count=0;
				}
			
			else
			{
				System.out.println("Total number of sentences: "+d);
				System.out.println("Number of sentences matched: "+Plag_Sent_Count);	
				System.out.println(file+" is not Plagarised with "+file1);
				System.out.println("\n***************************************");
				Plag_Sent_Count=0;
			}
			}
	
}

class kmp
{
	public static void main(String args[]) throws FileNotFoundException
	{
		class1 c1=new class1();
		Character[] char_file1;
		Character[] char_pat;
		
		Scanner in = new Scanner(System.in);
		 
	    System.out.println("Enter a Test file directory path : ");
		
		String test_file1=in.nextLine();
		
		Scanner in1 = new Scanner(System.in);
		System.out.println("Enter a pattern file directory path : ");
		
		String pattern_file=in1.nextLine();
				
		String str_file1 = "";
		String str_pat ="";
		
		
		FileReader f=new FileReader(test_file1);
			
	    BufferedReader fileReader = new BufferedReader(f);
	    
	    FileReader f1=new FileReader(pattern_file);
		
	    BufferedReader fileReader1 = new BufferedReader(f1);
	    
	    try 
	    {
	        while (fileReader.ready()) 
	        {
	            str_file1 += (char) fileReader.read();
	        }

	    } 
	    catch (IOException e) 
	    {
	    	e.printStackTrace();
	    }
	    
	    try 
	    {
	        while (fileReader1.ready()) 
	        {
	        	str_pat += (char) fileReader1.read();

	        }
	     } 
	     catch (IOException e) 
	     {   
	          e.printStackTrace();
	     }
	    
	    
	    String[] split_pat  = str_pat.split("\\.");
	    String[] split1 = str_file1.split("\\.");
	    
	    int d1=split1.length;
	    
	    char_file1 = c1.tochararr(str_file1);
	
		for(int i=0;i<split_pat.length;i++)
		{
			char_pat = c1.tochararr(split_pat[i]);	
			c1.findmatch(char_pat);
			
			c1.kmp(char_file1, char_pat);
		}
		c1.print(d1,test_file1,pattern_file);
		
	}
}