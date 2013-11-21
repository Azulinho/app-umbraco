
override['mysql']['version'] = "5.6.14.0"
override['mysql']['checksum'] = "7ca554bcda5d859e71b97f2ed13ec42b"

override['mysql']['installer_file'] = \
  "mysql-installer-community-#{node['mysql']['version']}.msi"

override['mysql']['base_url'] =\
  "http://dev.mysql.com/get/Downloads/MySQLInstaller/"

override['mysql']['url'] = \
  "#{node['mysql']['base_url']}/#{node['mysql']['installer_file']}"

override['mysql']['basedir'] = \
  "#{ENV['SYSTEMDRIVE']}\\Program Files (x86)\\MySQL\\"

  override['mysql']['installer_cli'] = %Q[
    c:\\Program\ Files\ (x86)\\mySql\\MySQL\ Installer\\MySQLInstallerConsole.exe
    --config=mysql-server-5.6-winx64:passwd=root
    --product=mysql-server-5.6-winx64
    --catalog=mysql-5.6-winx64
    --action=install
    --type=full
    --nowait ]

default['iis']['accept_eula'] = true

default['windows']['allow_pending_reboots'] = true
default['windows']['reboot_timeout'] = 60
