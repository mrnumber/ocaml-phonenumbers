TOP        = ..
SWIG       = swig
SWIGOPT    = -cpperraswarn
SRCS       = base/string_piece.c \
             phonenumbers/asyoutypeformatter.c \
             phonenumbers/default_logger.c \
             phonenumbers/logger.c \
             phonenumbers/metadata.c \
             phonenumbers/phonemetadata.pb.c \
             phonenumbers/phonenumber.c \
             phonenumbers/phonenumber.pb.c \
             phonenumbers/phonenumberutil.c \
             phonenumbers/regexp_adapter_icu.c \
             phonenumbers/regexp_cache.c \
             phonenumbers/stringutil.c \
             phonenumbers/unicodestring.c \
             phonenumbers/utf/rune.c \
             phonenumbers/utf/unicodetext.c \
             phonenumbers/utf/unilib.c
TARGET     = phonenumbers
INTERFACE  = phonenumberutil.i
MLFILE     = phonenumberutil.ml
PROGFILE   = phonenumbers.ml
OBJS       = string_piece.o \
             asyoutypeformatter.o \
             default_logger.o \
             logger.o \
             metadata.o \
             phonemetadata.pb.o \
             phonenumber.o \
             phonenumber.pb.o \
             phonenumberutil.o \
             regexp_adapter_icu.o \
             regexp_cache.o \
             stringutil.o \
             unicodestring.o \
             rune.o \
             unicodetext.o \
             unilib.o
INCLUDES   = -I. -I$(SDROOT)/include
LIBS       = -L. -L$(SDROOT)/lib

all::
	$(MAKE) -f $(TOP)/OCamlMakefile SRCS='$(SRCS)' SWIG='$(SWIG)' \
	SWIGOPT='$(SWIGOPT)' TARGET='$(TARGET)' INTERFACE='$(INTERFACE)' \
	MLFILE='$(MLFILE)' PROGFILE='$(PROGFILE)' OBJS='$(OBJS)' \
	INCLUDES='$(INCLUDES)' LIBS='$(LIBS)' \
	ocaml_lib

opt:: all
	$(MAKE) -f $(TOP)/OCamlMakefile SRCS='$(SRCS)' SWIG='$(SWIG)' \
	SWIGOPT='$(SWIGOPT)' TARGET='$(TARGET)' INTERFACE='$(INTERFACE)' \
	MLFILE='$(MLFILE)' PROGFILE='$(PROGFILE)' OBJS='$(OBJS)' \
	INCLUDES='$(INCLUDES)' LIBS='$(LIBS)' OCC=ocamlopt \
	ocaml_lib_opt

install:
	ocamlfind install phonenumbers *.mli *.cmi *.cma *.cmxa *.a *.so META

uninstall:
	ocamlfind remove phonenumbers

clean::
	$(MAKE) -f $(TOP)/OCamlMakefile MLFILE='$(MLFILE)' ocaml_clean
