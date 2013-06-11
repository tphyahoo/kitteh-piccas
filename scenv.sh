HD=`pwd`/.gnupg
export GNUPGHOME=$HD

function sc_pack {
  dir=$1
  recipient=$2
  tar -czf - $dir | gpg -e -r $recipient > $dir.tar.gz.gpg
  if [[ $? -ne 0 ]]; then echo "error encrypting"; exit; fi
  rm -rf $dir
}

function sc_unpack {
  dir=$1
  gpg -d $dir.tar.gz.gpg | tar -xzvf - 
}