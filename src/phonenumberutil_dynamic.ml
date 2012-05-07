# 1 "phonenumberutil.ml"
let so_library = Dl.dl_open "phonenumberutil.so";;
# 1 "phonenumberutil.ml"
open Swig
type c_enum_type = [ 
  `unknown
| `PhoneNumber_CountryCodeSource
| `PhoneNumberFormat
| `PhoneNumberType
| `MatchType
| `ErrorType
| `ValidationResult
]
type c_enum_value = [ 
  `Int of int
| `PhoneNumber_CountryCodeSource_FROM_NUMBER_WITH_PLUS_SIGN
| `PhoneNumber_CountryCodeSource_FROM_NUMBER_WITH_IDD
| `PhoneNumber_CountryCodeSource_FROM_NUMBER_WITHOUT_PLUS_SIGN
| `PhoneNumber_CountryCodeSource_FROM_DEFAULT_COUNTRY
| `E164
| `INTERNATIONAL
| `NATIONAL
| `RFC3966
| `FIXED_LINE
| `MOBILE
| `FIXED_LINE_OR_MOBILE
| `TOLL_FREE
| `PREMIUM_RATE
| `SHARED_COST
| `VOIP
| `PERSONAL_NUMBER
| `PAGER
| `UAN
| `VOICEMAIL
| `UNKNOWN
| `INVALID_NUMBER
| `NO_MATCH
| `SHORT_NSN_MATCH
| `NSN_MATCH
| `EXACT_MATCH
| `NO_PARSING_ERROR
| `INVALID_COUNTRY_CODE_ERROR
| `NOT_A_NUMBER
| `TOO_SHORT_AFTER_IDD
| `TOO_SHORT_NSN
| `TOO_LONG_NSN
| `IS_POSSIBLE
| `INVALID_COUNTRY_CODE
| `TOO_SHORT
| `TOO_LONG
]

type c_obj = c_enum_value c_obj_t
let module_name = "phonenumberutil"

exception BadArgs of string
exception BadMethodName of c_obj * string * string
exception NotObject of c_obj
exception NotEnumType of c_obj
exception LabelNotFromThisEnum of c_obj
exception InvalidDirectorCall of c_obj


  
  let array_to_vector v argcons array = 
    for i = 0 to (Array.length array) - 1 do
	(invoke v) "set" (C_list [ C_int i ; (argcons array.(i)) ])
    done ;
    v
    
  let vector_to_array v argcons array =
    for i = 0; to (get_int ((invoke v) "size" C_void)) - 1 do
	array.(i) <- argcons ((invoke v) "[]" (C_int i))
    done ; 
    v
      

let _ = Callback.register "i18n::phonenumbers::PhoneNumber_CountryCodeSource_marker" (`PhoneNumber_CountryCodeSource)
external _PhoneNumber_CountryCodeSource_FROM_NUMBER_WITH_PLUS_SIGN : c_obj -> Swig.c_obj = "_wrap_PhoneNumber_CountryCodeSource_FROM_NUMBER_WITH_PLUS_SIGN" 
external _PhoneNumber_CountryCodeSource_FROM_NUMBER_WITH_IDD : c_obj -> Swig.c_obj = "_wrap_PhoneNumber_CountryCodeSource_FROM_NUMBER_WITH_IDD" 
external _PhoneNumber_CountryCodeSource_FROM_NUMBER_WITHOUT_PLUS_SIGN : c_obj -> Swig.c_obj = "_wrap_PhoneNumber_CountryCodeSource_FROM_NUMBER_WITHOUT_PLUS_SIGN" 
external _PhoneNumber_CountryCodeSource_FROM_DEFAULT_COUNTRY : c_obj -> Swig.c_obj = "_wrap_PhoneNumber_CountryCodeSource_FROM_DEFAULT_COUNTRY" 
external _PhoneNumber_CountryCodeSource_CountryCodeSource_MIN : c_obj -> Swig.c_obj = "_wrap_PhoneNumber_CountryCodeSource_CountryCodeSource_MIN" 
external _PhoneNumber_CountryCodeSource_CountryCodeSource_MAX : c_obj -> Swig.c_obj = "_wrap_PhoneNumber_CountryCodeSource_CountryCodeSource_MAX" 
external _PhoneNumber_CountryCodeSource_CountryCodeSource_ARRAYSIZE : c_obj -> Swig.c_obj = "_wrap_PhoneNumber_CountryCodeSource_CountryCodeSource_ARRAYSIZE" 
let so_symbol__new_PhoneNumber_f = Dl.dl_sym so_library "_wrap_new_PhoneNumber__SWIG_0phonenumberutil";;
# 83 "phonenumberutil.ml"
let _new_PhoneNumber_f = (Dl.call1 so_symbol__new_PhoneNumber_f :  c_obj list -> c_obj list );;
# 83 "phonenumberutil.ml"

let _new_PhoneNumber arg = match _new_PhoneNumber_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if true then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__delete_PhoneNumber_f = Dl.dl_sym so_library "_wrap_delete_PhoneNumberphonenumberutil";;
# 89 "phonenumberutil.ml"
let _delete_PhoneNumber_f = (Dl.call1 so_symbol__delete_PhoneNumber_f :  c_obj list -> c_obj list );;
# 89 "phonenumberutil.ml"

let _delete_PhoneNumber arg = match _delete_PhoneNumber_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__new_PhoneNumber_f = Dl.dl_sym so_library "_wrap_new_PhoneNumberphonenumberutil";;
# 95 "phonenumberutil.ml"
let _new_PhoneNumber_f = (Dl.call1 so_symbol__new_PhoneNumber_f :  c_obj list -> c_obj list );;
# 95 "phonenumberutil.ml"

let _new_PhoneNumber arg = match _new_PhoneNumber_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if true then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_operator_xx_xx_equals_f = Dl.dl_sym so_library "_wrap_PhoneNumber_operator_e___phonenumberutil";;
# 101 "phonenumberutil.ml"
let _PhoneNumber_operator_xx_xx_equals_f = (Dl.call1 so_symbol__PhoneNumber_operator_xx_xx_equals_f :  c_obj list -> c_obj list );;
# 101 "phonenumberutil.ml"

let _PhoneNumber_operator_xx_xx_equals arg = match _PhoneNumber_operator_xx_xx_equals_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_default_instance_f = Dl.dl_sym so_library "_wrap_PhoneNumber_default_instancephonenumberutil";;
# 107 "phonenumberutil.ml"
let _PhoneNumber_default_instance_f = (Dl.call1 so_symbol__PhoneNumber_default_instance_f :  c_obj list -> c_obj list );;
# 107 "phonenumberutil.ml"

let _PhoneNumber_default_instance arg = match _PhoneNumber_default_instance_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_Swap_f = Dl.dl_sym so_library "_wrap_PhoneNumber_Swapphonenumberutil";;
# 113 "phonenumberutil.ml"
let _PhoneNumber_Swap_f = (Dl.call1 so_symbol__PhoneNumber_Swap_f :  c_obj list -> c_obj list );;
# 113 "phonenumberutil.ml"

let _PhoneNumber_Swap arg = match _PhoneNumber_Swap_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_New_f = Dl.dl_sym so_library "_wrap_PhoneNumber_Newphonenumberutil";;
# 119 "phonenumberutil.ml"
let _PhoneNumber_New_f = (Dl.call1 so_symbol__PhoneNumber_New_f :  c_obj list -> c_obj list );;
# 119 "phonenumberutil.ml"

let _PhoneNumber_New arg = match _PhoneNumber_New_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_CheckTypeAndMergeFrom_f = Dl.dl_sym so_library "_wrap_PhoneNumber_CheckTypeAndMergeFromphonenumberutil";;
# 125 "phonenumberutil.ml"
let _PhoneNumber_CheckTypeAndMergeFrom_f = (Dl.call1 so_symbol__PhoneNumber_CheckTypeAndMergeFrom_f :  c_obj list -> c_obj list );;
# 125 "phonenumberutil.ml"

let _PhoneNumber_CheckTypeAndMergeFrom arg = match _PhoneNumber_CheckTypeAndMergeFrom_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_CopyFrom_f = Dl.dl_sym so_library "_wrap_PhoneNumber_CopyFromphonenumberutil";;
# 131 "phonenumberutil.ml"
let _PhoneNumber_CopyFrom_f = (Dl.call1 so_symbol__PhoneNumber_CopyFrom_f :  c_obj list -> c_obj list );;
# 131 "phonenumberutil.ml"

let _PhoneNumber_CopyFrom arg = match _PhoneNumber_CopyFrom_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_MergeFrom_f = Dl.dl_sym so_library "_wrap_PhoneNumber_MergeFromphonenumberutil";;
# 137 "phonenumberutil.ml"
let _PhoneNumber_MergeFrom_f = (Dl.call1 so_symbol__PhoneNumber_MergeFrom_f :  c_obj list -> c_obj list );;
# 137 "phonenumberutil.ml"

let _PhoneNumber_MergeFrom arg = match _PhoneNumber_MergeFrom_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_Clear_f = Dl.dl_sym so_library "_wrap_PhoneNumber_Clearphonenumberutil";;
# 143 "phonenumberutil.ml"
let _PhoneNumber_Clear_f = (Dl.call1 so_symbol__PhoneNumber_Clear_f :  c_obj list -> c_obj list );;
# 143 "phonenumberutil.ml"

let _PhoneNumber_Clear arg = match _PhoneNumber_Clear_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_IsInitialized_f = Dl.dl_sym so_library "_wrap_PhoneNumber_IsInitializedphonenumberutil";;
# 149 "phonenumberutil.ml"
let _PhoneNumber_IsInitialized_f = (Dl.call1 so_symbol__PhoneNumber_IsInitialized_f :  c_obj list -> c_obj list );;
# 149 "phonenumberutil.ml"

let _PhoneNumber_IsInitialized arg = match _PhoneNumber_IsInitialized_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_ByteSize_f = Dl.dl_sym so_library "_wrap_PhoneNumber_ByteSizephonenumberutil";;
# 155 "phonenumberutil.ml"
let _PhoneNumber_ByteSize_f = (Dl.call1 so_symbol__PhoneNumber_ByteSize_f :  c_obj list -> c_obj list );;
# 155 "phonenumberutil.ml"

let _PhoneNumber_ByteSize arg = match _PhoneNumber_ByteSize_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_MergePartialFromCodedStream_f = Dl.dl_sym so_library "_wrap_PhoneNumber_MergePartialFromCodedStreamphonenumberutil";;
# 161 "phonenumberutil.ml"
let _PhoneNumber_MergePartialFromCodedStream_f = (Dl.call1 so_symbol__PhoneNumber_MergePartialFromCodedStream_f :  c_obj list -> c_obj list );;
# 161 "phonenumberutil.ml"

let _PhoneNumber_MergePartialFromCodedStream arg = match _PhoneNumber_MergePartialFromCodedStream_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_SerializeWithCachedSizes_f = Dl.dl_sym so_library "_wrap_PhoneNumber_SerializeWithCachedSizesphonenumberutil";;
# 167 "phonenumberutil.ml"
let _PhoneNumber_SerializeWithCachedSizes_f = (Dl.call1 so_symbol__PhoneNumber_SerializeWithCachedSizes_f :  c_obj list -> c_obj list );;
# 167 "phonenumberutil.ml"

let _PhoneNumber_SerializeWithCachedSizes arg = match _PhoneNumber_SerializeWithCachedSizes_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_GetCachedSize_f = Dl.dl_sym so_library "_wrap_PhoneNumber_GetCachedSizephonenumberutil";;
# 173 "phonenumberutil.ml"
let _PhoneNumber_GetCachedSize_f = (Dl.call1 so_symbol__PhoneNumber_GetCachedSize_f :  c_obj list -> c_obj list );;
# 173 "phonenumberutil.ml"

let _PhoneNumber_GetCachedSize arg = match _PhoneNumber_GetCachedSize_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_GetTypeName_f = Dl.dl_sym so_library "_wrap_PhoneNumber_GetTypeNamephonenumberutil";;
# 179 "phonenumberutil.ml"
let _PhoneNumber_GetTypeName_f = (Dl.call1 so_symbol__PhoneNumber_GetTypeName_f :  c_obj list -> c_obj list );;
# 179 "phonenumberutil.ml"

