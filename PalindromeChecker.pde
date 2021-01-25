public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if (palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    } else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String original = new String(word);
  String res = new String();
  for (int i = 0; i < word.length(); i++) {
    res = res + word.charAt(word.length()-1-i);
  }
  // LOWERCASE ONLY
  res = res.toLowerCase(); 
  word = word.toLowerCase();

  // NO SPACES
  res = res.replaceAll(" ", ""); 
  word = word.replaceAll(" ", ""); 

  // NO SYMBOLS
  for (int i = 0; i < word.length(); i++) {
    if (!Character.isLetter(word.charAt(i))) {
      word = word.substring(0,i) + word.substring(i+1, word.length());
    }
  }
  for (int i = 0; i < res.length(); i++) {
    if (!Character.isLetter(res.charAt(i))) {
      res = res.substring(0,i) + res.substring(i+1,res.length());
    }
  }

  return res.equals(word);
}
public String reverse(String str)
{
  String sNew = new String();
  for (int i = 0; i <  str.length(); i++) {
    sNew = sNew + str.charAt(str.length()-1-i);
  }
  return sNew;
}
