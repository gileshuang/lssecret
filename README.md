lssecrets lists all secret items in a secret service using libsecret,
including their labels, secret values, keys, and values. For example, it can
be used to list all the passwords and keys stored in a GNOME Keyring.

# Instalation

Dependencies:

* libsecret
* pkg-config

To build, run `make`. To install run `DESTDIR=/usr make install`.

# Usage

lssecret [flags ...]

* -h, --help

  Print this message and exit.

* -s, --secrets

  Show secret values. Without this flag, only item labels, keys, and values
  will be shown.
