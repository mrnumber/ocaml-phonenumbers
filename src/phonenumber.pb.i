%module phonenumber
%{
#include "phonenumbers/phonenumber.pb.h"
%}

%ignore PhoneNumber_CountryCodeSource_IsValid(int value);
%ignore protobuf_AddDesc_phonenumber_2eproto();
%ignore protobuf_AssignDesc_phonenumber_2eproto();
%ignore protobuf_ShutdownFile_phonenumber_2eproto();

%include "phonenumbers/phonenumber.pb.h"
