#!/bin/bash

##############################################################################
# install-sesame
# --------------
# The simple password manager.
#
# :author: greyspectrum
# :date: 16 September 2016
# :version: 0.9.1
##############################################################################

chmod +x passphrase sesame.sh

cp passphrase /usr/local/bin/passphrase

cp sesame.sh /usr/local/bin/sesame

cd

mkdir password-vault

touch password-vault/passwords.txt

cd password-vault

echo "Please enter a master passphrase to encrypt the password database: "
read master_passphrase
echo "$master_passphrase" > difile1.txt

echo "Please enter the master passphrase again: "
read master_passphrase
echo "$master_passphrase" > difile2.txt

if diff -q difile1.txt difile2.txt


echo "MASTER PASSPHRASE: $master_passphrase" > passwords.txt

cd password-vault

gpg --output passwords.gpg --symmetric --cipher-algo AES256 passwords.txt
echo "$master_passphrase"

rm passwords.txt

echo "INSTALLATION COMPLETE."

cd
