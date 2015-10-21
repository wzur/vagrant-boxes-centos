#!/bin/bash

# an ugly hack - if virtio is detected don't do anything
if [ `lsmod | grep virtio| wc -l` -gt 0 ]
then
  exit 0
fi

# Zero out the free space to save space in the final image:
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY

# Sync to ensure that the delete completes before this moves on.
sync
sync
sync

# additionally show the disk usage
df -h
