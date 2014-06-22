#include <iostream>
#include <cstring>
#include <sstream>

using std::cout;
using std::endl;
using std::string;


// performs basic string compression using the counts of repeated characters.
// example input: aabcccccaaa
// example output: a2b1c5a3
void compress_string(string &s) {

  if (s.length() != 0) {
    string builder = "";

    char current = s.at(0);
    int i, count = 0;
    std::stringstream count_str;

    for (i=0; i<s.length(); i++) {
      if (s.at(i) == current) {
        count++;
      }
      else {
        current = s.at(i);

        builder += s.at(i-1);
        count_str << count;
        builder += count_str.str();

        count = 1;

        // stupid way that clears stringstream for converting count to a string
        count_str.str(string());
      }
    }

    builder += s.at(i-1);
    count_str << count;
    builder += count_str.str();


    // if the compressed string is less than the original string,
    // change the compressed string
    if (builder.length() <= s.length()) {
      s.assign(builder);
    }

  }
}



int main(int argc, char *argv[]) {

  if (argc != 2) {
    cout << "wrong number of arguments (needed 2)" << endl;
  }

  string s = argv[1];
  compress_string(s);

  cout << "the compressed string is: " << s << endl;

  return 0;
}
