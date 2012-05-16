%module phonenumber
%{
#include "phonenumbers/phonenumber.pb.h"
%}

%include typemaps.i
SIMPLE_MAP(google::protobuf::int32,caml_val_int,caml_long_val);
SIMPLE_MAP(google::protobuf::uint64,caml_val_ulong,caml_double_val);

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