let _PhoneNumber_GetTypeName arg = match _PhoneNumber_GetTypeName_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
external _PhoneNumber_FROM_NUMBER_WITH_PLUS_SIGN : c_obj -> Swig.c_obj = "_wrap_PhoneNumber_FROM_NUMBER_WITH_PLUS_SIGN" 
external _PhoneNumber_FROM_NUMBER_WITH_IDD : c_obj -> Swig.c_obj = "_wrap_PhoneNumber_FROM_NUMBER_WITH_IDD" 
external _PhoneNumber_FROM_NUMBER_WITHOUT_PLUS_SIGN : c_obj -> Swig.c_obj = "_wrap_PhoneNumber_FROM_NUMBER_WITHOUT_PLUS_SIGN" 
external _PhoneNumber_FROM_DEFAULT_COUNTRY : c_obj -> Swig.c_obj = "_wrap_PhoneNumber_FROM_DEFAULT_COUNTRY" 
let so_symbol__PhoneNumber_CountryCodeSource_IsValid_f = Dl.dl_sym so_library "_wrap_PhoneNumber_CountryCodeSource_IsValidphonenumberutil";;
# 189 "phonenumberutil.ml"
let _PhoneNumber_CountryCodeSource_IsValid_f = (Dl.call1 so_symbol__PhoneNumber_CountryCodeSource_IsValid_f :  c_obj list -> c_obj list );;
# 189 "phonenumberutil.ml"

let _PhoneNumber_CountryCodeSource_IsValid arg = match _PhoneNumber_CountryCodeSource_IsValid_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
external _PhoneNumber_CountryCodeSource_MIN : c_obj -> Swig.c_obj = "_wrap_PhoneNumber_CountryCodeSource_MIN" 
external _PhoneNumber_CountryCodeSource_MAX : c_obj -> Swig.c_obj = "_wrap_PhoneNumber_CountryCodeSource_MAX" 
external _PhoneNumber_CountryCodeSource_ARRAYSIZE : c_obj -> Swig.c_obj = "_wrap_PhoneNumber_CountryCodeSource_ARRAYSIZE" 
let so_symbol__PhoneNumber_has_country_code_f = Dl.dl_sym so_library "_wrap_PhoneNumber_has_country_codephonenumberutil";;
# 198 "phonenumberutil.ml"
let _PhoneNumber_has_country_code_f = (Dl.call1 so_symbol__PhoneNumber_has_country_code_f :  c_obj list -> c_obj list );;
# 198 "phonenumberutil.ml"

let _PhoneNumber_has_country_code arg = match _PhoneNumber_has_country_code_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_clear_country_code_f = Dl.dl_sym so_library "_wrap_PhoneNumber_clear_country_codephonenumberutil";;
# 204 "phonenumberutil.ml"
let _PhoneNumber_clear_country_code_f = (Dl.call1 so_symbol__PhoneNumber_clear_country_code_f :  c_obj list -> c_obj list );;
# 204 "phonenumberutil.ml"

let _PhoneNumber_clear_country_code arg = match _PhoneNumber_clear_country_code_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
external _PhoneNumber_kCountryCodeFieldNumber : c_obj -> Swig.c_obj = "_wrap_PhoneNumber_kCountryCodeFieldNumber" 
let so_symbol__PhoneNumber_country_code_f = Dl.dl_sym so_library "_wrap_PhoneNumber_country_codephonenumberutil";;
# 211 "phonenumberutil.ml"
let _PhoneNumber_country_code_f = (Dl.call1 so_symbol__PhoneNumber_country_code_f :  c_obj list -> c_obj list );;
# 211 "phonenumberutil.ml"

let _PhoneNumber_country_code arg = match _PhoneNumber_country_code_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_set_country_code_f = Dl.dl_sym so_library "_wrap_PhoneNumber_set_country_codephonenumberutil";;
# 217 "phonenumberutil.ml"
let _PhoneNumber_set_country_code_f = (Dl.call1 so_symbol__PhoneNumber_set_country_code_f :  c_obj list -> c_obj list );;
# 217 "phonenumberutil.ml"

let _PhoneNumber_set_country_code arg = match _PhoneNumber_set_country_code_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_has_national_number_f = Dl.dl_sym so_library "_wrap_PhoneNumber_has_national_numberphonenumberutil";;
# 223 "phonenumberutil.ml"
let _PhoneNumber_has_national_number_f = (Dl.call1 so_symbol__PhoneNumber_has_national_number_f :  c_obj list -> c_obj list );;
# 223 "phonenumberutil.ml"

let _PhoneNumber_has_national_number arg = match _PhoneNumber_has_national_number_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_clear_national_number_f = Dl.dl_sym so_library "_wrap_PhoneNumber_clear_national_numberphonenumberutil";;
# 229 "phonenumberutil.ml"
let _PhoneNumber_clear_national_number_f = (Dl.call1 so_symbol__PhoneNumber_clear_national_number_f :  c_obj list -> c_obj list );;
# 229 "phonenumberutil.ml"

let _PhoneNumber_clear_national_number arg = match _PhoneNumber_clear_national_number_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
external _PhoneNumber_kNationalNumberFieldNumber : c_obj -> Swig.c_obj = "_wrap_PhoneNumber_kNationalNumberFieldNumber" 
let so_symbol__PhoneNumber_national_number_f = Dl.dl_sym so_library "_wrap_PhoneNumber_national_numberphonenumberutil";;
# 236 "phonenumberutil.ml"
let _PhoneNumber_national_number_f = (Dl.call1 so_symbol__PhoneNumber_national_number_f :  c_obj list -> c_obj list );;
# 236 "phonenumberutil.ml"

let _PhoneNumber_national_number arg = match _PhoneNumber_national_number_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_set_national_number_f = Dl.dl_sym so_library "_wrap_PhoneNumber_set_national_numberphonenumberutil";;
# 242 "phonenumberutil.ml"
let _PhoneNumber_set_national_number_f = (Dl.call1 so_symbol__PhoneNumber_set_national_number_f :  c_obj list -> c_obj list );;
# 242 "phonenumberutil.ml"

let _PhoneNumber_set_national_number arg = match _PhoneNumber_set_national_number_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_has_extension_f = Dl.dl_sym so_library "_wrap_PhoneNumber_has_extensionphonenumberutil";;
# 248 "phonenumberutil.ml"
let _PhoneNumber_has_extension_f = (Dl.call1 so_symbol__PhoneNumber_has_extension_f :  c_obj list -> c_obj list );;
# 248 "phonenumberutil.ml"

let _PhoneNumber_has_extension arg = match _PhoneNumber_has_extension_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_clear_extension_f = Dl.dl_sym so_library "_wrap_PhoneNumber_clear_extensionphonenumberutil";;
# 254 "phonenumberutil.ml"
let _PhoneNumber_clear_extension_f = (Dl.call1 so_symbol__PhoneNumber_clear_extension_f :  c_obj list -> c_obj list );;
# 254 "phonenumberutil.ml"

let _PhoneNumber_clear_extension arg = match _PhoneNumber_clear_extension_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
external _PhoneNumber_kExtensionFieldNumber : c_obj -> Swig.c_obj = "_wrap_PhoneNumber_kExtensionFieldNumber" 
let so_symbol__PhoneNumber_extension_f = Dl.dl_sym so_library "_wrap_PhoneNumber_extensionphonenumberutil";;
# 261 "phonenumberutil.ml"
let _PhoneNumber_extension_f = (Dl.call1 so_symbol__PhoneNumber_extension_f :  c_obj list -> c_obj list );;
# 261 "phonenumberutil.ml"

let _PhoneNumber_extension arg = match _PhoneNumber_extension_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_set_extension_f = Dl.dl_sym so_library "_wrap_PhoneNumber_set_extension__SWIG_0phonenumberutil";;
# 267 "phonenumberutil.ml"
let _PhoneNumber_set_extension_f = (Dl.call1 so_symbol__PhoneNumber_set_extension_f :  c_obj list -> c_obj list );;
# 267 "phonenumberutil.ml"

let _PhoneNumber_set_extension arg = match _PhoneNumber_set_extension_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_set_extension_f = Dl.dl_sym so_library "_wrap_PhoneNumber_set_extension__SWIG_1phonenumberutil";;
# 273 "phonenumberutil.ml"
let _PhoneNumber_set_extension_f = (Dl.call1 so_symbol__PhoneNumber_set_extension_f :  c_obj list -> c_obj list );;
# 273 "phonenumberutil.ml"

let _PhoneNumber_set_extension arg = match _PhoneNumber_set_extension_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_set_extension_f = Dl.dl_sym so_library "_wrap_PhoneNumber_set_extensionphonenumberutil";;
# 279 "phonenumberutil.ml"
let _PhoneNumber_set_extension_f = (Dl.call1 so_symbol__PhoneNumber_set_extension_f :  c_obj list -> c_obj list );;
# 279 "phonenumberutil.ml"

let _PhoneNumber_set_extension arg = match _PhoneNumber_set_extension_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_mutable_extension_f = Dl.dl_sym so_library "_wrap_PhoneNumber_mutable_extensionphonenumberutil";;
# 285 "phonenumberutil.ml"
let _PhoneNumber_mutable_extension_f = (Dl.call1 so_symbol__PhoneNumber_mutable_extension_f :  c_obj list -> c_obj list );;
# 285 "phonenumberutil.ml"

let _PhoneNumber_mutable_extension arg = match _PhoneNumber_mutable_extension_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_release_extension_f = Dl.dl_sym so_library "_wrap_PhoneNumber_release_extensionphonenumberutil";;
# 291 "phonenumberutil.ml"
let _PhoneNumber_release_extension_f = (Dl.call1 so_symbol__PhoneNumber_release_extension_f :  c_obj list -> c_obj list );;
# 291 "phonenumberutil.ml"

let _PhoneNumber_release_extension arg = match _PhoneNumber_release_extension_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_has_italian_leading_zero_f = Dl.dl_sym so_library "_wrap_PhoneNumber_has_italian_leading_zerophonenumberutil";;
# 297 "phonenumberutil.ml"
let _PhoneNumber_has_italian_leading_zero_f = (Dl.call1 so_symbol__PhoneNumber_has_italian_leading_zero_f :  c_obj list -> c_obj list );;
# 297 "phonenumberutil.ml"

let _PhoneNumber_has_italian_leading_zero arg = match _PhoneNumber_has_italian_leading_zero_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_clear_italian_leading_zero_f = Dl.dl_sym so_library "_wrap_PhoneNumber_clear_italian_leading_zerophonenumberutil";;
# 303 "phonenumberutil.ml"
let _PhoneNumber_clear_italian_leading_zero_f = (Dl.call1 so_symbol__PhoneNumber_clear_italian_leading_zero_f :  c_obj list -> c_obj list );;
# 303 "phonenumberutil.ml"

let _PhoneNumber_clear_italian_leading_zero arg = match _PhoneNumber_clear_italian_leading_zero_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
external _PhoneNumber_kItalianLeadingZeroFieldNumber : c_obj -> Swig.c_obj = "_wrap_PhoneNumber_kItalianLeadingZeroFieldNumber" 
let so_symbol__PhoneNumber_italian_leading_zero_f = Dl.dl_sym so_library "_wrap_PhoneNumber_italian_leading_zerophonenumberutil";;
# 310 "phonenumberutil.ml"
let _PhoneNumber_italian_leading_zero_f = (Dl.call1 so_symbol__PhoneNumber_italian_leading_zero_f :  c_obj list -> c_obj list );;
# 310 "phonenumberutil.ml"

let _PhoneNumber_italian_leading_zero arg = match _PhoneNumber_italian_leading_zero_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_set_italian_leading_zero_f = Dl.dl_sym so_library "_wrap_PhoneNumber_set_italian_leading_zerophonenumberutil";;
# 316 "phonenumberutil.ml"
let _PhoneNumber_set_italian_leading_zero_f = (Dl.call1 so_symbol__PhoneNumber_set_italian_leading_zero_f :  c_obj list -> c_obj list );;
# 316 "phonenumberutil.ml"

let _PhoneNumber_set_italian_leading_zero arg = match _PhoneNumber_set_italian_leading_zero_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_has_raw_input_f = Dl.dl_sym so_library "_wrap_PhoneNumber_has_raw_inputphonenumberutil";;
# 322 "phonenumberutil.ml"
let _PhoneNumber_has_raw_input_f = (Dl.call1 so_symbol__PhoneNumber_has_raw_input_f :  c_obj list -> c_obj list );;
# 322 "phonenumberutil.ml"

