#include <iostream>
#include <string>

using std::cout;
using std::endl;
using std::string;


// determines if a string contains all unique characters or not
bool unique_chars(string str) {

  // assuming ASCII encoding, we know that there are only 256 possible unique
  // characters in a string
  bool characters[256] = {false};


  if (str.length() > 256) {
    return false;
  }

  int value;
  for (int i = 0; i < str.length(); i++) {
    value = str.at(i);

    if (characters[value] == true) { 
      return false;
    }
    else {
      characters[value] = true;
    }
  }


  return true;
}



int main(int argc, char *argv[]) {

  if (argc != 2) {
    std::cout << "wrong number of arguments (there is no string)" << std::endl;
    return 1;
  }

  string str = argv[1];
  bool is_unique = unique_chars(str);


  if (is_unique) {
    cout << "True" << endl;
    return 0;
  }
  else {
    cout << "False" << endl;
    return 1;
  }


}
