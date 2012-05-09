open Swig
open Phonenumberutil

type phone_number_format =
    E164
  | INTERNATIONAL
  | NATIONAL
  | RFC3966

let make_phone_number_format phone_number_format =
  make_int (get_int (enum_to_int `PhoneNumberFormat
    (C_enum (match phone_number_format with
        E164 -> `E164
      | INTERNATIONAL -> `INTERNATIONAL
      | NATIONAL -> `NATIONAL
      | RFC3966 -> `RFC3966))))

type phone_number_type =
    FIXED_LINE
  | MOBILE
  | FIXED_LINE_OR_MOBILE
  | TOLL_FREE
  | PREMIUM_RATE
  | SHARED_COST
  | VOIP
  | PERSONAL_NUMBER
  | PAGER
  | UAN
  | VOICEMAIL
  | UNKNOWN

let make_phone_number_type phone_number_type =
  make_int (get_int (enum_to_int `PhoneNumberType
    (C_enum (match phone_number_type with
        FIXED_LINE -> `FIXED_LINE
      | MOBILE -> `MOBILE
      | FIXED_LINE_OR_MOBILE -> `FIXED_LINE_OR_MOBILE
      | TOLL_FREE -> `TOLL_FREE
      | PREMIUM_RATE -> `PREMIUM_RATE
      | SHARED_COST -> `SHARED_COST
      | VOIP -> `VOIP
      | PERSONAL_NUMBER -> `PERSONAL_NUMBER
      | PAGER -> `PAGER
      | UAN -> `UAN
      | VOICEMAIL -> `VOICEMAIL
      | UNKNOWN -> `UNKNOWN))))

let get_phone_number_type obj = match obj with
    (C_enum phone_number_type) -> (match phone_number_type with
        `FIXED_LINE -> FIXED_LINE
      | `MOBILE -> MOBILE
      | `FIXED_LINE_OR_MOBILE -> FIXED_LINE_OR_MOBILE
      | `TOLL_FREE -> TOLL_FREE
      | `PREMIUM_RATE -> PREMIUM_RATE
      | `SHARED_COST -> SHARED_COST
      | `VOIP -> VOIP
      | `PERSONAL_NUMBER -> PERSONAL_NUMBER
      | `PAGER -> PAGER
      | `UAN -> UAN
      | `VOICEMAIL -> VOICEMAIL
      | `UNKNOWN -> UNKNOWN
      | _ -> raise (LabelNotFromThisEnum obj))
    | _ -> raise (NotEnumType obj)

type match_type =
    INVALID_NUMBER
  | NO_MATCH
  | SHORT_NSN_MATCH
  | NSN_MATCH
  | EXACT_MATCH

