#!/bin/bash

##############################################################################
# sesame
# -----------
# The simple password manager.
#
# :author: greyspectrum
# :date: 16 September 2016
# :version: 0.1.0
##############################################################################

cd

echo "Please enter a name for this account (example: "Github"): "
read account_name
echo "Account name set to: $account_name" 
echo "ACCOUNT NAME: $account_name" > password-vault/passwords.txt

echo "Please enter a url for this account: "
read url
echo "ACCOUNT NAME: $url" > password-vault/passwords.txt

passphrase 10 > ~/password-vault/passwords.txt