let _PhoneNumber_has_raw_input arg = match _PhoneNumber_has_raw_input_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_clear_raw_input_f = Dl.dl_sym so_library "_wrap_PhoneNumber_clear_raw_inputphonenumberutil";;
# 328 "phonenumberutil.ml"
let _PhoneNumber_clear_raw_input_f = (Dl.call1 so_symbol__PhoneNumber_clear_raw_input_f :  c_obj list -> c_obj list );;
# 328 "phonenumberutil.ml"

let _PhoneNumber_clear_raw_input arg = match _PhoneNumber_clear_raw_input_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
external _PhoneNumber_kRawInputFieldNumber : c_obj -> Swig.c_obj = "_wrap_PhoneNumber_kRawInputFieldNumber" 
let so_symbol__PhoneNumber_raw_input_f = Dl.dl_sym so_library "_wrap_PhoneNumber_raw_inputphonenumberutil";;
# 335 "phonenumberutil.ml"
let _PhoneNumber_raw_input_f = (Dl.call1 so_symbol__PhoneNumber_raw_input_f :  c_obj list -> c_obj list );;
# 335 "phonenumberutil.ml"

let _PhoneNumber_raw_input arg = match _PhoneNumber_raw_input_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_set_raw_input_f = Dl.dl_sym so_library "_wrap_PhoneNumber_set_raw_input__SWIG_0phonenumberutil";;
# 341 "phonenumberutil.ml"
let _PhoneNumber_set_raw_input_f = (Dl.call1 so_symbol__PhoneNumber_set_raw_input_f :  c_obj list -> c_obj list );;
# 341 "phonenumberutil.ml"

let _PhoneNumber_set_raw_input arg = match _PhoneNumber_set_raw_input_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_set_raw_input_f = Dl.dl_sym so_library "_wrap_PhoneNumber_set_raw_input__SWIG_1phonenumberutil";;
# 347 "phonenumberutil.ml"
let _PhoneNumber_set_raw_input_f = (Dl.call1 so_symbol__PhoneNumber_set_raw_input_f :  c_obj list -> c_obj list );;
# 347 "phonenumberutil.ml"

let _PhoneNumber_set_raw_input arg = match _PhoneNumber_set_raw_input_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_set_raw_input_f = Dl.dl_sym so_library "_wrap_PhoneNumber_set_raw_inputphonenumberutil";;
# 353 "phonenumberutil.ml"
let _PhoneNumber_set_raw_input_f = (Dl.call1 so_symbol__PhoneNumber_set_raw_input_f :  c_obj list -> c_obj list );;
# 353 "phonenumberutil.ml"

let _PhoneNumber_set_raw_input arg = match _PhoneNumber_set_raw_input_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_mutable_raw_input_f = Dl.dl_sym so_library "_wrap_PhoneNumber_mutable_raw_inputphonenumberutil";;
# 359 "phonenumberutil.ml"
let _PhoneNumber_mutable_raw_input_f = (Dl.call1 so_symbol__PhoneNumber_mutable_raw_input_f :  c_obj list -> c_obj list );;
# 359 "phonenumberutil.ml"

let _PhoneNumber_mutable_raw_input arg = match _PhoneNumber_mutable_raw_input_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_release_raw_input_f = Dl.dl_sym so_library "_wrap_PhoneNumber_release_raw_inputphonenumberutil";;
# 365 "phonenumberutil.ml"
let _PhoneNumber_release_raw_input_f = (Dl.call1 so_symbol__PhoneNumber_release_raw_input_f :  c_obj list -> c_obj list );;
# 365 "phonenumberutil.ml"

let _PhoneNumber_release_raw_input arg = match _PhoneNumber_release_raw_input_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_has_country_code_source_f = Dl.dl_sym so_library "_wrap_PhoneNumber_has_country_code_sourcephonenumberutil";;
# 371 "phonenumberutil.ml"
let _PhoneNumber_has_country_code_source_f = (Dl.call1 so_symbol__PhoneNumber_has_country_code_source_f :  c_obj list -> c_obj list );;
# 371 "phonenumberutil.ml"

let _PhoneNumber_has_country_code_source arg = match _PhoneNumber_has_country_code_source_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_clear_country_code_source_f = Dl.dl_sym so_library "_wrap_PhoneNumber_clear_country_code_sourcephonenumberutil";;
# 377 "phonenumberutil.ml"
let _PhoneNumber_clear_country_code_source_f = (Dl.call1 so_symbol__PhoneNumber_clear_country_code_source_f :  c_obj list -> c_obj list );;
# 377 "phonenumberutil.ml"

let _PhoneNumber_clear_country_code_source arg = match _PhoneNumber_clear_country_code_source_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
external _PhoneNumber_kCountryCodeSourceFieldNumber : c_obj -> Swig.c_obj = "_wrap_PhoneNumber_kCountryCodeSourceFieldNumber" 
let so_symbol__PhoneNumber_country_code_source_f = Dl.dl_sym so_library "_wrap_PhoneNumber_country_code_sourcephonenumberutil";;
# 384 "phonenumberutil.ml"
let _PhoneNumber_country_code_source_f = (Dl.call1 so_symbol__PhoneNumber_country_code_source_f :  c_obj list -> c_obj list );;
# 384 "phonenumberutil.ml"

let _PhoneNumber_country_code_source arg = match _PhoneNumber_country_code_source_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_set_country_code_source_f = Dl.dl_sym so_library "_wrap_PhoneNumber_set_country_code_sourcephonenumberutil";;
# 390 "phonenumberutil.ml"
let _PhoneNumber_set_country_code_source_f = (Dl.call1 so_symbol__PhoneNumber_set_country_code_source_f :  c_obj list -> c_obj list );;
# 390 "phonenumberutil.ml"

let _PhoneNumber_set_country_code_source arg = match _PhoneNumber_set_country_code_source_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_has_preferred_domestic_carrier_code_f = Dl.dl_sym so_library "_wrap_PhoneNumber_has_preferred_domestic_carrier_codephonenumberutil";;
# 396 "phonenumberutil.ml"
let _PhoneNumber_has_preferred_domestic_carrier_code_f = (Dl.call1 so_symbol__PhoneNumber_has_preferred_domestic_carrier_code_f :  c_obj list -> c_obj list );;
# 396 "phonenumberutil.ml"

let _PhoneNumber_has_preferred_domestic_carrier_code arg = match _PhoneNumber_has_preferred_domestic_carrier_code_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_clear_preferred_domestic_carrier_code_f = Dl.dl_sym so_library "_wrap_PhoneNumber_clear_preferred_domestic_carrier_codephonenumberutil";;
# 402 "phonenumberutil.ml"
let _PhoneNumber_clear_preferred_domestic_carrier_code_f = (Dl.call1 so_symbol__PhoneNumber_clear_preferred_domestic_carrier_code_f :  c_obj list -> c_obj list );;
# 402 "phonenumberutil.ml"

let _PhoneNumber_clear_preferred_domestic_carrier_code arg = match _PhoneNumber_clear_preferred_domestic_carrier_code_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
external _PhoneNumber_kPreferredDomesticCarrierCodeFieldNumber : c_obj -> Swig.c_obj = "_wrap_PhoneNumber_kPreferredDomesticCarrierCodeFieldNumber" 
let so_symbol__PhoneNumber_preferred_domestic_carrier_code_f = Dl.dl_sym so_library "_wrap_PhoneNumber_preferred_domestic_carrier_codephonenumberutil";;
# 409 "phonenumberutil.ml"
let _PhoneNumber_preferred_domestic_carrier_code_f = (Dl.call1 so_symbol__PhoneNumber_preferred_domestic_carrier_code_f :  c_obj list -> c_obj list );;
# 409 "phonenumberutil.ml"

let _PhoneNumber_preferred_domestic_carrier_code arg = match _PhoneNumber_preferred_domestic_carrier_code_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_set_preferred_domestic_carrier_code_f = Dl.dl_sym so_library "_wrap_PhoneNumber_set_preferred_domestic_carrier_code__SWIG_0phonenumberutil";;
# 415 "phonenumberutil.ml"
let _PhoneNumber_set_preferred_domestic_carrier_code_f = (Dl.call1 so_symbol__PhoneNumber_set_preferred_domestic_carrier_code_f :  c_obj list -> c_obj list );;
# 415 "phonenumberutil.ml"

let _PhoneNumber_set_preferred_domestic_carrier_code arg = match _PhoneNumber_set_preferred_domestic_carrier_code_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_set_preferred_domestic_carrier_code_f = Dl.dl_sym so_library "_wrap_PhoneNumber_set_preferred_domestic_carrier_code__SWIG_1phonenumberutil";;
# 421 "phonenumberutil.ml"
let _PhoneNumber_set_preferred_domestic_carrier_code_f = (Dl.call1 so_symbol__PhoneNumber_set_preferred_domestic_carrier_code_f :  c_obj list -> c_obj list );;
# 421 "phonenumberutil.ml"

let _PhoneNumber_set_preferred_domestic_carrier_code arg = match _PhoneNumber_set_preferred_domestic_carrier_code_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_set_preferred_domestic_carrier_code_f = Dl.dl_sym so_library "_wrap_PhoneNumber_set_preferred_domestic_carrier_codephonenumberutil";;
# 427 "phonenumberutil.ml"
let _PhoneNumber_set_preferred_domestic_carrier_code_f = (Dl.call1 so_symbol__PhoneNumber_set_preferred_domestic_carrier_code_f :  c_obj list -> c_obj list );;
# 427 "phonenumberutil.ml"

let _PhoneNumber_set_preferred_domestic_carrier_code arg = match _PhoneNumber_set_preferred_domestic_carrier_code_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_mutable_preferred_domestic_carrier_code_f = Dl.dl_sym so_library "_wrap_PhoneNumber_mutable_preferred_domestic_carrier_codephonenumberutil";;
# 433 "phonenumberutil.ml"
let _PhoneNumber_mutable_preferred_domestic_carrier_code_f = (Dl.call1 so_symbol__PhoneNumber_mutable_preferred_domestic_carrier_code_f :  c_obj list -> c_obj list );;
# 433 "phonenumberutil.ml"

let _PhoneNumber_mutable_preferred_domestic_carrier_code arg = match _PhoneNumber_mutable_preferred_domestic_carrier_code_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumber_release_preferred_domestic_carrier_code_f = Dl.dl_sym so_library "_wrap_PhoneNumber_release_preferred_domestic_carrier_codephonenumberutil";;
# 439 "phonenumberutil.ml"
let _PhoneNumber_release_preferred_domestic_carrier_code_f = (Dl.call1 so_symbol__PhoneNumber_release_preferred_domestic_carrier_code_f :  c_obj list -> c_obj list );;
# 439 "phonenumberutil.ml"

let _PhoneNumber_release_preferred_domestic_carrier_code arg = match _PhoneNumber_release_preferred_domestic_carrier_code_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__delete_PhoneNumberUtilSingleton_f = Dl.dl_sym so_library "_wrap_delete_PhoneNumberUtilSingletonphonenumberutil";;
# 445 "phonenumberutil.ml"
let _delete_PhoneNumberUtilSingleton_f = (Dl.call1 so_symbol__delete_PhoneNumberUtilSingleton_f :  c_obj list -> c_obj list );;
# 445 "phonenumberutil.ml"

let _delete_PhoneNumberUtilSingleton arg = match _delete_PhoneNumberUtilSingleton_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtilSingleton_GetInstance_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtilSingleton_GetInstancephonenumberutil";;
# 451 "phonenumberutil.ml"
let _PhoneNumberUtilSingleton_GetInstance_f = (Dl.call1 so_symbol__PhoneNumberUtilSingleton_GetInstance_f :  c_obj list -> c_obj list );;
# 451 "phonenumberutil.ml"

let _PhoneNumberUtilSingleton_GetInstance arg = match _PhoneNumberUtilSingleton_GetInstance_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__new_PhoneNumberUtilSingleton_f = Dl.dl_sym so_library "_wrap_new_PhoneNumberUtilSingletonphonenumberutil";;
# 457 "phonenumberutil.ml"
let _new_PhoneNumberUtilSingleton_f = (Dl.call1 so_symbol__new_PhoneNumberUtilSingleton_f :  c_obj list -> c_obj list );;
# 457 "phonenumberutil.ml"

