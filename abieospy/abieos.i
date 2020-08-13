%module abieospy
%include "std_string.i"
%include "std_vector.i"
%include "std_map.i"
%include "stdint.i"

// Instantiate templates used by example
namespace std {
   %template(IntVector) vector<int>;
   %template(DoubleVector) vector<double>;
   %template(StringVector) vector<string>;
   %template(ConstCharVector) vector<const char*>;

   %template(map_string_string) map<string, string>;
   %template(map_string_int) map<string, int>;
   %template(map_string_vector) map<string, vector<string>>;
}

%{

#include "src/abieos.h"
%}
%include "src/abieos.h"
