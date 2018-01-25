public void setup()
{

  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
 
}

public boolean palindrome(String word)
{
  if(noSpaces(lettersOnly(word)).equals(reverse(noSpaces(lettersOnly(word)))) == true){
    return true;
  }
  return false;
}

public String reverse(String str)
{
  String sNew = new String();
  for(int i = str.length() - 1; i > -1; i--){
      sNew = sNew + str.substring(i, i + 1);
    }
   return sNew;
}

public String noSpaces(String sWord){
  String sNew = new String(); 
  for(int i = 0; i < sWord.length(); i++){
    if(sWord.substring(i, i + 1).equals(" ") == false){
      sNew = sNew + sWord.substring(i, i + 1);
     }
   }
    return sNew.toLowerCase();
}

public String lettersOnly(String sWord){
  String sNew = new String();
  for(int i = 0; i < sWord.length(); i++){
    if(Character.isLetter(sWord.charAt(i)) == true){
       sNew = sNew + sWord.substring(i, i + 1);
     }
   }
    return sNew;
}