let _new_PhoneNumberUtilSingleton arg = match _new_PhoneNumberUtilSingleton_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if true then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__delete_PhoneNumberUtil_f = Dl.dl_sym so_library "_wrap_delete_PhoneNumberUtilphonenumberutil";;
# 463 "phonenumberutil.ml"
let _delete_PhoneNumberUtil_f = (Dl.call1 so_symbol__delete_PhoneNumberUtil_f :  c_obj list -> c_obj list );;
# 463 "phonenumberutil.ml"

let _delete_PhoneNumberUtil arg = match _delete_PhoneNumberUtil_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
external _PhoneNumberUtil_kRegionCodeForNonGeoEntity : c_obj -> Swig.c_obj = "_wrap_PhoneNumberUtil_kRegionCodeForNonGeoEntity" 
let _ = Callback.register "i18n::phonenumbers::PhoneNumberUtil::PhoneNumberFormat_marker" (`PhoneNumberFormat)
external _E164 : c_obj -> Swig.c_obj = "_wrap_E164" 
external _INTERNATIONAL : c_obj -> Swig.c_obj = "_wrap_INTERNATIONAL" 
external _NATIONAL : c_obj -> Swig.c_obj = "_wrap_NATIONAL" 
external _RFC3966 : c_obj -> Swig.c_obj = "_wrap_RFC3966" 
let _ = Callback.register "i18n::phonenumbers::PhoneNumberUtil::PhoneNumberType_marker" (`PhoneNumberType)
external _FIXED_LINE : c_obj -> Swig.c_obj = "_wrap_FIXED_LINE" 
external _MOBILE : c_obj -> Swig.c_obj = "_wrap_MOBILE" 
external _FIXED_LINE_OR_MOBILE : c_obj -> Swig.c_obj = "_wrap_FIXED_LINE_OR_MOBILE" 
external _TOLL_FREE : c_obj -> Swig.c_obj = "_wrap_TOLL_FREE" 
external _PREMIUM_RATE : c_obj -> Swig.c_obj = "_wrap_PREMIUM_RATE" 
external _SHARED_COST : c_obj -> Swig.c_obj = "_wrap_SHARED_COST" 
external _VOIP : c_obj -> Swig.c_obj = "_wrap_VOIP" 
external _PERSONAL_NUMBER : c_obj -> Swig.c_obj = "_wrap_PERSONAL_NUMBER" 
external _PAGER : c_obj -> Swig.c_obj = "_wrap_PAGER" 
external _UAN : c_obj -> Swig.c_obj = "_wrap_UAN" 
external _VOICEMAIL : c_obj -> Swig.c_obj = "_wrap_VOICEMAIL" 
external _UNKNOWN : c_obj -> Swig.c_obj = "_wrap_UNKNOWN" 
let _ = Callback.register "i18n::phonenumbers::PhoneNumberUtil::MatchType_marker" (`MatchType)
external _INVALID_NUMBER : c_obj -> Swig.c_obj = "_wrap_INVALID_NUMBER" 
external _NO_MATCH : c_obj -> Swig.c_obj = "_wrap_NO_MATCH" 
external _SHORT_NSN_MATCH : c_obj -> Swig.c_obj = "_wrap_SHORT_NSN_MATCH" 
external _NSN_MATCH : c_obj -> Swig.c_obj = "_wrap_NSN_MATCH" 
external _EXACT_MATCH : c_obj -> Swig.c_obj = "_wrap_EXACT_MATCH" 
let _ = Callback.register "i18n::phonenumbers::PhoneNumberUtil::ErrorType_marker" (`ErrorType)
external _NO_PARSING_ERROR : c_obj -> Swig.c_obj = "_wrap_NO_PARSING_ERROR" 
external _INVALID_COUNTRY_CODE_ERROR : c_obj -> Swig.c_obj = "_wrap_INVALID_COUNTRY_CODE_ERROR" 
external _NOT_A_NUMBER : c_obj -> Swig.c_obj = "_wrap_NOT_A_NUMBER" 
external _TOO_SHORT_AFTER_IDD : c_obj -> Swig.c_obj = "_wrap_TOO_SHORT_AFTER_IDD" 
external _TOO_SHORT_NSN : c_obj -> Swig.c_obj = "_wrap_TOO_SHORT_NSN" 
external _TOO_LONG_NSN : c_obj -> Swig.c_obj = "_wrap_TOO_LONG_NSN" 
let _ = Callback.register "i18n::phonenumbers::PhoneNumberUtil::ValidationResult_marker" (`ValidationResult)
external _IS_POSSIBLE : c_obj -> Swig.c_obj = "_wrap_IS_POSSIBLE" 
external _INVALID_COUNTRY_CODE : c_obj -> Swig.c_obj = "_wrap_INVALID_COUNTRY_CODE" 
external _TOO_SHORT : c_obj -> Swig.c_obj = "_wrap_TOO_SHORT" 
external _TOO_LONG : c_obj -> Swig.c_obj = "_wrap_TOO_LONG" 
let so_symbol__PhoneNumberUtil_IsAlphaNumber_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_IsAlphaNumberphonenumberutil";;
# 506 "phonenumberutil.ml"
let _PhoneNumberUtil_IsAlphaNumber_f = (Dl.call1 so_symbol__PhoneNumberUtil_IsAlphaNumber_f :  c_obj list -> c_obj list );;
# 506 "phonenumberutil.ml"

let _PhoneNumberUtil_IsAlphaNumber arg = match _PhoneNumberUtil_IsAlphaNumber_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_ConvertAlphaCharactersInNumber_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_ConvertAlphaCharactersInNumberphonenumberutil";;
# 512 "phonenumberutil.ml"
let _PhoneNumberUtil_ConvertAlphaCharactersInNumber_f = (Dl.call1 so_symbol__PhoneNumberUtil_ConvertAlphaCharactersInNumber_f :  c_obj list -> c_obj list );;
# 512 "phonenumberutil.ml"

let _PhoneNumberUtil_ConvertAlphaCharactersInNumber arg = match _PhoneNumberUtil_ConvertAlphaCharactersInNumber_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_NormalizeDigitsOnly_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_NormalizeDigitsOnlyphonenumberutil";;
# 518 "phonenumberutil.ml"
let _PhoneNumberUtil_NormalizeDigitsOnly_f = (Dl.call1 so_symbol__PhoneNumberUtil_NormalizeDigitsOnly_f :  c_obj list -> c_obj list );;
# 518 "phonenumberutil.ml"

let _PhoneNumberUtil_NormalizeDigitsOnly arg = match _PhoneNumberUtil_NormalizeDigitsOnly_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_GetNationalSignificantNumber_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_GetNationalSignificantNumber__SWIG_0phonenumberutil";;
# 524 "phonenumberutil.ml"
let _PhoneNumberUtil_GetNationalSignificantNumber_f = (Dl.call1 so_symbol__PhoneNumberUtil_GetNationalSignificantNumber_f :  c_obj list -> c_obj list );;
# 524 "phonenumberutil.ml"

let _PhoneNumberUtil_GetNationalSignificantNumber arg = match _PhoneNumberUtil_GetNationalSignificantNumber_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_GetLengthOfGeographicalAreaCode_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_GetLengthOfGeographicalAreaCodephonenumberutil";;
# 530 "phonenumberutil.ml"
let _PhoneNumberUtil_GetLengthOfGeographicalAreaCode_f = (Dl.call1 so_symbol__PhoneNumberUtil_GetLengthOfGeographicalAreaCode_f :  c_obj list -> c_obj list );;
# 530 "phonenumberutil.ml"

let _PhoneNumberUtil_GetLengthOfGeographicalAreaCode arg = match _PhoneNumberUtil_GetLengthOfGeographicalAreaCode_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_GetLengthOfNationalDestinationCode_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_GetLengthOfNationalDestinationCodephonenumberutil";;
# 536 "phonenumberutil.ml"
let _PhoneNumberUtil_GetLengthOfNationalDestinationCode_f = (Dl.call1 so_symbol__PhoneNumberUtil_GetLengthOfNationalDestinationCode_f :  c_obj list -> c_obj list );;
# 536 "phonenumberutil.ml"

let _PhoneNumberUtil_GetLengthOfNationalDestinationCode arg = match _PhoneNumberUtil_GetLengthOfNationalDestinationCode_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_Format_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_Format__SWIG_0phonenumberutil";;
# 542 "phonenumberutil.ml"
let _PhoneNumberUtil_Format_f = (Dl.call1 so_symbol__PhoneNumberUtil_Format_f :  c_obj list -> c_obj list );;
# 542 "phonenumberutil.ml"

let _PhoneNumberUtil_Format arg = match _PhoneNumberUtil_Format_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_FormatNationalNumberWithCarrierCode_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_FormatNationalNumberWithCarrierCode__SWIG_0phonenumberutil";;
# 548 "phonenumberutil.ml"
let _PhoneNumberUtil_FormatNationalNumberWithCarrierCode_f = (Dl.call1 so_symbol__PhoneNumberUtil_FormatNationalNumberWithCarrierCode_f :  c_obj list -> c_obj list );;
# 548 "phonenumberutil.ml"

let _PhoneNumberUtil_FormatNationalNumberWithCarrierCode arg = match _PhoneNumberUtil_FormatNationalNumberWithCarrierCode_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_FormatNationalNumberWithPreferredCarrierCode_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_FormatNationalNumberWithPreferredCarrierCode__SWIG_0phonenumberutil";;
# 554 "phonenumberutil.ml"
let _PhoneNumberUtil_FormatNationalNumberWithPreferredCarrierCode_f = (Dl.call1 so_symbol__PhoneNumberUtil_FormatNationalNumberWithPreferredCarrierCode_f :  c_obj list -> c_obj list );;
# 554 "phonenumberutil.ml"

let _PhoneNumberUtil_FormatNationalNumberWithPreferredCarrierCode arg = match _PhoneNumberUtil_FormatNationalNumberWithPreferredCarrierCode_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_FormatNumberForMobileDialing_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_FormatNumberForMobileDialing__SWIG_0phonenumberutil";;
# 560 "phonenumberutil.ml"
let _PhoneNumberUtil_FormatNumberForMobileDialing_f = (Dl.call1 so_symbol__PhoneNumberUtil_FormatNumberForMobileDialing_f :  c_obj list -> c_obj list );;
# 560 "phonenumberutil.ml"

let _PhoneNumberUtil_FormatNumberForMobileDialing arg = match _PhoneNumberUtil_FormatNumberForMobileDialing_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_FormatOutOfCountryCallingNumber_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_FormatOutOfCountryCallingNumber__SWIG_0phonenumberutil";;
# 566 "phonenumberutil.ml"
let _PhoneNumberUtil_FormatOutOfCountryCallingNumber_f = (Dl.call1 so_symbol__PhoneNumberUtil_FormatOutOfCountryCallingNumber_f :  c_obj list -> c_obj list );;
# 566 "phonenumberutil.ml"

let _PhoneNumberUtil_FormatOutOfCountryCallingNumber arg = match _PhoneNumberUtil_FormatOutOfCountryCallingNumber_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_FormatInOriginalFormat_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_FormatInOriginalFormat__SWIG_0phonenumberutil";;
# 572 "phonenumberutil.ml"
let _PhoneNumberUtil_FormatInOriginalFormat_f = (Dl.call1 so_symbol__PhoneNumberUtil_FormatInOriginalFormat_f :  c_obj list -> c_obj list );;
# 572 "phonenumberutil.ml"

let _PhoneNumberUtil_FormatInOriginalFormat arg = match _PhoneNumberUtil_FormatInOriginalFormat_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_FormatOutOfCountryKeepingAlphaChars_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_FormatOutOfCountryKeepingAlphaChars__SWIG_0phonenumberutil";;
# 578 "phonenumberutil.ml"
let _PhoneNumberUtil_FormatOutOfCountryKeepingAlphaChars_f = (Dl.call1 so_symbol__PhoneNumberUtil_FormatOutOfCountryKeepingAlphaChars_f :  c_obj list -> c_obj list );;
# 578 "phonenumberutil.ml"

let _PhoneNumberUtil_FormatOutOfCountryKeepingAlphaChars arg = match _PhoneNumberUtil_FormatOutOfCountryKeepingAlphaChars_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_TruncateTooLongNumber_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_TruncateTooLongNumberphonenumberutil";;
# 584 "phonenumberutil.ml"
let _PhoneNumberUtil_TruncateTooLongNumber_f = (Dl.call1 so_symbol__PhoneNumberUtil_TruncateTooLongNumber_f :  c_obj list -> c_obj list );;
# 584 "phonenumberutil.ml"

let _PhoneNumberUtil_TruncateTooLongNumber arg = match _PhoneNumberUtil_TruncateTooLongNumber_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_GetNumberType_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_GetNumberTypephonenumberutil";;
# 590 "phonenumberutil.ml"
let _PhoneNumberUtil_GetNumberType_f = (Dl.call1 so_symbol__PhoneNumberUtil_GetNumberType_f :  c_obj list -> c_obj list );;
# 590 "phonenumberutil.ml"

let _PhoneNumberUtil_GetNumberType arg = match _PhoneNumberUtil_GetNumberType_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_IsValidNumber_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_IsValidNumberphonenumberutil";;
# 596 "phonenumberutil.ml"
let _PhoneNumberUtil_IsValidNumber_f = (Dl.call1 so_symbol__PhoneNumberUtil_IsValidNumber_f :  c_obj list -> c_obj list );;
# 596 "phonenumberutil.ml"

let _PhoneNumberUtil_IsValidNumber arg = match _PhoneNumberUtil_IsValidNumber_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_IsValidNumberForRegion_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_IsValidNumberForRegionphonenumberutil";;
# 602 "phonenumberutil.ml"
let _PhoneNumberUtil_IsValidNumberForRegion_f = (Dl.call1 so_symbol__PhoneNumberUtil_IsValidNumberForRegion_f :  c_obj list -> c_obj list );;
# 602 "phonenumberutil.ml"

let _PhoneNumberUtil_IsValidNumberForRegion arg = match _PhoneNumberUtil_IsValidNumberForRegion_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_GetRegionCodeForNumber_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_GetRegionCodeForNumber__SWIG_0phonenumberutil";;
# 608 "phonenumberutil.ml"
let _PhoneNumberUtil_GetRegionCodeForNumber_f = (Dl.call1 so_symbol__PhoneNumberUtil_GetRegionCodeForNumber_f :  c_obj list -> c_obj list );;
# 608 "phonenumberutil.ml"

let _PhoneNumberUtil_GetRegionCodeForNumber arg = match _PhoneNumberUtil_GetRegionCodeForNumber_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_GetCountryCodeForRegion_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_GetCountryCodeForRegionphonenumberutil";;
# 614 "phonenumberutil.ml"
let _PhoneNumberUtil_GetCountryCodeForRegion_f = (Dl.call1 so_symbol__PhoneNumberUtil_GetCountryCodeForRegion_f :  c_obj list -> c_obj list );;
# 614 "phonenumberutil.ml"

let _PhoneNumberUtil_GetCountryCodeForRegion arg = match _PhoneNumberUtil_GetCountryCodeForRegion_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_GetRegionCodeForCountryCode_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_GetRegionCodeForCountryCode__SWIG_0phonenumberutil";;
# 620 "phonenumberutil.ml"
let _PhoneNumberUtil_GetRegionCodeForCountryCode_f = (Dl.call1 so_symbol__PhoneNumberUtil_GetRegionCodeForCountryCode_f :  c_obj list -> c_obj list );;
# 620 "phonenumberutil.ml"

let _PhoneNumberUtil_GetRegionCodeForCountryCode arg = match _PhoneNumberUtil_GetRegionCodeForCountryCode_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_IsNANPACountry_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_IsNANPACountryphonenumberutil";;
# 626 "phonenumberutil.ml"
let _PhoneNumberUtil_IsNANPACountry_f = (Dl.call1 so_symbol__PhoneNumberUtil_IsNANPACountry_f :  c_obj list -> c_obj list );;
# 626 "phonenumberutil.ml"

let _PhoneNumberUtil_IsNANPACountry arg = match _PhoneNumberUtil_IsNANPACountry_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_GetNddPrefixForRegion_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_GetNddPrefixForRegion__SWIG_0phonenumberutil";;
# 632 "phonenumberutil.ml"
let _PhoneNumberUtil_GetNddPrefixForRegion_f = (Dl.call1 so_symbol__PhoneNumberUtil_GetNddPrefixForRegion_f :  c_obj list -> c_obj list );;
# 632 "phonenumberutil.ml"

let _PhoneNumberUtil_GetNddPrefixForRegion arg = match _PhoneNumberUtil_GetNddPrefixForRegion_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_IsPossibleNumberWithReason_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_IsPossibleNumberWithReasonphonenumberutil";;
# 638 "phonenumberutil.ml"
let _PhoneNumberUtil_IsPossibleNumberWithReason_f = (Dl.call1 so_symbol__PhoneNumberUtil_IsPossibleNumberWithReason_f :  c_obj list -> c_obj list );;
# 638 "phonenumberutil.ml"

let _PhoneNumberUtil_IsPossibleNumberWithReason arg = match _PhoneNumberUtil_IsPossibleNumberWithReason_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_IsPossibleNumber_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_IsPossibleNumberphonenumberutil";;
# 644 "phonenumberutil.ml"
let _PhoneNumberUtil_IsPossibleNumber_f = (Dl.call1 so_symbol__PhoneNumberUtil_IsPossibleNumber_f :  c_obj list -> c_obj list );;
# 644 "phonenumberutil.ml"

let _PhoneNumberUtil_IsPossibleNumber arg = match _PhoneNumberUtil_IsPossibleNumber_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_IsPossibleNumberForString_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_IsPossibleNumberForStringphonenumberutil";;
# 650 "phonenumberutil.ml"
let _PhoneNumberUtil_IsPossibleNumberForString_f = (Dl.call1 so_symbol__PhoneNumberUtil_IsPossibleNumberForString_f :  c_obj list -> c_obj list );;
# 650 "phonenumberutil.ml"

let _PhoneNumberUtil_IsPossibleNumberForString arg = match _PhoneNumberUtil_IsPossibleNumberForString_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_GetExampleNumber_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_GetExampleNumberphonenumberutil";;
# 656 "phonenumberutil.ml"
let _PhoneNumberUtil_GetExampleNumber_f = (Dl.call1 so_symbol__PhoneNumberUtil_GetExampleNumber_f :  c_obj list -> c_obj list );;
# 656 "phonenumberutil.ml"

let _PhoneNumberUtil_GetExampleNumber arg = match _PhoneNumberUtil_GetExampleNumber_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_GetExampleNumberForType_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_GetExampleNumberForTypephonenumberutil";;
# 662 "phonenumberutil.ml"
let _PhoneNumberUtil_GetExampleNumberForType_f = (Dl.call1 so_symbol__PhoneNumberUtil_GetExampleNumberForType_f :  c_obj list -> c_obj list );;
# 662 "phonenumberutil.ml"

let _PhoneNumberUtil_GetExampleNumberForType arg = match _PhoneNumberUtil_GetExampleNumberForType_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_GetExampleNumberForNonGeoEntity_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_GetExampleNumberForNonGeoEntityphonenumberutil";;
# 668 "phonenumberutil.ml"
let _PhoneNumberUtil_GetExampleNumberForNonGeoEntity_f = (Dl.call1 so_symbol__PhoneNumberUtil_GetExampleNumberForNonGeoEntity_f :  c_obj list -> c_obj list );;
# 668 "phonenumberutil.ml"

let _PhoneNumberUtil_GetExampleNumberForNonGeoEntity arg = match _PhoneNumberUtil_GetExampleNumberForNonGeoEntity_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_Parse_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_Parsephonenumberutil";;
# 674 "phonenumberutil.ml"
let _PhoneNumberUtil_Parse_f = (Dl.call1 so_symbol__PhoneNumberUtil_Parse_f :  c_obj list -> c_obj list );;
# 674 "phonenumberutil.ml"

let _PhoneNumberUtil_Parse arg = match _PhoneNumberUtil_Parse_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_ParseAndKeepRawInput_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_ParseAndKeepRawInputphonenumberutil";;
# 680 "phonenumberutil.ml"
let _PhoneNumberUtil_ParseAndKeepRawInput_f = (Dl.call1 so_symbol__PhoneNumberUtil_ParseAndKeepRawInput_f :  c_obj list -> c_obj list );;
# 680 "phonenumberutil.ml"

let _PhoneNumberUtil_ParseAndKeepRawInput arg = match _PhoneNumberUtil_ParseAndKeepRawInput_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_IsNumberMatch_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_IsNumberMatchphonenumberutil";;
# 686 "phonenumberutil.ml"
let _PhoneNumberUtil_IsNumberMatch_f = (Dl.call1 so_symbol__PhoneNumberUtil_IsNumberMatch_f :  c_obj list -> c_obj list );;
# 686 "phonenumberutil.ml"

let _PhoneNumberUtil_IsNumberMatch arg = match _PhoneNumberUtil_IsNumberMatch_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_IsNumberMatchWithTwoStrings_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_IsNumberMatchWithTwoStringsphonenumberutil";;
# 692 "phonenumberutil.ml"
let _PhoneNumberUtil_IsNumberMatchWithTwoStrings_f = (Dl.call1 so_symbol__PhoneNumberUtil_IsNumberMatchWithTwoStrings_f :  c_obj list -> c_obj list );;
# 692 "phonenumberutil.ml"

let _PhoneNumberUtil_IsNumberMatchWithTwoStrings arg = match _PhoneNumberUtil_IsNumberMatchWithTwoStrings_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_IsNumberMatchWithOneString_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_IsNumberMatchWithOneStringphonenumberutil";;
# 698 "phonenumberutil.ml"
let _PhoneNumberUtil_IsNumberMatchWithOneString_f = (Dl.call1 so_symbol__PhoneNumberUtil_IsNumberMatchWithOneString_f :  c_obj list -> c_obj list );;
# 698 "phonenumberutil.ml"

let _PhoneNumberUtil_IsNumberMatchWithOneString arg = match _PhoneNumberUtil_IsNumberMatchWithOneString_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil__IsAlphaNumber_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil__IsAlphaNumberphonenumberutil";;
# 704 "phonenumberutil.ml"
let _PhoneNumberUtil__IsAlphaNumber_f = (Dl.call1 so_symbol__PhoneNumberUtil__IsAlphaNumber_f :  c_obj list -> c_obj list );;
# 704 "phonenumberutil.ml"

let _PhoneNumberUtil__IsAlphaNumber arg = match _PhoneNumberUtil__IsAlphaNumber_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil__ConvertAlphaCharactersInNumber_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil__ConvertAlphaCharactersInNumberphonenumberutil";;
# 710 "phonenumberutil.ml"
let _PhoneNumberUtil__ConvertAlphaCharactersInNumber_f = (Dl.call1 so_symbol__PhoneNumberUtil__ConvertAlphaCharactersInNumber_f :  c_obj list -> c_obj list );;
# 710 "phonenumberutil.ml"

let _PhoneNumberUtil__ConvertAlphaCharactersInNumber arg = match _PhoneNumberUtil__ConvertAlphaCharactersInNumber_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil__NormalizeDigitsOnly_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil__NormalizeDigitsOnlyphonenumberutil";;
# 716 "phonenumberutil.ml"
let _PhoneNumberUtil__NormalizeDigitsOnly_f = (Dl.call1 so_symbol__PhoneNumberUtil__NormalizeDigitsOnly_f :  c_obj list -> c_obj list );;
# 716 "phonenumberutil.ml"

let _PhoneNumberUtil__NormalizeDigitsOnly arg = match _PhoneNumberUtil__NormalizeDigitsOnly_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_GetNationalSignificantNumber_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_GetNationalSignificantNumberphonenumberutil";;
# 722 "phonenumberutil.ml"
let _PhoneNumberUtil_GetNationalSignificantNumber_f = (Dl.call1 so_symbol__PhoneNumberUtil_GetNationalSignificantNumber_f :  c_obj list -> c_obj list );;
# 722 "phonenumberutil.ml"

let _PhoneNumberUtil_GetNationalSignificantNumber arg = match _PhoneNumberUtil_GetNationalSignificantNumber_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_Format_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_Formatphonenumberutil";;
# 728 "phonenumberutil.ml"
let _PhoneNumberUtil_Format_f = (Dl.call1 so_symbol__PhoneNumberUtil_Format_f :  c_obj list -> c_obj list );;
# 728 "phonenumberutil.ml"

let _PhoneNumberUtil_Format arg = match _PhoneNumberUtil_Format_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_FormatNationalNumberWithCarrierCode_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_FormatNationalNumberWithCarrierCodephonenumberutil";;
# 734 "phonenumberutil.ml"
let _PhoneNumberUtil_FormatNationalNumberWithCarrierCode_f = (Dl.call1 so_symbol__PhoneNumberUtil_FormatNationalNumberWithCarrierCode_f :  c_obj list -> c_obj list );;
# 734 "phonenumberutil.ml"

let _PhoneNumberUtil_FormatNationalNumberWithCarrierCode arg = match _PhoneNumberUtil_FormatNationalNumberWithCarrierCode_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_FormatNationalNumberWithPreferredCarrierCode_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_FormatNationalNumberWithPreferredCarrierCodephonenumberutil";;
# 740 "phonenumberutil.ml"
let _PhoneNumberUtil_FormatNationalNumberWithPreferredCarrierCode_f = (Dl.call1 so_symbol__PhoneNumberUtil_FormatNationalNumberWithPreferredCarrierCode_f :  c_obj list -> c_obj list );;
# 740 "phonenumberutil.ml"

let _PhoneNumberUtil_FormatNationalNumberWithPreferredCarrierCode arg = match _PhoneNumberUtil_FormatNationalNumberWithPreferredCarrierCode_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_FormatNumberForMobileDialing_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_FormatNumberForMobileDialingphonenumberutil";;
# 746 "phonenumberutil.ml"
let _PhoneNumberUtil_FormatNumberForMobileDialing_f = (Dl.call1 so_symbol__PhoneNumberUtil_FormatNumberForMobileDialing_f :  c_obj list -> c_obj list );;
# 746 "phonenumberutil.ml"

let _PhoneNumberUtil_FormatNumberForMobileDialing arg = match _PhoneNumberUtil_FormatNumberForMobileDialing_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_FormatOutOfCountryCallingNumber_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_FormatOutOfCountryCallingNumberphonenumberutil";;
# 752 "phonenumberutil.ml"
let _PhoneNumberUtil_FormatOutOfCountryCallingNumber_f = (Dl.call1 so_symbol__PhoneNumberUtil_FormatOutOfCountryCallingNumber_f :  c_obj list -> c_obj list );;
# 752 "phonenumberutil.ml"

let _PhoneNumberUtil_FormatOutOfCountryCallingNumber arg = match _PhoneNumberUtil_FormatOutOfCountryCallingNumber_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_FormatInOriginalFormat_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_FormatInOriginalFormatphonenumberutil";;
# 758 "phonenumberutil.ml"
let _PhoneNumberUtil_FormatInOriginalFormat_f = (Dl.call1 so_symbol__PhoneNumberUtil_FormatInOriginalFormat_f :  c_obj list -> c_obj list );;
# 758 "phonenumberutil.ml"

let _PhoneNumberUtil_FormatInOriginalFormat arg = match _PhoneNumberUtil_FormatInOriginalFormat_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_FormatOutOfCountryKeepingAlphaChars_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_FormatOutOfCountryKeepingAlphaCharsphonenumberutil";;
# 764 "phonenumberutil.ml"
let _PhoneNumberUtil_FormatOutOfCountryKeepingAlphaChars_f = (Dl.call1 so_symbol__PhoneNumberUtil_FormatOutOfCountryKeepingAlphaChars_f :  c_obj list -> c_obj list );;
# 764 "phonenumberutil.ml"

let _PhoneNumberUtil_FormatOutOfCountryKeepingAlphaChars arg = match _PhoneNumberUtil_FormatOutOfCountryKeepingAlphaChars_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil__IsValidNumberForRegion_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil__IsValidNumberForRegionphonenumberutil";;
# 770 "phonenumberutil.ml"
let _PhoneNumberUtil__IsValidNumberForRegion_f = (Dl.call1 so_symbol__PhoneNumberUtil__IsValidNumberForRegion_f :  c_obj list -> c_obj list );;
# 770 "phonenumberutil.ml"

let _PhoneNumberUtil__IsValidNumberForRegion arg = match _PhoneNumberUtil__IsValidNumberForRegion_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_GetRegionCodeForNumber_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_GetRegionCodeForNumberphonenumberutil";;
# 776 "phonenumberutil.ml"
let _PhoneNumberUtil_GetRegionCodeForNumber_f = (Dl.call1 so_symbol__PhoneNumberUtil_GetRegionCodeForNumber_f :  c_obj list -> c_obj list );;
# 776 "phonenumberutil.ml"

let _PhoneNumberUtil_GetRegionCodeForNumber arg = match _PhoneNumberUtil_GetRegionCodeForNumber_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil__GetCountryCodeForRegion_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil__GetCountryCodeForRegionphonenumberutil";;
# 782 "phonenumberutil.ml"
let _PhoneNumberUtil__GetCountryCodeForRegion_f = (Dl.call1 so_symbol__PhoneNumberUtil__GetCountryCodeForRegion_f :  c_obj list -> c_obj list );;
# 782 "phonenumberutil.ml"

let _PhoneNumberUtil__GetCountryCodeForRegion arg = match _PhoneNumberUtil__GetCountryCodeForRegion_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_GetRegionCodeForCountryCode_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_GetRegionCodeForCountryCodephonenumberutil";;
# 788 "phonenumberutil.ml"
let _PhoneNumberUtil_GetRegionCodeForCountryCode_f = (Dl.call1 so_symbol__PhoneNumberUtil_GetRegionCodeForCountryCode_f :  c_obj list -> c_obj list );;
# 788 "phonenumberutil.ml"

let _PhoneNumberUtil_GetRegionCodeForCountryCode arg = match _PhoneNumberUtil_GetRegionCodeForCountryCode_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil__IsNANPACountry_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil__IsNANPACountryphonenumberutil";;
# 794 "phonenumberutil.ml"
let _PhoneNumberUtil__IsNANPACountry_f = (Dl.call1 so_symbol__PhoneNumberUtil__IsNANPACountry_f :  c_obj list -> c_obj list );;
# 794 "phonenumberutil.ml"

let _PhoneNumberUtil__IsNANPACountry arg = match _PhoneNumberUtil__IsNANPACountry_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil_GetNddPrefixForRegion_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil_GetNddPrefixForRegionphonenumberutil";;
# 800 "phonenumberutil.ml"
let _PhoneNumberUtil_GetNddPrefixForRegion_f = (Dl.call1 so_symbol__PhoneNumberUtil_GetNddPrefixForRegion_f :  c_obj list -> c_obj list );;
# 800 "phonenumberutil.ml"

let _PhoneNumberUtil_GetNddPrefixForRegion arg = match _PhoneNumberUtil_GetNddPrefixForRegion_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil__IsPossibleNumberForString_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil__IsPossibleNumberForStringphonenumberutil";;
# 806 "phonenumberutil.ml"
let _PhoneNumberUtil__IsPossibleNumberForString_f = (Dl.call1 so_symbol__PhoneNumberUtil__IsPossibleNumberForString_f :  c_obj list -> c_obj list );;
# 806 "phonenumberutil.ml"

let _PhoneNumberUtil__IsPossibleNumberForString arg = match _PhoneNumberUtil__IsPossibleNumberForString_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil__GetExampleNumber_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil__GetExampleNumberphonenumberutil";;
# 812 "phonenumberutil.ml"
let _PhoneNumberUtil__GetExampleNumber_f = (Dl.call1 so_symbol__PhoneNumberUtil__GetExampleNumber_f :  c_obj list -> c_obj list );;
# 812 "phonenumberutil.ml"

let _PhoneNumberUtil__GetExampleNumber arg = match _PhoneNumberUtil__GetExampleNumber_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil__GetExampleNumberForType_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil__GetExampleNumberForTypephonenumberutil";;
# 818 "phonenumberutil.ml"
let _PhoneNumberUtil__GetExampleNumberForType_f = (Dl.call1 so_symbol__PhoneNumberUtil__GetExampleNumberForType_f :  c_obj list -> c_obj list );;
# 818 "phonenumberutil.ml"

let _PhoneNumberUtil__GetExampleNumberForType arg = match _PhoneNumberUtil__GetExampleNumberForType_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil__Parse_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil__Parsephonenumberutil";;
# 824 "phonenumberutil.ml"
let _PhoneNumberUtil__Parse_f = (Dl.call1 so_symbol__PhoneNumberUtil__Parse_f :  c_obj list -> c_obj list );;
# 824 "phonenumberutil.ml"

let _PhoneNumberUtil__Parse arg = match _PhoneNumberUtil__Parse_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil__ParseAndKeepRawInput_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil__ParseAndKeepRawInputphonenumberutil";;
# 830 "phonenumberutil.ml"
let _PhoneNumberUtil__ParseAndKeepRawInput_f = (Dl.call1 so_symbol__PhoneNumberUtil__ParseAndKeepRawInput_f :  c_obj list -> c_obj list );;
# 830 "phonenumberutil.ml"

let _PhoneNumberUtil__ParseAndKeepRawInput arg = match _PhoneNumberUtil__ParseAndKeepRawInput_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil__IsNumberMatchWithTwoStrings_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil__IsNumberMatchWithTwoStringsphonenumberutil";;
# 836 "phonenumberutil.ml"
let _PhoneNumberUtil__IsNumberMatchWithTwoStrings_f = (Dl.call1 so_symbol__PhoneNumberUtil__IsNumberMatchWithTwoStrings_f :  c_obj list -> c_obj list );;
# 836 "phonenumberutil.ml"

let _PhoneNumberUtil__IsNumberMatchWithTwoStrings arg = match _PhoneNumberUtil__IsNumberMatchWithTwoStrings_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol__PhoneNumberUtil__IsNumberMatchWithOneString_f = Dl.dl_sym so_library "_wrap_PhoneNumberUtil__IsNumberMatchWithOneStringphonenumberutil";;
# 842 "phonenumberutil.ml"
let _PhoneNumberUtil__IsNumberMatchWithOneString_f = (Dl.call1 so_symbol__PhoneNumberUtil__IsNumberMatchWithOneString_f :  c_obj list -> c_obj list );;
# 842 "phonenumberutil.ml"

let _PhoneNumberUtil__IsNumberMatchWithOneString arg = match _PhoneNumberUtil__IsNumberMatchWithOneString_f (fnhelper arg) with
  [] -> C_void
| [x] -> (if false then Gc.finalise 
  (fun x -> ignore ((invoke x) "~" C_void)) x) ; x
| lst -> C_list lst ;;
let so_symbol_f_init = Dl.dl_sym so_library "f_phonenumberutil_init";;
# 848 "phonenumberutil.ml"
let f_init = (Dl.call1 so_symbol_f_init :  unit -> unit );;
# 848 "phonenumberutil.ml"

let _ = f_init ()
let enum_to_int x (v : c_obj) =
   match v with
     C_enum _y ->
     (let y = _y in match (x : c_enum_type) with
       `unknown ->          (match y with
           `Int x -> (Swig.C_int x)
           | _ -> raise (LabelNotFromThisEnum v))
| `PhoneNumber_CountryCodeSource -> (match y with
 | `PhoneNumber_CountryCodeSource_FROM_NUMBER_WITH_PLUS_SIGN -> _PhoneNumber_CountryCodeSource_FROM_NUMBER_WITH_PLUS_SIGN C_void
 | `PhoneNumber_CountryCodeSource_FROM_NUMBER_WITH_IDD -> _PhoneNumber_CountryCodeSource_FROM_NUMBER_WITH_IDD C_void
 | `PhoneNumber_CountryCodeSource_FROM_NUMBER_WITHOUT_PLUS_SIGN -> _PhoneNumber_CountryCodeSource_FROM_NUMBER_WITHOUT_PLUS_SIGN C_void
 | `PhoneNumber_CountryCodeSource_FROM_DEFAULT_COUNTRY -> _PhoneNumber_CountryCodeSource_FROM_DEFAULT_COUNTRY C_void
| `Int x -> Swig.C_int x
| _ -> raise (LabelNotFromThisEnum v))
| `PhoneNumberFormat -> (match y with
 | `E164 -> _E164 C_void
 | `INTERNATIONAL -> _INTERNATIONAL C_void
 | `NATIONAL -> _NATIONAL C_void
 | `RFC3966 -> _RFC3966 C_void
| `Int x -> Swig.C_int x
| _ -> raise (LabelNotFromThisEnum v))
| `PhoneNumberType -> (match y with
 | `FIXED_LINE -> _FIXED_LINE C_void
 | `MOBILE -> _MOBILE C_void
 | `FIXED_LINE_OR_MOBILE -> _FIXED_LINE_OR_MOBILE C_void
 | `TOLL_FREE -> _TOLL_FREE C_void
 | `PREMIUM_RATE -> _PREMIUM_RATE C_void
 | `SHARED_COST -> _SHARED_COST C_void
 | `VOIP -> _VOIP C_void
 | `PERSONAL_NUMBER -> _PERSONAL_NUMBER C_void
 | `PAGER -> _PAGER C_void
 | `UAN -> _UAN C_void
 | `VOICEMAIL -> _VOICEMAIL C_void
 | `UNKNOWN -> _UNKNOWN C_void
| `Int x -> Swig.C_int x
| _ -> raise (LabelNotFromThisEnum v))
| `MatchType -> (match y with
 | `INVALID_NUMBER -> _INVALID_NUMBER C_void
 | `NO_MATCH -> _NO_MATCH C_void
 | `SHORT_NSN_MATCH -> _SHORT_NSN_MATCH C_void
 | `NSN_MATCH -> _NSN_MATCH C_void
 | `EXACT_MATCH -> _EXACT_MATCH C_void
| `Int x -> Swig.C_int x
| _ -> raise (LabelNotFromThisEnum v))
| `ErrorType -> (match y with
 | `NO_PARSING_ERROR -> _NO_PARSING_ERROR C_void
 | `INVALID_COUNTRY_CODE_ERROR -> _INVALID_COUNTRY_CODE_ERROR C_void
 | `NOT_A_NUMBER -> _NOT_A_NUMBER C_void
 | `TOO_SHORT_AFTER_IDD -> _TOO_SHORT_AFTER_IDD C_void
 | `TOO_SHORT_NSN -> _TOO_SHORT_NSN C_void
 | `TOO_LONG_NSN -> _TOO_LONG_NSN C_void
| `Int x -> Swig.C_int x
| _ -> raise (LabelNotFromThisEnum v))
| `ValidationResult -> (match y with
 | `IS_POSSIBLE -> _IS_POSSIBLE C_void
 | `INVALID_COUNTRY_CODE -> _INVALID_COUNTRY_CODE C_void
 | `TOO_SHORT -> _TOO_SHORT C_void
 | `TOO_LONG -> _TOO_LONG C_void
| `Int x -> Swig.C_int x
| _ -> raise (LabelNotFromThisEnum v))
) | _ -> (C_int (get_int v))
let _ = Callback.register "phonenumberutil_enum_to_int" enum_to_int
let int_to_enum x y =
    match (x : c_enum_type) with
      `unknown -> C_enum (`Int y)
| `PhoneNumber_CountryCodeSource -> C_enum (
 if y = (get_int (_PhoneNumber_CountryCodeSource_FROM_NUMBER_WITH_PLUS_SIGN C_void)) then `PhoneNumber_CountryCodeSource_FROM_NUMBER_WITH_PLUS_SIGN else
 if y = (get_int (_PhoneNumber_CountryCodeSource_FROM_NUMBER_WITH_IDD C_void)) then `PhoneNumber_CountryCodeSource_FROM_NUMBER_WITH_IDD else
 if y = (get_int (_PhoneNumber_CountryCodeSource_FROM_NUMBER_WITHOUT_PLUS_SIGN C_void)) then `PhoneNumber_CountryCodeSource_FROM_NUMBER_WITHOUT_PLUS_SIGN else
 if y = (get_int (_PhoneNumber_CountryCodeSource_FROM_DEFAULT_COUNTRY C_void)) then `PhoneNumber_CountryCodeSource_FROM_DEFAULT_COUNTRY else
`Int y)
| `PhoneNumberFormat -> C_enum (
 if y = (get_int (_E164 C_void)) then `E164 else
 if y = (get_int (_INTERNATIONAL C_void)) then `INTERNATIONAL else
 if y = (get_int (_NATIONAL C_void)) then `NATIONAL else
 if y = (get_int (_RFC3966 C_void)) then `RFC3966 else
`Int y)
| `PhoneNumberType -> C_enum (
 if y = (get_int (_FIXED_LINE C_void)) then `FIXED_LINE else
 if y = (get_int (_MOBILE C_void)) then `MOBILE else
 if y = (get_int (_FIXED_LINE_OR_MOBILE C_void)) then `FIXED_LINE_OR_MOBILE else
 if y = (get_int (_TOLL_FREE C_void)) then `TOLL_FREE else
 if y = (get_int (_PREMIUM_RATE C_void)) then `PREMIUM_RATE else
 if y = (get_int (_SHARED_COST C_void)) then `SHARED_COST else
 if y = (get_int (_VOIP C_void)) then `VOIP else
 if y = (get_int (_PERSONAL_NUMBER C_void)) then `PERSONAL_NUMBER else
 if y = (get_int (_PAGER C_void)) then `PAGER else
 if y = (get_int (_UAN C_void)) then `UAN else
 if y = (get_int (_VOICEMAIL C_void)) then `VOICEMAIL else
 if y = (get_int (_UNKNOWN C_void)) then `UNKNOWN else
`Int y)
| `MatchType -> C_enum (
 if y = (get_int (_INVALID_NUMBER C_void)) then `INVALID_NUMBER else
 if y = (get_int (_NO_MATCH C_void)) then `NO_MATCH else
 if y = (get_int (_SHORT_NSN_MATCH C_void)) then `SHORT_NSN_MATCH else
 if y = (get_int (_NSN_MATCH C_void)) then `NSN_MATCH else
 if y = (get_int (_EXACT_MATCH C_void)) then `EXACT_MATCH else
