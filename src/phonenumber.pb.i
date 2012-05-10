%module phonenumber
%{
#include "phonenumbers/phonenumber.pb.h"
%}

%include stl.i
%include stdint.i

namespace google {
  namespace protobuf {
    typedef int8_t  int8;
    typedef int16_t int16;
    typedef int32_t int32;
    typedef int64_t int64;

    typedef uint8_t  uint8;
    typedef uint16_t uint16;
    typedef uint32_t uint32;
    typedef uint64_t uint64;
  }
}

%ignore protobuf_AddDesc_phonenumber_2eproto();
%ignore protobuf_AssignDesc_phonenumber_2eproto();
%ignore protobuf_ShutdownFile_phonenumber_2eproto();
%ignore PhoneNumber_CountryCodeSource_IsValid(int);

%include "phonenumbers/phonenumber.pb.h"
%extend i18n::phonenumbers::PhoneNumber {
  std::string _extension() const {
    return self->extension();
  }

  std::string _raw_input() const {
    return self->raw_input();
  }

  std::string _preferred_domestic_carrier_code() const {
    return self->preferred_domestic_carrier_code();
  }

  PhoneNumber_CountryCodeSource _country_code_source() const {
    return self->country_code_source();
  }
}
