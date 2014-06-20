#include <iostream>
#include <cstring>
#include <algorithm>

using std::cout;
using std::endl;
using std::string;



// given two strings, returns True if one is a permutation of the other.
// otherwise, it returns False.
bool is_permutation(string s1, string s2) {

  // remove unnecessary whitespace in both strings
  std::string::iterator end_pos1 = std::remove(s1.begin(), s1.end(), ' ');
  s1.erase(end_pos1, s1.end());
  

  std::string::iterator end_pos2 = std::remove(s2.begin(), s2.end(), ' ');
  s2.erase(end_pos2, s2.end());

  // check for string length first, for optimization
  if (s1.length() != s2.length()) {
    return false;
  }


  std::sort(s1.begin(), s1.end());
  std::sort(s2.begin(), s2.end());

  for (int i = 0; i < s1.length(); i++) {
    if (s1[i] != s2[i]) {
      return false;
    }
  }


  return true;
}




int main(int argc, char *argv[]) {

  if (argc != 3) {
    cout << "need 2 strings to check for permutation" << endl;
    return 1;
  }

  string s1 = argv[1];
  string s2 = argv[2];



  cout << is_permutation(s1, s2) << endl;

  return 0;
}