let get_match_type obj = match obj with
  (C_enum match_type) -> (match match_type with
      `INVALID_NUMBER -> INVALID_NUMBER
    | `NO_MATCH -> NO_MATCH
    | `SHORT_NSN_MATCH -> SHORT_NSN_MATCH
    | `NSN_MATCH -> NSN_MATCH
    | `EXACT_MATCH -> EXACT_MATCH
    | _ -> raise (LabelNotFromThisEnum obj))
  | _ -> raise (NotEnumType obj)

type error_type =
    NO_PARSING_ERROR
  | INVALID_COUNTRY_CODE_ERROR
  | NOT_A_NUMBER
  | TOO_SHORT_AFTER_IDD
  | TOO_SHORT_NSN
  | TOO_LONG_NSN

let get_error_type obj = match obj with
  (C_enum error_type) -> (match error_type with
      `NO_PARSING_ERROR -> NO_PARSING_ERROR
    | `INVALID_COUNTRY_CODE_ERROR -> INVALID_COUNTRY_CODE_ERROR
    | `NOT_A_NUMBER -> NOT_A_NUMBER
    | `TOO_SHORT_AFTER_IDD -> TOO_SHORT_AFTER_IDD
    | `TOO_SHORT_NSN -> TOO_SHORT_NSN
    | `TOO_LONG_NSN -> TOO_LONG_NSN
    | _ -> raise (LabelNotFromThisEnum obj))
  | _ -> raise (NotEnumType obj)

type validation_result =
    IS_POSSIBLE
  | INVALID_COUNTRY_CODE
  | TOO_SHORT
  | TOO_LONG

let get_validation_result obj = match obj with
  (C_enum validation_result) -> (match validation_result with
      `IS_POSSIBLE -> IS_POSSIBLE
    | `INVALID_COUNTRY_CODE -> INVALID_COUNTRY_CODE
    | `TOO_SHORT -> TOO_SHORT
    | `TOO_LONG -> TOO_LONG
    | _ -> raise (LabelNotFromThisEnum obj))
  | _ -> raise (NotEnumType obj)


let phone_util = _PhoneNumberUtilSingleton_GetInstance '()

let new_phone_number () = _new_PhoneNumber '()

let delete_phone_number number = ignore (_delete_PhoneNumber number)

let is_alpha_number number =
  get_bool (phone_util -> _IsAlphaNumber((make_string number)))

let convert_alpha_characters_in_number number =
  get_string (phone_util -> _ConvertAlphaCharactersInNumber((make_string number)))

let normalize_digits_only number =
  get_string (phone_util -> _NormalizeDigitsOnly((make_string number)))

let get_national_significant_number number =
  get_string (phone_util -> GetNationalSignificantNumber(number))

let get_length_of_geographical_area_code number =
  get_int (phone_util -> GetLengthOfGeographicalAreaCode(number))

let get_length_of_national_destination_code number =
  get_int (phone_util -> GetLengthOfNationalDestinationCode(number))

let format number phone_number_format =
  get_string (phone_util -> Format(number, (make_phone_number_format phone_number_format)))

let format_national_number_with_carrier_code number carrier_code =
  get_string (phone_util -> FormatNationalNumberWithCarrierCode(number, (make_string carrier_code)))

let format_national_number_with_preferred_carrier_code number fallback_carrier_code =
  get_string (phone_util -> FormatNationalNumberWithPreferredCarrierCode(number, (make_string fallback_carrier_code)))

let format_number_for_mobile_dialing number region_calling_from =
  get_string (phone_util -> FormatNumberForMobileDialing(number, (make_string region_calling_from)))

let format_out_of_country_calling_number number calling_from =
  get_string (phone_util -> FormatOutOfCountryCallingNumber(number, (make_string calling_from)))

let format_in_original_format number region_calling_from =
  get_string (phone_util -> FormatInOriginalFormat(number, (make_string region_calling_from)))

let format_out_of_country_keeping_alpha_chars number calling_from =
  get_string (phone_util -> FormatOutOfCountryKeepingAlphaChars(number, (make_string calling_from)))

let truncate_too_long_number number =
  get_bool (phone_util -> TruncateTooLongNumber(number))

let get_number_type number =
  get_phone_number_type (phone_util -> GetNumberType(number))

let is_valid_number number =
  get_bool (phone_util -> IsValidNumber(number))

let is_valid_number_for_region number region_code =
  get_bool (phone_util -> _IsValidNumberForRegion(number, (make_string region_code)))

let get_region_code_for_number number =
  get_string (phone_util -> GetRegionCodeForNumber(number))

let get_country_code_for_region region_code =
  get_int (phone_util -> _GetCountryCodeForRegion(region_code))

let get_region_code_for_country_code country_code =
  get_string (phone_util -> GetRegionCodeForCountryCode((make_int country_code)))

let is_nanpa_country region_code =
  get_bool (phone_util -> _IsNANPACountry((make_string region_code)))

let get_ndd_prefix_for_region region_code strip_non_digits =
  get_string (phone_util -> GetNddPrefixForRegion((make_string region_code), (make_bool strip_non_digits)))

let is_possible_number_with_reason number =
  get_validation_result (phone_util -> IsPossibleNumberWithReason(number))

let is_possible_number number =
  get_bool (phone_util -> IsPossibleNumber(number))

let is_possible_number_for_string number region_dialing_from =
  get_bool (phone_util -> _IsPossibleNumberForString(number, region_dialing_from))

let get_example_number region_code number =
  get_bool (phone_util -> _GetExampleNumber((make_string region_code), number))

let get_example_number_for_type region_code phone_number_type number =
  get_bool (phone_util -> _GetExampleNumberForType((make_string region_code), (make_phone_number_type phone_number_type)))

let get_example_number_for_non_geo_entity country_calling_code number =
  get_bool (phone_util -> GetExampleNumberForNonGeoEntity((make_int country_calling_code), number))

let parse number_to_parse default_region number =
  get_error_type (phone_util -> _Parse((make_string number_to_parse), (make_string default_region), number))

let parse_and_keep_raw_input number_to_parse default_region number =
  get_error_type (phone_util -> _ParseAndKeepRawInput((make_string number_to_parse), (make_string default_region), number))

let is_number_match first_number second_number =
  get_match_type (phone_util -> IsNumberMatch(first_number, second_number))

let is_number_match_with_two_strings first_number second_number =
  get_match_type (phone_util -> _IsNumberMatchWithTwoStrings((make_string first_number), (make_string second_number)))

let is_number_match_with_one_string first_number second_number =
  get_match_type (phone_util -> _IsNumberMatchWithOneString(first_number, (make_string second_number)))
