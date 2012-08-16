OCaml Phonenumbers library
==========================

OCaml bindings for the libphonenumber library, originally from:

  http://code.google.com/p/libphonenumber/

Original code is Copyright (C) 2009-2011 Google Inc.

### Requirements

  - Protocol Buffers

    http://code.google.com/p/protobuf/

    Version 2.4 or more recent is required.

    You can install it very easily on a Debian-based GNU/Linux distribution:
    $ sudo apt-get install libprotobuf-dev

    Note: if your GNU/Linux distribution doesn't provide the needed package,
          please download and install it manually:
    $ tar xjf protobuf-2.4.tar.bz2
    $ cd protobuf-2.4
    $ ./configure && make && sudo make install

  - ICU
    Version 4.4 or more recent is required.
    It can be built from sources. You need to download the source tarball at
    this location:

    http://site.icu-project.org/download

    Then you can extract, build and install it this way:
    $ tar xzf icu4c-4_4_2-src.tgz
    $ cd icu/source
    $ ./configure && make && sudo make install

    If you have a Debian-based distribution providing an up-to-date version of
    ICU, you can install it using apt-get:
    $ sudo apt-get install libicu-dev

  - Boost
    Version 1.40 or more recent is required.

    You can install it very easily on a Debian-based GNU/Linux distribution:
    $ sudo apt-get install libboost1.40-dev libboost-thread1.40-dev

    Note: Boost Thread is the only library needed at link time.

  - Swig
    Version 2.0.2 or more recent is required.
    It can be built from sources. You need to download the source tarball at
    this location:

    http://www.swig.org/download.html

### Configuration and Installation

To build the library, run

    $ ocaml setup.ml -configure
    $ ocaml setup.ml -build

To install, run (as root, if your user doesn't have enough privileges)

    $ ocaml setup.ml -install

To uninstall anything that was previously installed, execute

    $ ocaml setup.ml -uninstall

### Examples

Let's say you have a string representing a phone number from Switzerland. This is how you parse/normalize it into a PhoneNumber object:

```ocaml
# open Phonenumbers;;
# let swissNumberStr = "044 668 18 00";;
val swissNumberStr : string = "044 668 18 00"
# let swissNumberProto = PhoneNumber.default_instance();;
val swissNumberProto : Phonenumbers.PhoneNumber.t = <abstr>
# parse swissNumberStr "CH" swissNumberProto;;
- : Phonenumbers.error_type = NO_PARSING_ERROR
```

At this point, swissNumberProto contains:

```ocaml
# PhoneNumber.country_code swissNumberProto;;
- : int = 41
# PhoneNumber.national_number swissNumberProto;;
- : int64 = 446681800L
```

Now let us validate whether the number is valid:

```ocaml
# let isValid = is_valid_number swissNumberProto;;
val isValid : bool = true
```

There are a few formats supported by the formatting method, as illustrated below:

```ocaml
# format swissNumberProto INTERNATIONAL;;
- : string = "+41 44 668 18 00"
# format swissNumberProto NATIONAL;;
- : string = "044 668 18 00"
# format swissNumberProto E164;;
- : string = "+41446681800"
```

You could also choose to format the number in the way it is dialed from another country:

```ocaml
# format_out_of_country_calling_number swissNumberProto "US";;
- : string = "011 41 44 668 18 00"
```
