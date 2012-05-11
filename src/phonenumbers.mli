open Swig
open Phonenumberutil

(* INTERNATIONAL and NATIONAL formats are consistent with the definition
   in ITU-T Recommendation E. 123. For example, the number of the Google
   Zürich office will be written as "+41 44 668 1800" in INTERNATIONAL
   format, and as "044 668 1800" in NATIONAL format. E164 format is as per
   INTERNATIONAL format but with no formatting applied e.g. +41446681800.
   RFC3966 is as per INTERNATIONAL format, but with all spaces and other
   separating symbols replaced with a hyphen, and with any phone number
   extension appended with ";ext=". *)
type phone_number_format =
    E164
  | INTERNATIONAL
  | NATIONAL
  | RFC3966

(* Type of phone numbers. *)
type phone_number_type =
    FIXED_LINE
  | MOBILE
  (* In some regions (e.g. the USA), it is impossible to distinguish between
     fixed-line and mobile numbers by looking at the phone number itself. *)
  | FIXED_LINE_OR_MOBILE
  (* Freephone lines *)
  | TOLL_FREE
  | PREMIUM_RATE
  (* The cost of this call is shared between the caller and the recipient, and
     is hence typically less than PREMIUM_RATE calls. See
     http://en.wikipedia.org/wiki/Shared_Cost_Service for more information. *)
  | SHARED_COST
  (* Voice over IP numbers. This includes TSoIP (Telephony Service over IP). *)
  | VOIP
  (* A personal number is associated with a particular person, and may be
     routed to either a MOBILE or FIXED_LINE number. Some more information can
     be found here: http://en.wikipedia.org/wiki/Personal_Numbers *)
  | PERSONAL_NUMBER
  | PAGER
  (* Used for "Universal Access Numbers" or "Company Numbers". They may be
     further routed to specific offices, but allow one number to be used for a
     company. *)
  | UAN
  (* Used for "Voice Mail Access Numbers". *)
  | VOICEMAIL
  (* A phone number is of type UNKNOWN when it does not fit any of the known
     patterns for a specific region. *)
  | UNKNOWN

(* Types of phone number matches. See detailed description beside the
   IsNumberMatch() method. *)
type match_type =
    INVALID_NUMBER (* NOT_A_NUMBER in the java version. *)
  | NO_MATCH
  | SHORT_NSN_MATCH
  | NSN_MATCH
  | EXACT_MATCH

type error_type =
    NO_PARSING_ERROR
  | INVALID_COUNTRY_CODE_ERROR (* INVALID_COUNTRY_CODE in the java version. *)
  | NOT_A_NUMBER
  | TOO_SHORT_AFTER_IDD
  | TOO_SHORT_NSN
  | TOO_LONG_NSN (* TOO_LONG in the java version. *)

(* Possible outcomes when testing if a PhoneNumber is possible. *)
type validation_result =
    IS_POSSIBLE
  | INVALID_COUNTRY_CODE
  | TOO_SHORT
  | TOO_LONG

val new_phone_number : unit -> c_obj

type t = {
  country_code: int option;
  national_number: int64 option;
}

val from_phone_number: c_obj -> t

val to_phone_number: t -> c_obj

(* Returns true if the number is a valid vanity (alpha) number such as 800
   MICROSOFT. A valid vanity number will start with at least 3 digits and will
   have three or more alpha characters. This does not do region-specific
   checks - to work out if this number is actually valid for a region, it
   should be parsed and methods such as IsPossibleNumberWithReason or
   IsValidNumber should be used. *)
val is_alpha_number : string -> bool

(* Converts all alpha characters in a number to their respective digits on
   a keypad, but retains existing formatting. *)
val convert_alpha_characters_in_number : string -> string

(* Normalizes a string of characters representing a phone number. This
   converts wide-ascii and arabic-indic numerals to European numerals, and
   strips punctuation and alpha characters. *)
val normalize_digits_only : string -> string

(* Gets the national significant number of a phone number. Note a national
   significant number doesn't contain a national prefix or any formatting. *)
val get_national_significant_number : c_obj -> string

(* Gets the length of the geographical area code from the PhoneNumber object
   passed in, so that clients could use it to split a national significant
   number into geographical area code and subscriber number. It works in such
   a way that the resultant subscriber number should be diallable, at least on
   some devices. *)
val get_length_of_geographical_area_code : c_obj -> int

(* Gets the length of the national destination code (NDC) from the PhoneNumber
   object passed in, so that clients could use it to split a national
   significant number into NDC and subscriber number. The NDC of a phone
   number is normally the first group of digit(s) right after the country
   calling code when the number is formatted in the international format, if
   there is a subscriber number part that follows. *)
val get_length_of_national_destination_code : c_obj -> int

(* Formats a phone number in the specified format using default rules. Note
   that this does not promise to produce a phone number that the user can
   dial from where they are - although we do format in either NATIONAL or
   INTERNATIONAL format depending on what the client asks for, we do not
   currently support a more abbreviated format, such as for users in the
   same area who could potentially dial the number without area code. *)
val format : c_obj -> phone_number_format -> string

(* Formats a phone number in national format for dialing using the carrier as
   specified in the carrier_code. The carrier_code will always be used
   regardless of whether the phone number already has a preferred domestic
   carrier code stored. If carrier_code contains an empty string, return the
   number in national format without any carrier code. *)
val format_national_number_with_carrier_code :
  c_obj -> string -> string

(* Formats a phone number in national format for dialing using the carrier as
   specified in the preferred_domestic_carrier_code field of the PhoneNumber
   object passed in. If that is missing, use the fallback_carrier_code passed
   in instead. If there is no preferred_domestic_carrier_code, and the
   fallback_carrier_code contains an empty string, return the number in
   national format without any carrier code. *)
val format_national_number_with_preferred_carrier_code :
  c_obj -> string -> string

(* Returns a number formatted in such a way that it can be dialed from a
   mobile phone in a specific region. If the number cannot be reached from
   the region (e.g. some countries block toll-free numbers from being called
   outside of the country), the method returns an empty string. *)
val format_number_for_mobile_dialing : c_obj -> string -> string

(* Formats a phone number for out-of-country dialing purposes.
   Note this function takes care of the case for calling inside of NANPA
   and between Russia and Kazakhstan (who share the same country calling
   code). In those cases, no international prefix is used. For regions which
   have multiple international prefixes, the number in its INTERNATIONAL
   format will be returned instead. *)
val format_out_of_country_calling_number :
  c_obj -> string -> string

(* Formats a phone number using the original phone number format that the
   number is parsed from. The original format is embedded in the
   country_code_source field of the PhoneNumber object passed in. If such
   information is missing, the number will be formatted into the NATIONAL
   format by default. When the number is an invalid number, the method returns
   the raw input when it is available. *)
val format_in_original_format : c_obj -> string -> string

(* Formats a phone number for out-of-country dialing purposes.
   Note that in this version, if the number was entered originally using alpha
   characters and this version of the number is stored in raw_input, this
   representation of the number will be used rather than the digit
   representation. Grouping information, as specified by characters such as
   "-" and " ", will be retained. *)
val format_out_of_country_keeping_alpha_chars :
  c_obj -> string -> string

(* Attempts to extract a valid number from a phone number that is too long to
   be valid, and resets the PhoneNumber object passed in to that valid
   version. If no valid number could be extracted, the PhoneNumber object
   passed in will not be modified. It returns true if a valid phone number can
   be successfully extracted. *)
val truncate_too_long_number : 'a -> bool

(* Gets the type of a phone number. *)
val get_number_type : 'a -> phone_number_type

(* Tests whether a phone number matches a valid pattern. Note this doesn't
   verify the number is actually in use, which is impossible to tell by just
   looking at a number itself. *)
val is_valid_number : 'a -> bool

(* Tests whether a phone number is valid for a certain region. Note this
   doesn't verify the number is actually in use, which is impossible to tell
   by just looking at a number itself. If the country calling code is not the
   same as the country calling code for the region, this immediately exits
   with false.  After this, the specific number pattern rules for the region
   are examined.
   This is useful for determining for example whether a particular number is
   valid for Canada, rather than just a valid NANPA number. *)
val is_valid_number_for_region : c_obj -> string -> bool

(* Returns the region where a phone number is from. This could be used for
   geo-coding at the region level. *)
val get_region_code_for_number : 'a -> string

(* Returns the country calling code for a specific region. For example,
   this would be 1 for the United States, and 64 for New Zealand. *)
val get_country_code_for_region : 'a -> int

(* Returns the region code that matches the specific country code. Note that
   it is possible that several regions share the same country calling code
   (e.g. US and Canada), and in that case, only one of the regions (normally
   the one with the largest population) is returned. *)
val get_region_code_for_country_code : int -> string

(* Checks if this is a region under the North American Numbering Plan
   Administration (NANPA). *)
val is_nanpa_country : string -> bool

(* Returns the national dialling prefix for a specific region. For example,
   this would be 1 for the United States, and 0 for New Zealand. Set
   strip_non_digits to true to strip symbols like "~" (which indicates a wait
   for a dialling tone) from the prefix returned. If no national prefix is
   present, we return an empty string. *)
val get_ndd_prefix_for_region : string -> bool -> string

(* Checks whether a phone number is a possible number. It provides a more
   lenient check than IsValidNumber() in the following sense:
     1. It only checks the length of phone numbers. In particular, it doesn't
        check starting digits of the number.
     2. It doesn't attempt to figure out the type of the number, but uses
        general rules which applies to all types of phone numbers in a
        region. Therefore, it is much faster than IsValidNumber().
     3. For fixed line numbers, many regions have the concept of area code,
        which together with subscriber number constitute the national
        significant number. It is sometimes okay to dial the subscriber
        number only when dialing in the same area. This function will return
        true if the subscriber-number-only version is passed in. On the other
        hand, because IsValidNumber() validates using information on both
        starting digits (for fixed line numbers, that would most likely be
        area codes) and length (obviously includes the length of area codes
        for fixed line numbers), it will return false for the
        subscriber-number-only version. *)
val is_possible_number_with_reason : 'a -> validation_result

(* Convenience wrapper around IsPossibleNumberWithReason. Instead of returning
   the reason for failure, this method returns a boolean value. *)
val is_possible_number : 'a -> bool

(* Checks whether a phone number is a possible number given a number in the
   form of a string, and the country where the number could be dialed from.
   It provides a more lenient check than IsValidNumber(). See
   IsPossibleNumber(const PhoneNumber& number) for details.
   This method first parses the number, then invokes
   IsPossibleNumber(const PhoneNumber& number) with the resultant PhoneNumber
   object.
   region_dialing_from represents the region that we are expecting the number
   to be dialed from. Note this is different from the region where the number
   belongs. For example, the number +1 650 253 0000 is a number that belongs
   to US. When written in this form, it could be dialed from any region. When
   it is written as 00 1 650 253 0000, it could be dialed from any region
   which uses an international dialling prefix of 00. When it is written as
   650 253 0000, it could only be dialed from within the US, and when written
   as 253 0000, it could only be dialed from within a smaller area in the US
   (Mountain View, CA, to be more specific). *)
val is_possible_number_for_string :
  c_obj -> c_obj -> bool

(* Gets a valid fixed-line number for the specified region. Returns false if
   the region was unknown, or the region 001 is passed in. For 001
   (representing non-geographical numbers), call
   GetExampleNumberForNonGeoEntity instead. *)
val get_example_number : string -> c_obj -> bool

(* Gets a valid number of the specified type for the specified region.
   Returns false if the region was unknown or 001, or if no example number of
   that type could be found. For 001 (representing non-geographical numbers),
   call GetExampleNumberForNonGeoEntity instead. *)
val get_example_number_for_type : string -> phone_number_type -> 'a -> bool

(* Gets a valid number for the specified country calling code for a
   non-geographical entity. Returns false if the metadata does not contain
   such information, or the country calling code passed in does not belong to
   a non-geographical entity. *)
val get_example_number_for_non_geo_entity : int -> c_obj -> bool

(* Parses a string and returns it in proto buffer format. This method will
   return an error like INVALID_COUNTRY_CODE if the number is not considered
   to be a possible number, and NO_PARSING_ERROR if it parsed correctly. Note
   that validation of whether the number is actually a valid number for a
   particular region is not performed. This can be done separately with
   IsValidNumber().
   default_region represents the country that we are expecting the number to
   be from. This is only used if the number being parsed is not written in
   international format. The country_code for the number in this case would be
   stored as that of the default country supplied. If the number is guaranteed
   to start with a '+' followed by the country calling code, then
   "ZZ" can be supplied. *)
val parse : string -> string -> c_obj -> error_type

(* Parses a string and returns it in proto buffer format. This method differs
   from Parse() in that it always populates the raw_input field of the
   protocol buffer with number_to_parse as well as the country_code_source
   field. *)
val parse_and_keep_raw_input :
  string -> string -> c_obj -> error_type

(* Takes two phone numbers and compares them for equality.
   Returns EXACT_MATCH if the country calling code, NSN, presence of a leading
   zero for Italian numbers and any extension present are the same.
   Returns NSN_MATCH if either or both has no country calling code specified,
   and the NSNs and extensions are the same.
   Returns SHORT_NSN_MATCH if either or both has no country calling code
   specified, or the country calling code specified is the same, and one NSN
   could be a shorter version of the other number. This includes the case
   where one has an extension specified, and the other does not.
   Returns NO_MATCH otherwise.
   For example, the numbers +1 345 657 1234 and 657 1234 are a
   SHORT_NSN_MATCH. The numbers +1 345 657 1234 and 345 657 are a NO_MATCH. *)
val is_number_match : c_obj -> c_obj -> match_type

(* Takes two phone numbers as strings and compares them for equality. This
   is a convenience wrapper for IsNumberMatch(PhoneNumber firstNumber,
   PhoneNumber secondNumber). No default region is known.
   Returns INVALID_NUMBER if either number cannot be parsed into a phone
   number. *)
val is_number_match_with_two_strings : string -> string -> match_type

(* Takes two phone numbers and compares them for equality. This is a
   convenience wrapper for IsNumberMatch(PhoneNumber firstNumber,
   PhoneNumber secondNumber). No default region is known.
   Returns INVALID_NUMBER if second_number cannot be parsed into a phone
   number. *)
val is_number_match_with_one_string : c_obj -> string -> match_type