`Int y)
| `ErrorType -> C_enum (
 if y = (get_int (_NO_PARSING_ERROR C_void)) then `NO_PARSING_ERROR else
 if y = (get_int (_INVALID_COUNTRY_CODE_ERROR C_void)) then `INVALID_COUNTRY_CODE_ERROR else
 if y = (get_int (_NOT_A_NUMBER C_void)) then `NOT_A_NUMBER else
 if y = (get_int (_TOO_SHORT_AFTER_IDD C_void)) then `TOO_SHORT_AFTER_IDD else
 if y = (get_int (_TOO_SHORT_NSN C_void)) then `TOO_SHORT_NSN else
 if y = (get_int (_TOO_LONG_NSN C_void)) then `TOO_LONG_NSN else
`Int y)
| `ValidationResult -> C_enum (
 if y = (get_int (_IS_POSSIBLE C_void)) then `IS_POSSIBLE else
 if y = (get_int (_INVALID_COUNTRY_CODE C_void)) then `INVALID_COUNTRY_CODE else
 if y = (get_int (_TOO_SHORT C_void)) then `TOO_SHORT else
 if y = (get_int (_TOO_LONG C_void)) then `TOO_LONG else
`Int y)
let _ = Callback.register "phonenumberutil_int_to_enum" int_to_enum

let create_i18n_xxphonenumbers_xxPhoneNumber_from_ptr raw_ptr =
  C_obj 
begin
  let h = Hashtbl.create 20 in
    List.iter (fun (nm,fn) -> Hashtbl.replace h nm fn) 
	[ "nop", (fun args -> C_void) ;
	      "~", _delete_PhoneNumber ;
    "=", _PhoneNumber_operator_xx_xx_equals ;
    "Swap", _PhoneNumber_Swap ;
    "New", _PhoneNumber_New ;
    "CheckTypeAndMergeFrom", _PhoneNumber_CheckTypeAndMergeFrom ;
    "CopyFrom", _PhoneNumber_CopyFrom ;
    "MergeFrom", _PhoneNumber_MergeFrom ;
    "Clear", _PhoneNumber_Clear ;
    "IsInitialized", _PhoneNumber_IsInitialized ;
    "ByteSize", _PhoneNumber_ByteSize ;
    "MergePartialFromCodedStream", _PhoneNumber_MergePartialFromCodedStream ;
    "SerializeWithCachedSizes", _PhoneNumber_SerializeWithCachedSizes ;
    "GetCachedSize", _PhoneNumber_GetCachedSize ;
    "GetTypeName", _PhoneNumber_GetTypeName ;
    "has_country_code", _PhoneNumber_has_country_code ;
    "clear_country_code", _PhoneNumber_clear_country_code ;
    "country_code", _PhoneNumber_country_code ;
    "set_country_code", _PhoneNumber_set_country_code ;
    "has_national_number", _PhoneNumber_has_national_number ;
    "clear_national_number", _PhoneNumber_clear_national_number ;
    "national_number", _PhoneNumber_national_number ;
    "set_national_number", _PhoneNumber_set_national_number ;
    "has_extension", _PhoneNumber_has_extension ;
    "clear_extension", _PhoneNumber_clear_extension ;
    "extension", _PhoneNumber_extension ;
    "set_extension", _PhoneNumber_set_extension ;
    "set_extension", _PhoneNumber_set_extension ;
    "set_extension", _PhoneNumber_set_extension ;
    "mutable_extension", _PhoneNumber_mutable_extension ;
    "release_extension", _PhoneNumber_release_extension ;
    "has_italian_leading_zero", _PhoneNumber_has_italian_leading_zero ;
    "clear_italian_leading_zero", _PhoneNumber_clear_italian_leading_zero ;
    "italian_leading_zero", _PhoneNumber_italian_leading_zero ;
    "set_italian_leading_zero", _PhoneNumber_set_italian_leading_zero ;
    "has_raw_input", _PhoneNumber_has_raw_input ;
    "clear_raw_input", _PhoneNumber_clear_raw_input ;
    "raw_input", _PhoneNumber_raw_input ;
    "set_raw_input", _PhoneNumber_set_raw_input ;
    "set_raw_input", _PhoneNumber_set_raw_input ;
    "set_raw_input", _PhoneNumber_set_raw_input ;
    "mutable_raw_input", _PhoneNumber_mutable_raw_input ;
    "release_raw_input", _PhoneNumber_release_raw_input ;
    "has_country_code_source", _PhoneNumber_has_country_code_source ;
    "clear_country_code_source", _PhoneNumber_clear_country_code_source ;
    "country_code_source", _PhoneNumber_country_code_source ;
    "set_country_code_source", _PhoneNumber_set_country_code_source ;
    "has_preferred_domestic_carrier_code", _PhoneNumber_has_preferred_domestic_carrier_code ;
    "clear_preferred_domestic_carrier_code", _PhoneNumber_clear_preferred_domestic_carrier_code ;
    "preferred_domestic_carrier_code", _PhoneNumber_preferred_domestic_carrier_code ;
    "set_preferred_domestic_carrier_code", _PhoneNumber_set_preferred_domestic_carrier_code ;
    "set_preferred_domestic_carrier_code", _PhoneNumber_set_preferred_domestic_carrier_code ;
    "set_preferred_domestic_carrier_code", _PhoneNumber_set_preferred_domestic_carrier_code ;
    "mutable_preferred_domestic_carrier_code", _PhoneNumber_mutable_preferred_domestic_carrier_code ;
    "release_preferred_domestic_carrier_code", _PhoneNumber_release_preferred_domestic_carrier_code ;
 
	 "&", (fun args -> raw_ptr) ;
       ":parents",
       (fun args ->
          C_list
	  (let out = ref [] in 
	    Hashtbl.iter (fun x y -> out := (x,y) :: !out) h ;
          (List.map	
	     (fun (x,y) ->
		C_string (String.sub x 2 ((String.length x) - 2)))
	     (List.filter
		(fun (x,y) ->
		   ((String.length x) > 2)
		   && x.[0] == ':' && x.[1] == ':') !out)))) ;
       ":classof", (fun args -> C_string "i18n::phonenumbers::PhoneNumber") ;
       ":methods", (fun args -> 
	  C_list (let out = ref [] in 
	    Hashtbl.iter (fun x y -> out := (C_string x) :: !out) h ; !out))
	] ; 
	let rec invoke_inner raw_ptr mth arg = 
	begin
	  try
	    let application = Hashtbl.find h mth in
	      application
		(match arg with 
		     C_list l -> (C_list (raw_ptr :: l)) 
		   | C_void -> (C_list [ raw_ptr ])
		   | v -> (C_list [ raw_ptr ; v ]))
	  with Not_found -> 
		(* Try parent classes *)
		begin
		  let parent_classes = [
		    
		  ] in
		  let rec try_parent plist raw_ptr =
		    match plist with
			p :: tl -> 
			  begin
			    try
			      (invoke (p raw_ptr)) mth arg
			    with (BadMethodName (p,m,s)) -> 
			      try_parent tl raw_ptr
			  end
		      | [] ->
			  raise (BadMethodName (raw_ptr,mth,"i18n::phonenumbers::PhoneNumber"))
		  in try_parent parent_classes raw_ptr
		end
	end in
	  (fun mth arg -> invoke_inner raw_ptr mth arg)
end

let _ = Callback.register 
          "create_i18n::phonenumbers::PhoneNumber_from_ptr"
          create_i18n_xxphonenumbers_xxPhoneNumber_from_ptr



let create_i18n_xxphonenumbers_xxSingleton_xx_ldbrace_xx_lpareni18n_xxphonenumbers_xxPhoneNumberUtil_xx_rparen_xx_rdbrace_from_ptr raw_ptr =
  C_obj 
begin
  let h = Hashtbl.create 20 in
    List.iter (fun (nm,fn) -> Hashtbl.replace h nm fn) 
	[ "nop", (fun args -> C_void) ;
	      "~", _delete_PhoneNumberUtilSingleton ;
 
	 "&", (fun args -> raw_ptr) ;
       ":parents",
       (fun args ->
          C_list
	  (let out = ref [] in 
	    Hashtbl.iter (fun x y -> out := (x,y) :: !out) h ;
          (List.map	
	     (fun (x,y) ->
		C_string (String.sub x 2 ((String.length x) - 2)))
	     (List.filter
		(fun (x,y) ->
		   ((String.length x) > 2)
		   && x.[0] == ':' && x.[1] == ':') !out)))) ;
       ":classof", (fun args -> C_string "i18n::phonenumbers::Singleton<(i18n::phonenumbers::PhoneNumberUtil)>") ;
       ":methods", (fun args -> 
	  C_list (let out = ref [] in 
	    Hashtbl.iter (fun x y -> out := (C_string x) :: !out) h ; !out))
	] ; 
	let rec invoke_inner raw_ptr mth arg = 
	begin
	  try
	    let application = Hashtbl.find h mth in
	      application
		(match arg with 
		     C_list l -> (C_list (raw_ptr :: l)) 
		   | C_void -> (C_list [ raw_ptr ])
		   | v -> (C_list [ raw_ptr ; v ]))
	  with Not_found -> 
		(* Try parent classes *)
		begin
		  let parent_classes = [
		    
		  ] in
		  let rec try_parent plist raw_ptr =
		    match plist with
			p :: tl -> 
			  begin
			    try
			      (invoke (p raw_ptr)) mth arg
			    with (BadMethodName (p,m,s)) -> 
			      try_parent tl raw_ptr
			  end
		      | [] ->
			  raise (BadMethodName (raw_ptr,mth,"i18n::phonenumbers::Singleton<(i18n::phonenumbers::PhoneNumberUtil)>"))
		  in try_parent parent_classes raw_ptr
		end
	end in
	  (fun mth arg -> invoke_inner raw_ptr mth arg)
end

let _ = Callback.register 
          "create_i18n::phonenumbers::Singleton< i18n::phonenumbers::PhoneNumberUtil >_from_ptr"
          create_i18n_xxphonenumbers_xxSingleton_xx_ldbrace_xx_lpareni18n_xxphonenumbers_xxPhoneNumberUtil_xx_rparen_xx_rdbrace_from_ptr



let create_i18n_xxphonenumbers_xxPhoneNumberUtil_from_ptr raw_ptr =
  C_obj 
begin
  let h = Hashtbl.create 20 in
    List.iter (fun (nm,fn) -> Hashtbl.replace h nm fn) 
	[ "nop", (fun args -> C_void) ;
	      "~", _delete_PhoneNumberUtil ;
    "IsAlphaNumber", _PhoneNumberUtil_IsAlphaNumber ;
    "ConvertAlphaCharactersInNumber", _PhoneNumberUtil_ConvertAlphaCharactersInNumber ;
    "NormalizeDigitsOnly", _PhoneNumberUtil_NormalizeDigitsOnly ;
    "GetNationalSignificantNumber", _PhoneNumberUtil_GetNationalSignificantNumber ;
    "GetLengthOfGeographicalAreaCode", _PhoneNumberUtil_GetLengthOfGeographicalAreaCode ;
    "GetLengthOfNationalDestinationCode", _PhoneNumberUtil_GetLengthOfNationalDestinationCode ;
    "Format", _PhoneNumberUtil_Format ;
    "FormatNationalNumberWithCarrierCode", _PhoneNumberUtil_FormatNationalNumberWithCarrierCode ;
    "FormatNationalNumberWithPreferredCarrierCode", _PhoneNumberUtil_FormatNationalNumberWithPreferredCarrierCode ;
    "FormatNumberForMobileDialing", _PhoneNumberUtil_FormatNumberForMobileDialing ;
    "FormatOutOfCountryCallingNumber", _PhoneNumberUtil_FormatOutOfCountryCallingNumber ;
    "FormatInOriginalFormat", _PhoneNumberUtil_FormatInOriginalFormat ;
    "FormatOutOfCountryKeepingAlphaChars", _PhoneNumberUtil_FormatOutOfCountryKeepingAlphaChars ;
    "TruncateTooLongNumber", _PhoneNumberUtil_TruncateTooLongNumber ;
    "GetNumberType", _PhoneNumberUtil_GetNumberType ;
    "IsValidNumber", _PhoneNumberUtil_IsValidNumber ;
    "IsValidNumberForRegion", _PhoneNumberUtil_IsValidNumberForRegion ;
    "GetRegionCodeForNumber", _PhoneNumberUtil_GetRegionCodeForNumber ;
    "GetCountryCodeForRegion", _PhoneNumberUtil_GetCountryCodeForRegion ;
    "GetRegionCodeForCountryCode", _PhoneNumberUtil_GetRegionCodeForCountryCode ;
    "IsNANPACountry", _PhoneNumberUtil_IsNANPACountry ;
    "GetNddPrefixForRegion", _PhoneNumberUtil_GetNddPrefixForRegion ;
    "IsPossibleNumberWithReason", _PhoneNumberUtil_IsPossibleNumberWithReason ;
    "IsPossibleNumber", _PhoneNumberUtil_IsPossibleNumber ;
    "IsPossibleNumberForString", _PhoneNumberUtil_IsPossibleNumberForString ;
    "GetExampleNumber", _PhoneNumberUtil_GetExampleNumber ;
    "GetExampleNumberForType", _PhoneNumberUtil_GetExampleNumberForType ;
    "GetExampleNumberForNonGeoEntity", _PhoneNumberUtil_GetExampleNumberForNonGeoEntity ;
    "Parse", _PhoneNumberUtil_Parse ;
    "ParseAndKeepRawInput", _PhoneNumberUtil_ParseAndKeepRawInput ;
    "IsNumberMatch", _PhoneNumberUtil_IsNumberMatch ;
    "IsNumberMatchWithTwoStrings", _PhoneNumberUtil_IsNumberMatchWithTwoStrings ;
    "IsNumberMatchWithOneString", _PhoneNumberUtil_IsNumberMatchWithOneString ;
    "_IsAlphaNumber", _PhoneNumberUtil__IsAlphaNumber ;
    "_ConvertAlphaCharactersInNumber", _PhoneNumberUtil__ConvertAlphaCharactersInNumber ;
    "_NormalizeDigitsOnly", _PhoneNumberUtil__NormalizeDigitsOnly ;
    "GetNationalSignificantNumber", _PhoneNumberUtil_GetNationalSignificantNumber ;
    "Format", _PhoneNumberUtil_Format ;
    "FormatNationalNumberWithCarrierCode", _PhoneNumberUtil_FormatNationalNumberWithCarrierCode ;
    "FormatNationalNumberWithPreferredCarrierCode", _PhoneNumberUtil_FormatNationalNumberWithPreferredCarrierCode ;
    "FormatNumberForMobileDialing", _PhoneNumberUtil_FormatNumberForMobileDialing ;
    "FormatOutOfCountryCallingNumber", _PhoneNumberUtil_FormatOutOfCountryCallingNumber ;
    "FormatInOriginalFormat", _PhoneNumberUtil_FormatInOriginalFormat ;
    "FormatOutOfCountryKeepingAlphaChars", _PhoneNumberUtil_FormatOutOfCountryKeepingAlphaChars ;
    "_IsValidNumberForRegion", _PhoneNumberUtil__IsValidNumberForRegion ;
    "GetRegionCodeForNumber", _PhoneNumberUtil_GetRegionCodeForNumber ;
    "_GetCountryCodeForRegion", _PhoneNumberUtil__GetCountryCodeForRegion ;
    "GetRegionCodeForCountryCode", _PhoneNumberUtil_GetRegionCodeForCountryCode ;
    "_IsNANPACountry", _PhoneNumberUtil__IsNANPACountry ;
    "GetNddPrefixForRegion", _PhoneNumberUtil_GetNddPrefixForRegion ;
    "_IsPossibleNumberForString", _PhoneNumberUtil__IsPossibleNumberForString ;
    "_GetExampleNumber", _PhoneNumberUtil__GetExampleNumber ;
    "_GetExampleNumberForType", _PhoneNumberUtil__GetExampleNumberForType ;
    "_Parse", _PhoneNumberUtil__Parse ;
    "_ParseAndKeepRawInput", _PhoneNumberUtil__ParseAndKeepRawInput ;
    "_IsNumberMatchWithTwoStrings", _PhoneNumberUtil__IsNumberMatchWithTwoStrings ;
    "_IsNumberMatchWithOneString", _PhoneNumberUtil__IsNumberMatchWithOneString ;
   "::i18n::phonenumbers::Singleton<(i18n::phonenumbers::PhoneNumberUtil)>", (fun args -> (create_class "i18n::phonenumbers::Singleton<(i18n::phonenumbers::PhoneNumberUtil)>") args) ;
 
	 "&", (fun args -> raw_ptr) ;
       ":parents",
       (fun args ->
          C_list
	  (let out = ref [] in 
	    Hashtbl.iter (fun x y -> out := (x,y) :: !out) h ;
          (List.map	
	     (fun (x,y) ->
		C_string (String.sub x 2 ((String.length x) - 2)))
	     (List.filter
		(fun (x,y) ->
		   ((String.length x) > 2)
		   && x.[0] == ':' && x.[1] == ':') !out)))) ;
       ":classof", (fun args -> C_string "i18n::phonenumbers::PhoneNumberUtil") ;
       ":methods", (fun args -> 
	  C_list (let out = ref [] in 
	    Hashtbl.iter (fun x y -> out := (C_string x) :: !out) h ; !out))
	] ; 
	let rec invoke_inner raw_ptr mth arg = 
	begin
	  try
	    let application = Hashtbl.find h mth in
	      application
		(match arg with 
		     C_list l -> (C_list (raw_ptr :: l)) 
		   | C_void -> (C_list [ raw_ptr ])
		   | v -> (C_list [ raw_ptr ; v ]))
	  with Not_found -> 
		(* Try parent classes *)
		begin
		  let parent_classes = [
		    (create_class "i18n::phonenumbers::Singleton<(i18n::phonenumbers::PhoneNumberUtil)>") ;

		  ] in
		  let rec try_parent plist raw_ptr =
		    match plist with
			p :: tl -> 
			  begin
			    try
			      (invoke (p raw_ptr)) mth arg
			    with (BadMethodName (p,m,s)) -> 
			      try_parent tl raw_ptr
			  end
		      | [] ->
			  raise (BadMethodName (raw_ptr,mth,"i18n::phonenumbers::PhoneNumberUtil"))
		  in try_parent parent_classes raw_ptr
		end
	end in
	  (fun mth arg -> invoke_inner raw_ptr mth arg)
end

let _ = Callback.register 
          "create_i18n::phonenumbers::PhoneNumberUtil_from_ptr"
          create_i18n_xxphonenumbers_xxPhoneNumberUtil_from_ptr


let new_PhoneNumber clst = _new_PhoneNumber clst
let new_PhoneNumber clst = _new_PhoneNumber clst
let new_PhoneNumberUtilSingleton clst = _new_PhoneNumberUtilSingleton clst

  let rec swig_val t v = 
    match v with
        C_enum e -> enum_to_int t v
      | C_list l -> Swig.C_list (List.map (swig_val t) l)
      | C_array a -> Swig.C_array (Array.map (swig_val t) a)
      | _ -> Obj.magic v

