Ocaml version of the libphonenumber project.

This is a port of the C++ version.

This project uses some third-party code:
  - src/phonenumbers/utf/ sources come from lib9 which is also used in Go.


Building the library on GNU/Linux
---------------------------------
Requirements:
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

  - Google Test
    http://code.google.com/p/googletest/

    You can install it very easily on a Debian-based GNU/Linux distribution:
    $ sudo apt-get install libgtest-dev

  - RE2
    http://code.google.com/p/re2/

    You can install it very easily on Ubuntu Maverick and later:
    $ sudo apt-get install libre2-dev

    Otherwise if you use a Debian-based distribution you can fetch the Ubuntu
    package which should work:
    http://packages.ubuntu.com/maverick/libre2-dev

    If you want to install it manually:
    You need Mercurial to checkout its source code:
    $ sudo apt-get install mercurial

    Then checkout, build and install it:
    $ hg clone https://re2.googlecode.com/hg re2
    $ cd re2
    $ make test
    $ make install
    $ make testinstall

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
