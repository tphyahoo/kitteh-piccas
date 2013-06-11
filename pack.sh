#!/bin/bash
. scenv.sh
export GNUPGHOME=./.gnupg
sc_pack kitteh.mpg Kitteh

# darcs record -mkeys keys.tar.gz.gpg 
#time darcs push

