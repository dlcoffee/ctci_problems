#include <iostream>
#include <cstring>

using std::cout;
using std::endl;
using std::string;


// this function replaces all spaces in a string with '%20'
void replace_spaces(string &s) {
  int ws_count, newlength, i;

  // count number of whitespaces in the string
  for (i=0; i<s.length(); i++) {
    if (s[i] == ' ') {
      ws_count++;
    }
  }

  // includes whitespace count * 3 because '%20' takes 3 chars
  newlength = s.length() + (ws_count * 3);

  // delete each whitespace, and insert '%20'
  for (i = 0; i < newlength; i++) {
    if (s[i] == ' ') {
      s.replace(i, 1, "");
      s.insert(i, "%20");
    }

  }
  
}


int main(int argc, char *argv[]) {
  if (argc != 2) {
    cout << "wrong number of arguments (1 needed)" << endl;
    return 1;
  }

  string s = argv[1];
  replace_spaces(s);

  cout << "replaced spaces is: " << s << endl;

  return 0;
}
