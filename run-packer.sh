#!/bin/bash -eu
VIRT_ENV="virtualbox-iso qemu"
if [ "x${1}" = "x-qemu" ]
then
  shift
  VIRT_ENV=qemu
fi
if [ "x${1}" = "x-virtualbox" -o "x${1}" = "x-vbox" ]
then
  shift
  VIRT_ENV=virtualbox-iso
fi

for template
do
  version=${template#template-}
  version=${version%.json}
  for virt in ${VIRT_ENV}
  do
    ATLAS_NAME="${version}" packer build -only="${virt}" "${template}"
  done
done
