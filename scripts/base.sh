# Base install

sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

yum -y install epel-release bzip2 gcc make gcc-c++ kernel-devel-`uname -r` zlib-devel openssl-devel readline-devel sqlite-devel perl wget dkms nfs-utils vim

# Make ssh faster by not waiting on DNS
echo "UseDNS no" >> /etc/ssh/sshd_config
