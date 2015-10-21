#!/bin/bash -eu
for template
do
  version=${template#template-}
  version=${version%.json}
  for virt in virtualbox-iso qemu
  do
    ATLAS_USERNAME=wzurowski ATLAS_NAME="${version}" PATH=~/packer:$PATH packer build  -only="${virt}" "${template}"
  done
done
