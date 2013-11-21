app-umbraco Cookbook
====================
Installs Umbraco CMS on Windows

and makes your favorite wheat-free breakfast sandwhich.

Requirements
------------
needs a windoze

Attributes
---------

['mysql']['version'] = "5.6.14.0"
['mysql']['checksum'] = "7ca554bcda5d859e71b97f2ed13ec42b"

['mysql']['installer_file'] = \
  "mysql-installer-community-#{node['mysql']['version']}.msi"

['mysql']['base_url'] =\
  "http://dev.mysql.com/get/Downloads/MySQLInstaller/"

['mysql']['url'] = \
  "#{node['mysql']['base_url']}/#{node['mysql']['installer_file']}"

['mysql']['basedir'] = \
  "#{ENV['SYSTEMDRIVE']}\\Program Files (x86)\\MySQL\\"

  ['mysql']['installer_cli'] = %Q[
    c:\\Program\ Files\ (x86)\\mySql\\MySQL\ Installer\\MySQLInstallerConsole.exe
    --config=mysql-server-5.6-winx64:passwd=root
    --product=mysql-server-5.6-winx64
    --catalog=mysql-5.6-winx64
    --action=install
    --type=full
    --nowait ]

Usage
-----
#### app-umbraco::default

Just include `app-umbraco` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[app-umbraco]"
  ]
}
```

Contributing
------------

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Azul
