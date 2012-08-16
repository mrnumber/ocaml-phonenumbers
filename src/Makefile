TARGET     = phonenumbers
CC         = gcc
CXX        = g++
CFLAGS     = 
PREFIX     = /usr/local
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
INCLUDES   = -I. -I$(PREFIX)/include
LIBS       = -L. -L$(PREFIX)/lib
MLFILE     = phonenumberutil.ml
PROGFILE   = phonenumbers.ml
INTERFACE  = phonenumberutil.i
INTERFACEDIR  =
INTERFACEPATH = $(INTERFACEDIR)$(INTERFACE)
SWIGOPT    = -cpperraswarn
SWIG       = swig

IWRAP      = $(INTERFACE:.i=_wrap.i)
ISRCS      = $(IWRAP:.i=.c)
ICXXSRCS   = $(IWRAP:.i=.cxx)
IOBJS      = $(IWRAP:.i=.o)

##################################################################
#####                          Ocaml                         #####
##################################################################

OCC=ocamlc
OCAMLOPT=ocamlopt
OCAMLMKLIB=ocamlmklib
NOLINK ?= false
OCAMLPP= -pp "camlp4o ./swigp4.cmo"
OCAMLP4WHERE=`$(COMPILETOOL) camlp4 -where`
OCAMLCORE=\
	rm -rf swig.mli swig.ml swigp4.ml && \
	$(SWIG) -ocaml -co swig.mli 2>/dev/null && \
	$(SWIG) -ocaml -co swig.ml 2>/dev/null && \
	$(SWIG) -ocaml -co swigp4.ml 2>/dev/null && \
	$(OCC) -g -c swig.mli swig.ml && \
	$(OCC) -I $(OCAMLP4WHERE) -pp "camlp4o pa_extend.cmo q_MLast.cmo" \
		-c swigp4.ml

all:
	$(OCAMLCORE)
	$(SWIG) -ocaml -c++ $(SWIGOPT) $(INTERFACEPATH)
	cp $(ICXXSRCS) $(ICXXSRCS:%.cxx=%.c)
	$(OCC) -cc '$(CXX) -Wno-write-strings' -g -c -ccopt -g -ccopt -fPIC \
		-ccopt "-xc++ $(INCLUDES)" \
		$(ICXXSRCS:%.cxx=%.c) $(SRCS) $(CXXSRCS)
	$(OCC) -g -c $(INTERFACE:%.i=%.mli) $(INTERFACE:%.i=%.ml)
	test -z "$(PROGFILE:%.ml=%.mli)" || test -f "$(PROGFILE:%.ml=%.mli)" && \
		$(OCC) $(OCAMLPP) -c $(PROGFILE:%.ml=%.mli)
	test -z "$(PROGFILE)" || test -f "$(PROGFILE)" && \
		$(OCC) $(OCAMLPP) -c $(PROGFILE)
	$(NOLINK) || $(OCAMLMKLIB) -ccopt -g -cclib -g -o $(TARGET) $(LIBS) \
		-lstdc++ -lprotobuf -licuuc -licui18n -lboost_date_time-mt -lboost_thread-mt \
		swig.cmo $(INTERFACE:%.i=%.cmo) $(PROGFILE:%.ml=%.cmo) $(INTERFACE:%.i=%_wrap.o) $(OBJS)

opt:
	$(OCAMLOPT) -g -c swig.mli swig.ml
	$(OCAMLOPT) -g -c $(INTERFACE:%.i=%.mli) $(INTERFACE:%.i=%.ml)
	test -z "$(PROGFILE:%.ml=%.mli)" || test -f "$(PROGFILE:%.ml=%.mli)" && \
		$(OCAMLOPT) $(OCAMLPP) -c $(PROGFILE:%.ml=%.mli)
	test -z "$(PROGFILE)" || test -f "$(PROGFILE)" && \
		$(OCAMLOPT) $(OCAMLPP) -c $(PROGFILE)
	$(NOLINK) || $(OCAMLMKLIB) -ccopt -g -cclib -g -o $(TARGET) $(LIBS) \
		-lstdc++ -lprotobuf -licuuc -licui18n -lboost_date_time-mt -lboost_thread-mt \
		swig.cmx $(INTERFACE:%.i=%.cmx) $(PROGFILE:%.ml=%.cmx)
	$(OCAMLOPT) -shared -linkall -o $(TARGET).cmxs $(TARGET).cmxa

clean:
	rm -f *_wrap* *~ .~* *.cmo *.cmi *.cma *.cmx *.cmxa *.cmxs $(MLFILE) $(MLFILE)i swig.mli swig.cmi swig.ml swig.cmo swigp4.ml swigp4.cmo
	rm -f core 
	rm -f *.a *.o *.so
