#include <iostream>
#include <vector>

#include "ClassName.hpp"

using namespace std;

int main() {
  ClassName c;
  cout << c.im_a_function() << endl;

  // test
  vector<int> v;
  v = {1, 2, 3};
  for (auto it = v.begin(); it != v.end(); ++it) {
    cout << *it << endl;
  }

  return 0;
}
