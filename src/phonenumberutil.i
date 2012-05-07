%module phonenumberutil
%{
#include "phonenumbers/phonenumberutil.h"

using namespace std;
using namespace i18n::phonenumbers;
%}

%include stl.i
%include std_list.i
%include phonenumber.pb.i

%include "base/memory/singleton.h"
%template(PhoneNumberUtilSingleton) i18n::phonenumbers::Singleton<i18n::phonenumbers::PhoneNumberUtil>;

%ignore GetSupportedRegions(set<string>*) const;
%ignore FormatByPattern(const PhoneNumber&, PhoneNumberFormat, const RepeatedPtrField<NumberFormat>&, string*) const;
%ignore ChooseFormattingPatternForNumber(const RepeatedPtrField<NumberFormat>& available_formats, const string& national_number) const;
%ignore SetLogger(Logger* logger);
%ignore GetAsYouTypeFormatter(const string& region_code) const;
%ignore ConvertFromTelephoneNumberProto(const TelephoneNumber&, PhoneNumber*);
%ignore ConvertToTelephoneNumberProto(const PhoneNumber&, TelephoneNumber*);

%include "phonenumbers/phonenumberutil.h"
%extend i18n::phonenumbers::PhoneNumberUtil {
  bool _IsAlphaNumber(string number) const {
    return self->IsAlphaNumber(number);
  }

  string _ConvertAlphaCharactersInNumber(string number) const {
    self->ConvertAlphaCharactersInNumber(&number);
    return number;
  }

  string _NormalizeDigitsOnly(string number) const {
    self->NormalizeDigitsOnly(&number);
    return number;
  }

  string GetNationalSignificantNumber(const PhoneNumber& number) const {
    string national_significant_num;
    self->GetNationalSignificantNumber(number, &national_significant_num);
    return national_significant_num;
  }

  string Format(const PhoneNumber& number, PhoneNumberFormat number_format) const {
    string formatted_number;
    self->Format(number, number_format, &formatted_number);
    return formatted_number;
  }

  string FormatNationalNumberWithCarrierCode(const PhoneNumber& number, string carrier_code) const {
    string formatted_number;
    self->FormatNationalNumberWithCarrierCode(number, carrier_code, &formatted_number);
    return formatted_number;
  }

  string FormatNationalNumberWithPreferredCarrierCode(const PhoneNumber& number, string fallback_carrier_code) const {
    string formatted_number;
    self->FormatNationalNumberWithPreferredCarrierCode(number, fallback_carrier_code, &formatted_number);
    return formatted_number;
  }

  string FormatNumberForMobileDialing(const PhoneNumber& number, string region_calling_from, bool with_formatting) const {
    string formatted_number;
    self->FormatNumberForMobileDialing(number, region_calling_from, with_formatting, &formatted_number);
    return formatted_number;
  }

  string FormatOutOfCountryCallingNumber(const PhoneNumber& number, string calling_from) const {
    string formatted_number;
    self->FormatOutOfCountryCallingNumber(number, calling_from, &formatted_number);
    return formatted_number;
  }

  string FormatInOriginalFormat(const PhoneNumber& number, string region_calling_from) const {
    string formatted_number;
    self->FormatInOriginalFormat(number, region_calling_from, &formatted_number);
    return formatted_number;
  }

  string FormatOutOfCountryKeepingAlphaChars(const PhoneNumber& number, string calling_from) const {
    string formatted_number;
    self->FormatOutOfCountryKeepingAlphaChars(number, calling_from, &formatted_number);
    return formatted_number;
  }

  bool _IsValidNumberForRegion(const PhoneNumber& number, string region_code) const {
    return self->IsValidNumberForRegion(number, region_code);
  }

  string GetRegionCodeForNumber(const PhoneNumber& number) const {
    string region_code;
    self->GetRegionCodeForNumber(number, &region_code);
    return region_code;
  }

  int _GetCountryCodeForRegion(string region_code) const {
    return self->GetCountryCodeForRegion(region_code);
  }

  string GetRegionCodeForCountryCode(int country_code) const {
    string region_code;
    self->GetRegionCodeForCountryCode(country_code, &region_code);
    return region_code;
  }

  bool _IsNANPACountry(string region_code) const {
    return self->IsNANPACountry(region_code);
  }

  string GetNddPrefixForRegion(string region_code, bool strip_non_digits) const {
    string national_prefix;
    self->GetNddPrefixForRegion(region_code, strip_non_digits, &national_prefix);
    return national_prefix;
  }

  bool _IsPossibleNumberForString(string number, string region_dialing_from) const {
    return self->IsPossibleNumberForString(number, region_dialing_from);
  }

  bool _GetExampleNumber(string region_code, PhoneNumber* number) const {
    return self->GetExampleNumber(region_code, number);
  }

  bool _GetExampleNumberForType(string region_code, PhoneNumberType type, PhoneNumber* number) const {
    return self->GetExampleNumberForType(region_code, type, number);
  }

  ErrorType _Parse(string number_to_parse, string default_region, PhoneNumber* number) const {
    return self->Parse(number_to_parse, default_region, number);
  }

  ErrorType _ParseAndKeepRawInput(string number_to_parse, string default_region, PhoneNumber* number) const {
    return self->ParseAndKeepRawInput(number_to_parse, default_region, number);
  }

  MatchType _IsNumberMatchWithTwoStrings(string first_number, string second_number) const {
    return self->IsNumberMatchWithTwoStrings(first_number, second_number);
  }

  MatchType _IsNumberMatchWithOneString(const PhoneNumber& first_number, string second_number) const {
    return self->IsNumberMatchWithOneString(first_number, second_number);
  }
}
