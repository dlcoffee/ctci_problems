#include <iostream>
#include <cstring>

using std::cout;
using std::endl;



// implement a function void reverse(char *str) in C or C++ which reverses a
// null-terminated string.
void reversed(char *str) {

  char *reversed;
  char temp;

  int count = 0;
  for (int i=strlen(str)-1; i>=(strlen(str)/2); i--) {
    temp = str[count];
  
    str[count] = str[i];
    str[i] = temp;
    count++;
  }
}






int main(int argc, char *argv[]) {
  if (argc != 2) {
    cout << "wrong number of arguments (1)" << endl;
  }

  char *str = argv[1];

  reversed(str);

  cout << "input string reversed is: " << str << endl;

  return 0;
}

