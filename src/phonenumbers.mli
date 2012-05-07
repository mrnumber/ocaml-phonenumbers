open Swig
open Phonenumberutil

type phone_number_format =
    E164
  | INTERNATIONAL
  | NATIONAL
  | RFC3966
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
type match_type =
    INVALID_NUMBER
  | NO_MATCH
  | SHORT_NSN_MATCH
  | NSN_MATCH
  | EXACT_MATCH
type error_type =
    NO_PARSING_ERROR
  | INVALID_COUNTRY_CODE_ERROR
  | NOT_A_NUMBER
  | TOO_SHORT_AFTER_IDD
  | TOO_SHORT_NSN
  | TOO_LONG_NSN
type validation_result =
    IS_POSSIBLE
  | INVALID_COUNTRY_CODE
  | TOO_SHORT
  | TOO_LONG
val new_phone_number : unit -> c_obj
val delete_phone_number : c_obj -> c_obj
val is_alpha_number : string -> bool
val convert_alpha_characters_in_number : string -> string
val normalize_digits_only : string -> string
val get_national_significant_number : 'a -> string
val get_length_of_geographical_area_code : 'a -> int
val get_length_of_national_destination_code : 'a -> int
val format : 'a c_obj_t -> phone_number_format -> string
val format_national_number_with_carrier_code :
  'a c_obj_t -> string -> string
val format_national_number_with_preferred_carrier_code :
  'a c_obj_t -> string -> string
val format_number_for_mobile_dialing : 'a c_obj_t -> string -> string
val format_out_of_country_calling_number :
  'a c_obj_t -> string -> string
val format_in_original_format : 'a c_obj_t -> string -> string
val format_out_of_country_keeping_alpha_chars :
  'a c_obj_t -> string -> string
val truncate_too_long_number : 'a -> bool
val get_number_type : 'a -> phone_number_type
val is_valid_number : 'a -> bool
val is_valid_number_for_region : 'a c_obj_t -> string -> bool
val get_region_code_for_number : 'a -> string
val get_country_code_for_region : 'a -> int
val get_region_code_for_country_code : int -> string
val is_nanpa_country : string -> bool
val get_ndd_prefix_for_region : string -> bool -> string
val is_possible_number_with_reason : 'a -> validation_result
val is_possible_number : 'a -> bool
val is_possible_number_for_string :
  'a c_obj_t -> 'a c_obj_t -> bool
val get_example_number : string -> 'a c_obj_t -> bool
val get_example_number_for_type : string -> phone_number_type -> 'a -> bool
val get_example_number_for_non_geo_entity : int -> 'a c_obj_t -> bool
val parse : string -> string -> 'a c_obj_t -> error_type
val parse_and_keep_raw_input :
  string -> string -> 'a c_obj_t -> error_type
val is_number_match : 'a c_obj_t -> 'a c_obj_t -> match_type
val is_number_match_with_two_strings : string -> string -> match_type
val is_number_match_with_one_string : 'a c_obj_t -> string -> match_type
