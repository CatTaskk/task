import 'dart:io';

void main()
{
  print("Enter multiple words please: ");
  String input = userInput();
  String output = reverse(input);
  print(output);
}

String userInput()
{ 
  String input = "";
  while(input.isEmpty|| !input.contains(" "))
  {
  input = stdin.readLineSync() ?? "";
  if(input.isEmpty || !input.contains(" "))
  {
    print("please enter valid string");
  }
  }
  return input;
}

String reverse(String myInput)
{
  // String  words = myInput.split("").reversed.join();
  // return words;
  List<String> words = myInput.split(" ");
  List<String> reversedWords = List.from(words.reversed);
  return reversedWords.join(" ");

}

