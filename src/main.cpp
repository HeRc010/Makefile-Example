#include <iostream>
#include <vector>

#include "test.hpp"

using namespace std;

int main()
{
   test t;
   cout << t.im_a_function() << endl;

   // test
   vector<int> v;
   v = {1,2,3};
   for (auto it = v.begin(); it != v.end(); ++it)
   {
      cout << *it << endl;
   }

   return 0;
}
