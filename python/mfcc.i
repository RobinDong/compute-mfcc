%module mfcc
%{
  #define SWIG_FILE_WITH_INIT
  #include "mfcc.hpp"
%}
%include "numpy.i"
%init %{
  import_array();
%}

%apply (short* IN_ARRAY1, int DIM1) {(short* in_array, int size_in)}
%apply (double** ARGOUTVIEW_ARRAY2, int* DIM1, int* DIM2) {(double** out_array, int* dim1, int* dim2)}

%rename (mfcc) my_mfcc;
%inline %{
  void my_mfcc(int sample_rate, short* in_array, int size_in, double** out_array, int* dim1, int* dim2) {
    mfcc(sample_rate, in_array, size_in, out_array, dim1, dim2);
  }
%}
