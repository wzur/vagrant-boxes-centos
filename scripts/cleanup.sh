yum -y erase gtk2 libX11 hicolor-icon-theme avahi freetype bitstream-vera-fonts epel-release
yum -y clean all
rm -rf /etc/yum.repos.d/{puppetlabs,epel}.repo
rm -rf VBoxGuestAdditions_*.iso

# Remove traces of mac address from network configuration
ls -l /etc/sysconfig/network-scripts
sed -i /HWADDR/d /etc/sysconfig/network-scripts/ifcfg-*
ls -l /etc/udev/rules.d/
rm -rf /etc/udev/rules.d/70-persistent-net.rules
