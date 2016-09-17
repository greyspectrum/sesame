#!/bin/bash

##############################################################################
# install-sesame
# -----------
# The simple password manager.
#
# :author: greyspectrum
# :date: 16 September 2016
# :version: 0.1.0
##############################################################################

chmod +x passphrase sesame.sh

cp passphrase /usr/local/bin/passphrase

cp sesame.sh /usr/local/bin/sesame

cd

mkdir password-vault

touch password-vault/passwords.txt

echo "Please enter a master passphrase to encrypt the password database: "
read master_passphrase
echo "MASTER PASSPHRASE: $master_passphrase" > passwords.txt

cd password-vault

gpg --output passwords.gpg --symmetric --cipher-algo AES256 passwords.txt
echo "$master_passphrase"

rm passwords.txt

echo "INSTALLATION COMPLETE."

cd
